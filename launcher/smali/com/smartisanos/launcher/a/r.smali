.class public Lcom/smartisanos/launcher/a/r;
.super Ljava/lang/Object;
.source "ColorThemeChanged.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field public static sj:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/a/r;->sj:Landroid/os/Message;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Cb(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->ensureTransparentThemeRegistered(Landroid/content/Context;)V

    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->gg()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->u(Ljava/util/List;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/theme/v;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const-string v1, "smartisan_theme_trans"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_trans_fallback_done

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/LauncherSettingBridge;->transparentTheme(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/theme/v;

    goto :goto_0

    :cond_trans_fallback_done
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Wf()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    sget-object p0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "isChangeThemeAnimating return !"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->ja(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 8
    sget-object p0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "Store new theme to current failed"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;->Eaa:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/theme/t;->a(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$RequireChangeFrom;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v0, v1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/O;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/ja;->l(Z)V

    .line 13
    new-instance p0, Lcom/smartisanos/launcher/a/o;

    invoke-direct {p0}, Lcom/smartisanos/launcher/a/o;-><init>()V

    invoke-static {p0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    .line 14
    invoke-static {}, Lsmartisanos/api/WindowManagerSmt;->getInstance()Lsmartisanos/api/WindowManagerSmt;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisanos/api/WindowManagerSmt;->resetWindowOneHandedState(Landroid/view/WindowManager;)V

    .line 15
    invoke-static {v1}, Lcom/smartisanos/launcher/a/r;->b(Lcom/smartisanos/launcher/theme/v;)Z

    return-void

    .line 16
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeTheme error, can\'t find theme by id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/smartisanos/launcher/a/r;->sj:Landroid/os/Message;

    .line 3
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_CHANGE_THEME begin ! to theme ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/smartisanos/launcher/a/r;->Cb(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "handleChangeTheme error for themeId is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/v;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/a/r;->p(Lcom/smartisanos/launcher/theme/v;)V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method public static b(Landroid/os/Message;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "MESSAGE_COLOR_THEME_CHANGED begin !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "targetThemeId is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    sput-object v1, Lcom/smartisanos/launcher/a/r;->sj:Landroid/os/Message;

    .line 6
    sget-object v1, Lcom/smartisanos/launcher/a/r;->sj:Landroid/os/Message;

    if-nez v1, :cond_2

    .line 7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x12

    .line 8
    iput v2, v1, Landroid/os/Message;->what:I

    .line 9
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    sput-object v1, Lcom/smartisanos/launcher/a/r;->sj:Landroid/os/Message;

    .line 11
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->Na()Lcom/smartisanos/launcher/view/Qa;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Qa;->dismiss()V

    .line 13
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->ia(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    sget-object p0, Lcom/smartisanos/launcher/a/r;->sj:Landroid/os/Message;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 16
    :cond_4
    invoke-static {p0}, Lcom/smartisanos/launcher/J;->c(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static b(Lcom/smartisanos/launcher/theme/v;)Z
    .locals 3

    if-nez p0, :cond_0

    .line 17
    sget-object p0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "theme is null, so return"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 18
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/J;->H(I)V

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/theme/t;->f(Landroid/graphics/Bitmap;)V

    .line 20
    new-instance v0, Lcom/smartisanos/launcher/a/p;

    const/16 v2, 0x64

    invoke-direct {v0, v2, p0}, Lcom/smartisanos/launcher/a/p;-><init>(ILcom/smartisanos/launcher/theme/v;)V

    const/4 p0, 0x0

    .line 21
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return v1
.end method

.method public static d(Landroid/content/Intent;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const-string v1, "color"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "handleChangeTheme color is -1"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->la(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find theme by color ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    if-nez p0, :cond_3

    .line 6
    sget-object p0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "currentTheme is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 8
    sget-object p0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current theme is same ! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p0

    if-nez p0, :cond_5

    .line 10
    sget-object p0, Lcom/smartisanos/launcher/a/r;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "activity is null !!"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_5
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 12
    iget-object v1, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v2, :cond_6

    .line 16
    invoke-static {p0}, Lcom/smartisanos/launcher/a/r;->q(Lcom/smartisanos/launcher/theme/v;)V

    return-void

    .line 17
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/Sa;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x11

    .line 18
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 20
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static p(Lcom/smartisanos/launcher/theme/v;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/a/q;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/q;-><init>(Lcom/smartisanos/launcher/theme/v;)V

    const-wide/16 v1, 0xa

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/Sa;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static q(Lcom/smartisanos/launcher/theme/v;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10028000

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/v;->mPackage:Ljava/lang/String;

    const-string v3, "extra_theme_package"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const-string v3, "extra_component_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mName:Ljava/lang/String;

    const-string v2, "extra_theme_name"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
