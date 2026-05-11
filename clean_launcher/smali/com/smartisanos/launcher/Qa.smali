.class public Lcom/smartisanos/launcher/Qa;
.super Ljava/lang/Object;
.source "Launchpad.java"


# static fields
.field public static final Bi:Landroid/net/Uri;

.field private static Ci:Landroid/view/IWindow;

.field private static Di:Landroid/net/Uri;

.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final mBinder:Lcom/android/internal/sidebar/ILauncher$Stub;

.field private static mInsets:Lcom/smartisanos/launcher/Pa;

.field private static final mRemote:Lsmartisanos/os/RemoteCallback;

.field private static mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/smartisanos/launcher/Qa;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "content://com.smartisanos.desktop.provider.call"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/Qa;->Bi:Landroid/net/Uri;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/Pa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/Pa;-><init>(Lcom/smartisanos/launcher/Fa;)V

    sput-object v0, Lcom/smartisanos/launcher/Qa;->mInsets:Lcom/smartisanos/launcher/Pa;

    .line 4
    sput-object v1, Lcom/smartisanos/launcher/Qa;->Ci:Landroid/view/IWindow;

    .line 5
    sput-object v1, Lcom/smartisanos/launcher/Qa;->mWindowSession:Landroid/view/IWindowSession;

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/Ha;

    invoke-direct {v0}, Lcom/smartisanos/launcher/Ha;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/Qa;->mBinder:Lcom/android/internal/sidebar/ILauncher$Stub;

    .line 7
    new-instance v0, Lsmartisanos/os/RemoteCallback;

    new-instance v1, Lcom/smartisanos/launcher/Ma;

    invoke-direct {v1}, Lcom/smartisanos/launcher/Ma;-><init>()V

    invoke-direct {v0, v1}, Lsmartisanos/os/RemoteCallback;-><init>(Lsmartisanos/os/RemoteCallback$OnResultListener;)V

    sput-object v0, Lcom/smartisanos/launcher/Qa;->mRemote:Lsmartisanos/os/RemoteCallback;

    const-string v0, "content://com.smartisanos.launcher.provider.extra"

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/Qa;->Di:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Cc()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    const-string v2, "confirmPasswordSuccess"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "from_launcher"

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->callbackLaunchpad(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static Dc()Lcom/android/internal/sidebar/ILauncher$Stub;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/Qa;->mBinder:Lcom/android/internal/sidebar/ILauncher$Stub;

    return-object v0
.end method

.method public static Ec()Lsmartisanos/os/RemoteCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/Qa;->mRemote:Lsmartisanos/os/RemoteCallback;

    return-object v0
.end method

.method public static Fc()Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->Va()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6
    sget-object v2, Lcom/smartisanos/launcher/Qa;->Di:Landroid/net/Uri;

    const-string v3, "METHOD_LAUNCHER_IS_GL_READY"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-string v2, "GL_READY"

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static Gc()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/Qa;->Di:Landroid/net/Uri;

    const-string v2, "METHOD_LAUNCHPAD_CHANGE_DATA"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static Hc()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/Qa;->Di:Landroid/net/Uri;

    const-string v2, "METHOD_LAUNCHER_PASSWORD_SUCCESS"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;FF)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-static {p0, p1, p2, p3, v0}, Lcom/smartisanos/launcher/Qa;->a(Landroid/content/Context;Ljava/util/ArrayList;FFZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;FFZ)V
    .locals 7

    .line 10
    new-instance v6, Lcom/smartisanos/launcher/Ia;

    move-object v0, v6

    move v1, p4

    move v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/launcher/Ia;-><init>(ZFFLjava/util/ArrayList;Landroid/content/Context;)V

    invoke-static {v6}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "intent"

    .line 37
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "requestCode"

    .line 38
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "options"

    .line 39
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    sget-object p0, Lcom/smartisanos/launcher/Qa;->Bi:Landroid/net/Uri;

    const-string p1, "METHOD_REQUEST_START_ACTIVITY"

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/Qa;->n(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Region;)V
    .locals 6

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/Qa;->mInsets:Lcom/smartisanos/launcher/Pa;

    iget-object v0, v0, Lcom/smartisanos/launcher/Pa;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/Qa;->mInsets:Lcom/smartisanos/launcher/Pa;

    iget-object v0, v0, Lcom/smartisanos/launcher/Pa;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 5
    sget-object p1, Lcom/smartisanos/launcher/Qa;->mWindowSession:Landroid/view/IWindowSession;

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p1

    sput-object p1, Lcom/smartisanos/launcher/Qa;->mWindowSession:Landroid/view/IWindowSession;

    .line 7
    :cond_2
    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/Qa;->mWindowSession:Landroid/view/IWindowSession;

    invoke-static {p0}, Lcom/smartisanos/launcher/Qa;->f(Landroid/view/View;)Landroid/view/IWindow;

    move-result-object v1

    sget-object p0, Lcom/smartisanos/launcher/Qa;->mInsets:Lcom/smartisanos/launcher/Pa;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    sget-object p0, Lcom/smartisanos/launcher/Qa;->mInsets:Lcom/smartisanos/launcher/Pa;

    iget-object v3, p0, Lcom/smartisanos/launcher/Pa;->contentInsets:Landroid/graphics/Rect;

    sget-object p0, Lcom/smartisanos/launcher/Qa;->mInsets:Lcom/smartisanos/launcher/Pa;

    iget-object v4, p0, Lcom/smartisanos/launcher/Pa;->visibleInsets:Landroid/graphics/Rect;

    sget-object p0, Lcom/smartisanos/launcher/Qa;->mInsets:Lcom/smartisanos/launcher/Pa;

    iget-object v5, p0, Lcom/smartisanos/launcher/Pa;->touchableRegion:Landroid/graphics/Region;

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/smartisanos/launcher/data/z;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/data/z;->Lq:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    if-eqz v0, :cond_2

    .line 43
    sget-object v1, Lcom/smartisanos/launcher/Ea;->mi:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPackageTaskToLaunchpad return by action name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/z;->Lq:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/data/z;->Yj:Ljava/util/List;

    if-nez v0, :cond_3

    return-void

    .line 46
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 47
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    if-nez v3, :cond_4

    goto :goto_2

    .line 49
    :cond_4
    iget-wide v3, v3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    long-to-int v3, v3

    aput v3, v1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key"

    const-string v3, "package_task"

    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/smartisanos/launcher/data/z;->packageName:Ljava/lang/String;

    const-string v3, "pkg"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget v2, p0, Lcom/smartisanos/launcher/data/z;->Mk:I

    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "id_arr"

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 55
    iget-boolean v2, p0, Lcom/smartisanos/launcher/data/z;->Mq:Z

    const-string v3, "handle"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    iget-object v2, p0, Lcom/smartisanos/launcher/data/z;->Lq:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    const-string v3, "action_name"

    .line 57
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_7

    .line 59
    sget-object v3, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPackageTaskToLaunchpad package_task  pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smartisanos/launcher/data/z;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/smartisanos/launcher/data/z;->Mk:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/z;->fa(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " id_arr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handle = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/data/z;->Mq:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " actionName = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {v3, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 62
    :cond_7
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->callbackLaunchpad(Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->aw()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 13
    invoke-static {v2, v3, v3, v3}, Lcom/smartisanos/launcher/data/a/l;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 14
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_3

    .line 15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v5, :cond_2

    .line 16
    iget-wide v6, v5, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v6, "_id"

    .line 18
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz v6, :cond_7

    const-string v7, "pageIndex"

    .line 20
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 21
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 22
    iget v8, v6, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    if-eq v7, v8, :cond_5

    move v2, v5

    :cond_5
    const-string v7, "cellIndex"

    .line 23
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 24
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 25
    iget v8, v6, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-eq v7, v8, :cond_6

    move v2, v5

    :cond_6
    const-string v7, "folderIndex"

    .line 26
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 27
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 28
    iget v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    if-eq v3, v6, :cond_7

    move v2, v5

    :cond_7
    if-eqz v2, :cond_4

    :cond_8
    if-eqz v2, :cond_9

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object p0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v5}, Lcom/smartisanos/launcher/qa;->c(IZ)V

    .line 30
    new-instance p0, Lcom/smartisanos/launcher/Ka;

    invoke-direct {p0}, Lcom/smartisanos/launcher/Ka;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    .line 31
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 32
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyDataChanged spend time ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method static synthetic access$100()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private static aw()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/qa;->I(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Ljava/util/List;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->aw()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/a/q;->Hf()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/Q;

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget v3, v2, Lcom/smartisanos/launcher/data/Q;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v4, "pageIndex"

    .line 7
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    .line 8
    :cond_6
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/data/Q;

    if-nez v4, :cond_8

    :cond_7
    :goto_2
    move v0, v3

    goto :goto_3

    :cond_8
    const-string v5, "pageTitle"

    .line 10
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 11
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 13
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_a
    const-string v5, "status"

    .line 14
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 16
    iget v4, v4, Lcom/smartisanos/launcher/data/Q;->status:I

    if-eq v2, v4, :cond_4

    goto :goto_2

    :cond_b
    :goto_3
    if-eqz v0, :cond_c

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/smartisanos/launcher/qa;->c(IZ)V

    .line 18
    new-instance p0, Lcom/smartisanos/launcher/La;

    invoke-direct {p0}, Lcom/smartisanos/launcher/La;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/launcher/wb;->post(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public static c(ZI)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "handleLongPress return by FLAG2_LAUNCHPAD_ALIVE"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p1, v0}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static f(Landroid/view/View;)Landroid/view/IWindow;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/Qa;->Ci:Landroid/view/IWindow;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewRootImpl;

    .line 3
    :try_start_0
    const-class v0, Landroid/view/ViewRootImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "mWindow"

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/IWindow;

    sput-object p0, Lcom/smartisanos/launcher/Qa;->Ci:Landroid/view/IWindow;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    sget-object p0, Lcom/smartisanos/launcher/Qa;->Ci:Landroid/view/IWindow;

    return-object p0
.end method

.method private static h(ZI)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/Fa;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/Fa;-><init>(ZI)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static n(Landroid/os/Bundle;)V
    .locals 11

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "key"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleRemoteCallback key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    const-string v1, "onActivityResult"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "data"

    if-eqz v1, :cond_3

    const-string v0, "requestCode"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "resultCode"

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Lcom/smartisanos/launcher/J;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "new_message"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "pkg"

    if-eqz v1, :cond_4

    .line 9
    sget-object v0, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "handleRemoteCallback new_message !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmp"

    .line 11
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    .line 12
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "count"

    .line 13
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 14
    invoke-static {v0, v1, v2, p0}, Lcom/smartisanos/launcher/Aa;->a(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "package_task"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "action"

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "id_arr"

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "handle"

    .line 19
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v1, "action_name"

    .line 20
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v0, :cond_5

    return-void

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_id"

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " in ("

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    :goto_0
    array-length v1, v0

    if-ge v4, v1, :cond_7

    .line 25
    aget v1, v0, v4

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 26
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-eq v4, v1, :cond_6

    const-string v1, ", "

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    const-string v1, ")"

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 30
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_8

    .line 31
    sget-object p0, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoteCallback pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " packageAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/smartisanos/launcher/data/z;->fa(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " arr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isHandle = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " where = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 34
    :cond_8
    new-instance p0, Lcom/smartisanos/launcher/Na;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/smartisanos/launcher/Na;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/smartisanos/launcher/data/A;->e(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_9
    const-string v1, "weather"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 36
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 v0, 0x0

    .line 37
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/a/ra;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_a
    const-string v1, "confirmPasswordSuccess"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "from_launcher"

    .line 39
    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 40
    new-instance v0, Lcom/smartisanos/launcher/Oa;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/Oa;-><init>(I)V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    if-nez p0, :cond_c

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->Hc()V

    .line 43
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/ua;->j(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Lg()V

    goto :goto_1

    :cond_b
    const-string v1, "pin_shortcut"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "intent"

    .line 46
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/d/e;->a(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_c
    :goto_1
    return-void
.end method

.method public static r(Z)Z
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/launcher/ob;->launcher_not_available_for_change_order:I

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/Qa;->c(ZI)Z

    move-result p0

    return p0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/Qa;->mBinder:Lcom/android/internal/sidebar/ILauncher$Stub;

    invoke-static {p0}, Lcom/smartisanos/launcher/ua;->a(Lcom/android/internal/sidebar/ILauncher;)V

    return-void
.end method

.method public static s(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->PHYSICAL_SCREEN_SIZE:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aget v0, v0, v3

    if-nez p0, :cond_0

    .line 3
    sget p0, Lcom/smartisanos/launcher/data/Constants;->LAUNCHPAD_DOCK_HEIGHT:I

    sub-int/2addr v0, p0

    .line 4
    :cond_0
    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0, v1, v1, v2, v0}, Landroid/graphics/Region;-><init>(IIII)V

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->Sa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/Qa;->a(Landroid/view/View;Landroid/graphics/Region;)V

    return-void
.end method

.method public static setVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/Qa;->setVisible(ZZ)V

    return-void
.end method

.method public static setVisible(ZZ)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/qa;->I(I)Z

    move-result p1

    if-ne p0, p1, :cond_1

    .line 3
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisible maybe error. show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/16 p1, 0x10

    if-nez p0, :cond_2

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/ub;->R(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Lcom/smartisanos/launcher/a/t;->X(I)V

    .line 6
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->Sa()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 7
    :cond_3
    new-instance v1, Lcom/smartisanos/launcher/Ja;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/Ja;-><init>(Z)V

    invoke-static {v1}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 8
    sget-object v1, Lcom/smartisanos/launcher/Qa;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVisible FLAG_NOT_TOUCHABLE ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, p0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    xor-int/lit8 v1, p0, 0x1

    .line 9
    invoke-static {v1, p1}, Lcom/smartisanos/launcher/Qa;->h(ZI)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/qa;->getInstance()Lcom/smartisanos/launcher/qa;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/smartisanos/launcher/qa;->c(IZ)V

    return-void
.end method
