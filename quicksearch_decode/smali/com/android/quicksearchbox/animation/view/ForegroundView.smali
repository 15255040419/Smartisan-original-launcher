.class public Lcom/android/quicksearchbox/animation/view/ForegroundView;
.super Landroid/widget/FrameLayout;
.source "ForegroundView.java"


# instance fields
.field public a:Lcom/android/quicksearchbox/animation/view/ForegroundContentView;

.field public b:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/quicksearchbox/animation/view/ForegroundView;

    invoke-static {v0}, Lb/a/a/c1/c;->b(Ljava/lang/Class;)Lb/a/a/c1/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/animation/view/ForegroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/animation/view/ForegroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/high16 v0, 0x43160000    # 150.0f

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/animation/view/ForegroundView;->a(F)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x43160000    # 150.0f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundView;->a:Lcom/android/quicksearchbox/animation/view/ForegroundContentView;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 4
    sget-boolean v0, Lb/a/a/c1/c;->f:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground alpha percentage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ForegroundView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundView;->a:Lcom/android/quicksearchbox/animation/view/ForegroundContentView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->c()V

    return-void
.end method

.method public b(F)V
    .locals 2

    const/high16 v0, 0x43160000    # 150.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundView;->a:Lcom/android/quicksearchbox/animation/view/ForegroundContentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/animation/view/ForegroundView;->a(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundView;->a:Lcom/android/quicksearchbox/animation/view/ForegroundContentView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0800e0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundView;->a:Lcom/android/quicksearchbox/animation/view/ForegroundContentView;

    const v0, 0x7f08024d

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundView;->b:Landroid/view/View;

    .line 4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lb/a/a/c1/b;->f:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v1, p0, Lcom/android/quicksearchbox/animation/view/ForegroundView;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
