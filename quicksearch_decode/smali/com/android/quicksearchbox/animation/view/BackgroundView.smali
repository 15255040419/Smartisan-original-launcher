.class public Lcom/android/quicksearchbox/animation/view/BackgroundView;
.super Landroid/widget/FrameLayout;
.source "BackgroundView.java"


# static fields
.field public static g:Ljava/lang/String;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/view/View;

.field public d:Z

.field public e:Landroid/view/View;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/quicksearchbox/animation/view/BackgroundView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/animation/view/BackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/animation/view/BackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->d:Z

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->b:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    sget-object v0, Lb/a/a/c1/f/a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lb/a/a/c1/f/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->d:Z

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->b:Landroid/widget/ImageView;

    sget-object v1, Lb/a/a/c1/f/a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->a:Landroid/widget/ImageView;

    sget-object v1, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lb/a/a/c1/f/a;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lb/a/a/c1/g/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 9
    :cond_0
    sget-boolean v0, Lb/a/a/c1/c;->e:Z

    if-eqz v0, :cond_1

    .line 10
    sget-object v0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->g:Ljava/lang/String;

    const-string v1, "mContainerView.init() -> initBackgroundView() Warn: Window is visible!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public a(F)V
    .locals 2

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x43960000    # 300.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/animation/view/BackgroundView;->c(F)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/animation/view/BackgroundView;->b(F)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/animation/view/BackgroundView;->d(F)V

    return-void
.end method

.method public final b(F)V
    .locals 4

    const v0, 0x3da3d70a    # 0.08f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-gez v1, :cond_0

    div-float/2addr p1, v0

    sub-float p1, v2, p1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    move p1, v3

    :cond_1
    const v0, 0x3f7ae148    # 0.98f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    move p1, v2

    .line 1
    :cond_2
    sget-boolean v0, Lb/a/a/c1/c;->f:Z

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundView -> ivScreenshot alpha ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "%]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_3
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public final c(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->d:Z

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/quicksearchbox/animation/view/BackgroundView;->g:Ljava/lang/String;

    const-string v0, "background bitmap didn\'t ready"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 3
    invoke-static {}, Lb/a/a/c1/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x19

    if-gt p1, v0, :cond_6

    if-gtz p1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_3

    return-void

    .line 5
    :cond_3
    iget v1, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->f:I

    sub-int v1, p1, v1

    .line 6
    iput p1, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->f:I

    if-nez v1, :cond_4

    return-void

    .line 7
    :cond_4
    invoke-static {p1}, Lb/a/a/c1/g/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne p1, v0, :cond_5

    .line 8
    sput-object v1, Lb/a/a/c1/f/a;->d:Landroid/graphics/Bitmap;

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final d(F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->e:Landroid/view/View;

    mul-float v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->e:Landroid/view/View;

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    div-float/2addr p1, v1

    float-to-double v4, p1

    add-double/2addr v4, v2

    double-to-float p1, v4

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->e:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f080126

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->a:Landroid/widget/ImageView;

    const v0, 0x7f080125

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->b:Landroid/widget/ImageView;

    const v0, 0x7f080265

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->c:Landroid/view/View;

    const v0, 0x7f080127

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/BackgroundView;->e:Landroid/view/View;

    return-void
.end method
