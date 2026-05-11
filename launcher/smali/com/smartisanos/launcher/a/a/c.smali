.class public Lcom/smartisanos/launcher/a/a/c;
.super Ljava/lang/Object;
.source "FourFingerSlide.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/a/c;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dismissDialog()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/a/a/b;

    invoke-direct {v0}, Lcom/smartisanos/launcher/a/a/b;-><init>()V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static fw()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "fingerSlide return by isActivityReady false"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Za()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "fingerSlide return by ENABLE_RECEIVER false"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "fingerSlide return by MULTI_PAGE_MODE true"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Xf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "fingerSlide return by isRequireChangeThemeAnim true"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v1

    .line 9
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->eg()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    if-nez v0, :cond_4

    .line 10
    sget-object v0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "fingerSlide return by current theme is null"

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v1

    .line 11
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public static y(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/a/c;->fw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "fingerSlide verifyStatus return false"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/a/a/c;->dismissDialog()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Wq()Lcom/smartisanos/launcher/view/b/M;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    sget-object p0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "fingerSlide current page null return false"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/a/a/c;->dismissDialog()V

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "fingerSlide ON_CHANGE_THEME_ANIMATING return false"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/a/a/c;->dismissDialog()V

    return-void

    .line 10
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    sget-object p0, Lcom/smartisanos/launcher/a/a/c;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "fingerSlide. StatusManager.ON_GRID_SWITCH is true"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/a/a/c;->dismissDialog()V

    return-void

    .line 13
    :cond_3
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz v0, :cond_4

    xor-int/lit8 p0, p0, 0x1

    .line 14
    invoke-static {p0}, Lcom/smartisanos/launcher/a/n;->u(Z)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {p0}, Lcom/smartisanos/launcher/a/h;->t(Z)Z

    :goto_0
    return-void
.end method
