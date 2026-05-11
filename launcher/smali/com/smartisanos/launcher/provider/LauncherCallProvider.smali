.class public Lcom/smartisanos/launcher/provider/LauncherCallProvider;
.super Landroid/content/ContentProvider;
.source "LauncherCallProvider.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final wa:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->wa:Landroid/content/UriMatcher;

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->wa:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.provider.call_method"

    const-string v2, "launcher_call"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->wa:Landroid/content/UriMatcher;

    const-string v2, "launcher_call/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method private j(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "### getDockAppList_await"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v1, Lcom/smartisanos/launcher/provider/m;

    invoke-direct {v1, p0, p1, v0}, Lcom/smartisanos/launcher/provider/m;-><init>(Lcom/smartisanos/launcher/provider/LauncherCallProvider;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1}, Lcom/smartisanos/launcher/data/A;->e(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 5
    :try_start_0
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "### getDockAppList wait!!!!"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v1, 0x3e8

    .line 6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    if-nez p0, :cond_3

    .line 8
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "### wait DBThread timeout: 1000 ms, not return."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 10
    :cond_3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### getDockAppList, finish "

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method private k(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "type"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    move v4, p1

    goto :goto_0

    :cond_0
    move v4, v0

    .line 2
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "### getHiddenAndLockAppList_await"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_1
    new-instance v8, Lcom/smartisanos/launcher/provider/n;

    const/16 v3, 0x65

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/launcher/provider/n;-><init>(Lcom/smartisanos/launcher/provider/LauncherCallProvider;IILandroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V

    const/4 p0, 0x0

    .line 6
    invoke-virtual {v8, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 7
    :try_start_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "### wait!!!!"

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    const-wide/16 v1, 0x3e8

    .line 8
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    if-nez v0, :cond_4

    .line 10
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "### wait gl thread timeout: 1000 ms, not return."

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 11
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    .line 12
    :cond_4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "### getHiddenAndLockAppList, finish "

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    return-object p1
.end method

.method private l(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "pkg"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmp"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareToHomeAnim ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SWIPE_ANIM"

    invoke-virtual {v2, v4, v3}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/animations/b/k;->getInstance()Lcom/smartisanos/launcher/animations/b/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/smartisanos/launcher/animations/b/k;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method private m(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "showSearch By system call"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance p1, Lcom/smartisanos/launcher/provider/l;

    const/16 v0, 0x64

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/provider/l;-><init>(Lcom/smartisanos/launcher/provider/LauncherCallProvider;I)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private ou()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget v1, Lcom/smartisanos/launcher/data/Constants;->screenIndex:I

    invoke-static {v1}, Lcom/smartisanos/launcher/Aa;->K(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 5
    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "data"

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/J;->Vf:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_9

    const-string v0, "weather_data_changed"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p2, p3}, Lcom/smartisanos/launcher/a/ra;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "whether_edit_mode"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const p2, 0x8000

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :cond_2
    const-string v0, "packing_magic_flow_data"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lb/b/a/c;->ma(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "method_system_get_app_list"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->ou()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "method_system_get_hidden_and_lock_app"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-direct {p0, p3}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->k(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "method_system_show_search"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-direct {p0, p3}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_6
    const-string v0, "method_desktop_get_dock_app"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-direct {p0, p3}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_7
    const-string v0, "method_prepare_to_home_anim"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    invoke-direct {p0, p3}, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->l(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "method_start_swipe_anim"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/animations/b/k;->getInstance()Lcom/smartisanos/launcher/animations/b/k;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/smartisanos/launcher/animations/b/k;->d(Landroid/os/Bundle;)V

    return-object v1

    .line 21
    :cond_9
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 22
    :cond_a
    :goto_1
    sget-object p0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error. return by noReady LoadComplete = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p2

    iget-boolean p2, p2, Lcom/smartisanos/launcher/J;->Vf:Z

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    goto :goto_2

    :cond_b
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-object v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object p0, Lcom/smartisanos/launcher/provider/LauncherCallProvider;->wa:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "vnd.android.cursor.item/vnd.smartisan.launcher.call"

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "vnd.android.cursor.dir/vnd.smartisan.launcher.call"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
