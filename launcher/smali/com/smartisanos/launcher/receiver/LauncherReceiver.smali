.class public Lcom/smartisanos/launcher/receiver/LauncherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LauncherReceiver.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field private pa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->pa:Z

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/receiver/LauncherReceiver;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->pa:Z

    return p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/receiver/LauncherReceiver;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->pa:Z

    return p1
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private mu()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/receiver/l;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/receiver/l;-><init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/smartisanos/launcher/data/Constants;->showDialogForThemeUninstalled:Z

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/receiver/o;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/receiver/o;-><init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static r()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ja;->ib()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "handleUnFinishIntent begin !"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_2
    new-instance v1, Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {v1}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;-><init>()V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/ja;->gb()V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher onReceive intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Za()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cache intent : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    invoke-static {p2}, Lcom/smartisanos/launcher/ja;->b(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    if-nez v2, :cond_a

    .line 7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto/16 :goto_2

    :cond_4
    const-string p0, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 13
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/a/L;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_5
    const-string p0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 15
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/a/L;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_6
    const-string p0, "com.smartisanos.launcher.update_icon"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 17
    invoke-static {p2}, Lcom/smartisanos/launcher/Aa;->c(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_7
    const-string p0, "com.smartisanos.launcher.SORT_ICON"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string p0, "com.smartisanos.COLOR_THEME_CHANGED"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 20
    invoke-static {p2}, Lcom/smartisanos/launcher/a/r;->d(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_9
    const-string p0, "com.smartisanos.weather.data.update"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 22
    invoke-static {p2}, Lcom/smartisanos/launcher/view/activeicon/H;->g(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 23
    :cond_a
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_19

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto/16 :goto_2

    .line 26
    :cond_b
    sget-boolean v6, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    const-string v7, "removePackage from launcher receiver. pkg = "

    const-string v8, "android.intent.extra.REPLACING"

    const/4 v9, 0x0

    if-eqz v6, :cond_f

    .line 27
    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v1, :cond_e

    .line 29
    new-instance p2, Lcom/smartisanos/launcher/receiver/k;

    invoke-direct {p2, p0, p1, v2}, Lcom/smartisanos/launcher/receiver/k;-><init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 p0, 0x3e8

    invoke-static {p2, p0, p1}, Lcom/smartisanos/launcher/data/A;->a(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 30
    :cond_c
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    if-nez v1, :cond_e

    .line 31
    sget-object p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 32
    invoke-static {v2}, Lcom/smartisanos/launcher/Aa;->D(Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 34
    sget-object p0, Lcom/smartisanos/launcher/data/T;->WEATHER:Lcom/smartisanos/launcher/data/S;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 35
    invoke-static {p2}, Lcom/smartisanos/launcher/view/activeicon/H;->g(Landroid/content/Intent;)V

    :cond_e
    :goto_1
    return-void

    :cond_f
    const-string v6, "com.smartisanos.launcher.theme"

    .line 36
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 37
    invoke-static {p2, v2}, Lcom/smartisanos/launcher/theme/X;->a(Landroid/content/Intent;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 39
    invoke-static {v2}, Lcom/smartisanos/launcher/theme/X;->ga(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 40
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-nez v0, :cond_10

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/O;->j(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 42
    iget-object p2, p2, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "smartisan_theme_black"

    invoke-static {p1, p2}, Lcom/smartisanos/launcher/data/O;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->mu()V

    :cond_10
    return-void

    .line 45
    :cond_11
    # Normal package broadcasts are coordinated by the compatibility manager.
    # It waits for the original model and PackageManager activity visibility
    # before calling Aa.c, preventing this receiver and its dynamic peer from
    # racing each other on modern ROMs.
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :managed_package_event

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :managed_package_event

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :managed_package_event

    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :original_package_event

    :managed_package_event
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/install/SmartisanInstallManager;->onPackageEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :original_package_event
    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 46
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    if-eqz v4, :cond_13

    if-eqz p0, :cond_12

    .line 47
    invoke-static {v2}, Lcom/smartisanos/launcher/Aa;->G(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    const/16 p0, 0x100

    .line 48
    invoke-static {v2, p0, v6}, Lcom/smartisanos/launcher/e/s;->b(Ljava/lang/String;II)V

    .line 49
    invoke-static {p1, v2}, Lcom/smartisanos/launcher/Aa;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 50
    :cond_13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 51
    invoke-static {v2}, Lcom/smartisanos/launcher/Aa;->G(Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :cond_14
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    if-nez p0, :cond_19

    .line 53
    sget-object p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Lcom/smartisanos/launcher/Aa;->D(Ljava/lang/String;)V

    goto :goto_2

    .line 55
    :cond_15
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 56
    sget-object p0, Lcom/smartisanos/launcher/data/T;->WEATHER:Lcom/smartisanos/launcher/data/S;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 57
    invoke-static {p2}, Lcom/smartisanos/launcher/view/activeicon/H;->g(Landroid/content/Intent;)V

    goto :goto_2

    :cond_16
    const-string p0, "android.intent.extra.UID"

    .line 58
    invoke-virtual {p2, p0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_17

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 60
    :cond_17
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_18

    sget-object p1, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->log:Lcom/smartisanos/launcher/va;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleOnNewMessage PACKAGE_DATA_CLEARED ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_18
    const/4 p1, 0x0

    .line 61
    invoke-static {v2, p1, p0, v9}, Lcom/smartisanos/launcher/Aa;->a(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_19
    :goto_2
    return-void
.end method
