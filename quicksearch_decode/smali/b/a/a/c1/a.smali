.class public Lb/a/a/c1/a;
.super Ljava/lang/Object;
.source "AnimationExecutor.java"


# static fields
.field public static a:Ljava/lang/String; = "a"

.field public static b:Landroid/view/WindowManager; = null

.field public static volatile c:Lcom/android/quicksearchbox/animation/view/ContainerView; = null

.field public static d:Landroid/view/WindowManager$LayoutParams; = null

.field public static e:Z = false

.field public static f:Z = false

.field public static g:Landroid/content/Context;

.field public static h:F

.field public static i:Ljava/lang/String;


# direct methods
.method public static synthetic a()Lcom/android/quicksearchbox/animation/view/ContainerView;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    const-class v1, Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 7

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lb/a/a/c1/a;->a:Ljava/lang/String;

    const-string p1, "init return by PullDownService context is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    sget-object v0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    sput-object p0, Lb/a/a/c1/a;->g:Landroid/content/Context;

    .line 5
    sput-boolean p1, Lb/a/a/c1/a;->f:Z

    const-string p1, "window"

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    sput-object p1, Lb/a/a/c1/a;->b:Landroid/view/WindowManager;

    .line 7
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f6

    const v4, 0x5040508

    const/4 v5, -0x3

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object p1, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    .line 8
    sget-object p1, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 9
    sget-object v0, Lb/a/a/c1/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    sget-object p1, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 11
    invoke-static {}, Lsmartisanos/api/WindowManagerSmt;->getInstance()Lsmartisanos/api/WindowManagerSmt;

    sget-object v1, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string p1, "#b3000000"

    .line 12
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string p1, "#ffffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 13
    invoke-static/range {v1 .. v6}, Lsmartisanos/api/WindowManagerSmt;->setSystemUiDecoration(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    sput-object p1, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    .line 14
    :try_start_0
    sget-boolean p1, Lb/a/a/c1/b;->c:Z

    if-eqz p1, :cond_3

    const-string p1, "android.view.WindowManager$LayoutParams"

    const-string v0, "PRIVATE_FLAG_SMARTISAN_DRAW_NAVIGATION_BAR_BACKGROUND"

    .line 15
    invoke-static {p1, v0}, Lb/a/a/c1/g/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 16
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-eq p1, v0, :cond_3

    .line 17
    sget-object v0, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 18
    :cond_3
    sget-object p1, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    const v0, 0x7f0b00b7

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 19
    sget-boolean p1, Lb/a/a/c1/c;->e:Z

    if-eqz p1, :cond_4

    .line 20
    sget-object p1, Lb/a/a/c1/a;->a:Ljava/lang/String;

    const-string v2, "-> init containerView"

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x1

    .line 21
    sput-boolean p1, Lb/a/a/c1/a;->e:Z

    .line 22
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quicksearchbox/animation/view/ContainerView;

    sput-object p0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    .line 23
    sget-boolean p0, Lb/a/a/c1/a;->f:Z

    if-eqz p0, :cond_5

    .line 24
    sget-object p0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    :cond_5
    sget-object p0, Lb/a/a/c1/a;->b:Landroid/view/WindowManager;

    sget-object p1, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    sget-object v0, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-static {}, Lb/a/a/c1/a;->g()V

    .line 27
    sget-object p0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    sput p0, Lb/a/a/c1/a;->h:F

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lb/a/a/c1/a;->i:Ljava/lang/String;

    goto/16 :goto_2

    .line 29
    :cond_6
    sget p1, Lb/a/a/c1/a;->h:F

    sget-object v2, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_8

    sget-object p1, Lb/a/a/c1/a;->i:Ljava/lang/String;

    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    .line 31
    :cond_7
    sget-object p0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->d()V

    .line 32
    invoke-static {}, Lb/a/a/c1/a;->g()V

    .line 33
    sget-object p0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->e()V

    goto :goto_2

    .line 34
    :cond_8
    :goto_1
    sget-boolean p1, Lb/a/a/c1/c;->e:Z

    if-eqz p1, :cond_9

    .line 35
    sget-object p1, Lb/a/a/c1/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system font is change! mSystemFontScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lb/a/a/c1/a;->h:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "sContainerView.getResources().getConfiguration().fontScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    .line 36
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_9
    sput-object v1, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    .line 39
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quicksearchbox/animation/view/ContainerView;

    sput-object p0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    .line 40
    sget-object p0, Lb/a/a/c1/a;->b:Landroid/view/WindowManager;

    sget-object p1, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    sget-object v0, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    sget-object p0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    sput p0, Lb/a/a/c1/a;->h:F

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lb/a/a/c1/a;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 43
    sget-object p1, Lb/a/a/c1/a;->a:Ljava/lang/String;

    const-string v0, "add window failed, try again !"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    new-instance p0, Lb/a/a/c1/a$a;

    invoke-direct {p0}, Lb/a/a/c1/a$a;-><init>()V

    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lb/a/a/c1/g/b;->a(Ljava/lang/Runnable;J)V

    :goto_2
    return-void
.end method

.method public static synthetic b()Landroid/view/WindowManager;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/c1/a;->b:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static c()V
    .locals 3

    .line 1
    sget-object v0, Lb/a/a/c1/a;->b:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lb/a/a/c1/a;->b:Landroid/view/WindowManager;

    sget-object v1, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 4
    sget-object v0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->b()V

    .line 5
    sget-object v0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    sget-object v0, Lb/a/a/c1/a;->b:Landroid/view/WindowManager;

    sget-object v1, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    sget-object v2, Lb/a/a/c1/a;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lb/a/a/c1/a;->a:Ljava/lang/String;

    const-string v1, "presenter -> window hide!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static d()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/c1/a$b;

    invoke-direct {v0}, Lb/a/a/c1/a$b;-><init>()V

    invoke-static {v0}, Lb/a/a/c1/g/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/c1/a$c;

    invoke-direct {v0}, Lb/a/a/c1/a$c;-><init>()V

    invoke-static {v0}, Lb/a/a/c1/g/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/c1/a$d;

    invoke-direct {v0}, Lb/a/a/c1/a$d;-><init>()V

    invoke-static {v0}, Lb/a/a/c1/g/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static g()V
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/c1/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/c1/f/a;->a(Landroid/content/Context;)Z

    .line 2
    sget-object v0, Lb/a/a/c1/a;->c:Lcom/android/quicksearchbox/animation/view/ContainerView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/animation/view/ContainerView;->a()V

    return-void
.end method

.method public static h()V
    .locals 3

    .line 1
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lb/a/a/c1/a;->a:Ljava/lang/String;

    const-string v1, "AnimationExecutor -> startActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v1

    const-class v2, Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "TAG_LAUNCHER_PULL_TO_ACTIVITY_NAME"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    sget-object v1, Lb/a/a/c1/f/a;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget-object v1, Lb/a/a/c1/f/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    sget-object v1, Lb/a/a/c1/f/a;->d:Landroid/graphics/Bitmap;

    const-string v2, "TAG_BITMAP_THUMBNAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
