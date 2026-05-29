.class Lcom/smartisanos/launcher/theme/Q;
.super Landroid/os/Handler;
.source "ThemeItemActivity.java"


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Q;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Q;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    .line 5
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_f

    .line 6
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/theme/v;->status:I

    const/16 v1, 0x67

    if-ne p1, v1, :cond_f

    const-wide/16 v1, -0x1

    .line 8
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p1

    iget-object p1, p1, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/smartisanos/launcher/data/a/b;->U(Ljava/lang/String;)Lcom/smartisanos/launcher/data/a/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-wide v1, p1, Lcom/smartisanos/launcher/data/a/a;->ns:J

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-lez p1, :cond_3

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/smartisanos/launcher/e/s;->a(Landroid/content/Context;J)Lcom/smartisanos/launcher/e/p;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/smartisanos/launcher/e/p;->og()I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v3

    .line 13
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "MSG_NETWORK_STATUS_CHANGED set to DOWNLOAD_PAUSED"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    const/16 v0, 0x68

    .line 14
    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;II)V

    .line 15
    sget p0, Lcom/smartisanos/launcher/ob;->can_not_download_theme_by_net:I

    invoke-static {p0, v3}, Lcom/smartisanos/launcher/Bb;->showToast(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 16
    :cond_4
    :try_start_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    .line 17
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/launcher/theme/v;

    .line 18
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 19
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->k(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/U;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/smartisanos/launcher/theme/U;->b(Lcom/smartisanos/launcher/theme/v;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 21
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-nez p0, :cond_6

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "MainView.getInstance() is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->Tf()V

    .line 24
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    return-void

    .line 25
    :cond_6
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 27
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget p1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    if-ne p0, p1, :cond_7

    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 29
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_1

    .line 32
    :cond_7
    sget p0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget p1, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/ua;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p1, v4, :cond_8

    .line 34
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p1

    .line 36
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 38
    invoke-static {p1, v4}, Lcom/smartisanos/launcher/ua;->f(II)[I

    move-result-object p1

    .line 39
    aget v4, p1, v3

    if-gez v4, :cond_9

    aput v3, p1, v3

    .line 40
    :cond_9
    aget v4, p1, v2

    if-gez v4, :cond_a

    aput v3, p1, v2

    .line 41
    :cond_a
    aget v1, p1, v1

    const/4 v4, 0x3

    .line 42
    aget v4, p1, v4

    .line 43
    aget v5, p1, v3

    add-int/2addr v5, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_b

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    aget v5, p1, v3

    sub-int/2addr v1, v5

    .line 45
    :cond_b
    aget v5, p1, v2

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_c

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    aget v5, p1, v2

    sub-int/2addr v4, v5

    :cond_c
    move v12, v4

    mul-int v4, v1, v12

    .line 47
    new-array v13, v4, [I

    const/4 v6, 0x0

    .line 48
    aget v8, p1, v3

    aget v9, p1, v2

    move-object v4, p0

    move-object v5, v13

    move v7, v1

    move v10, v1

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v8, v1

    move v9, v12

    invoke-static/range {v5 .. v10}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_d

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_d

    .line 52
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/theme/t;->f(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_d
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    .line 54
    new-instance p0, Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10200000

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.category.HOME"

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.smartisanos.launcher.LauncherAlias"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 58
    :cond_e
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :catch_1
    :cond_f
    :goto_2
    return-void
.end method
