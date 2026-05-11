.class public Lcom/smartisanos/launcher/Bb;
.super Ljava/lang/Object;
.source "ToastManager.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method private static L(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    .line 4
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lsmartisanos/api/ToastSmt;->getInstance()Lsmartisanos/api/ToastSmt;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/16 v2, 0x7da

    .line 7
    invoke-virtual {v0, v1, p0, p1, v2}, Lsmartisanos/api/ToastSmt;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    .line 9
    :goto_0
    sget-object p0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic g(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/Bb;->q(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic h(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/Bb;->L(II)V

    return-void
.end method

.method public static h(Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->MAIN:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->b(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/Bb;->q(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/zb;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/zb;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static q(Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    .line 4
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lsmartisanos/api/ToastSmt;->getInstance()Lsmartisanos/api/ToastSmt;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v0, v1, p0, p1, v2}, Lsmartisanos/api/ToastSmt;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    .line 7
    :goto_0
    sget-object p0, Lcom/smartisanos/launcher/Bb;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToast(II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/yb;->getInstance()Lcom/smartisanos/launcher/yb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;->MAIN:Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/yb;->b(Lcom/smartisanos/launcher/ThreadVerify$RUNNING_ENV;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/Bb;->L(II)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/Ab;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/Ab;-><init>(II)V

    invoke-static {v0}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
