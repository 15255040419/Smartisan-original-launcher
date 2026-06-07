.class public Lsmartisan/widget/ShadowFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ShadowFrameLayout.java"


# static fields
.field public static final h:I

.field public static final i:I


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->smt_title_bar_shadow:I

    sput v0, Lsmartisan/widget/ShadowFrameLayout;->h:I

    .line 2
    sget v0, Lsmartisan/widget/R$drawable;->bottom_bar_shadow:I

    sput v0, Lsmartisan/widget/ShadowFrameLayout;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ShadowFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ShadowFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget v0, Lsmartisan/widget/ShadowFrameLayout;->h:I

    iput v0, p0, Lsmartisan/widget/ShadowFrameLayout;->f:I

    .line 5
    iput-object p1, p0, Lsmartisan/widget/ShadowFrameLayout;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->title_bar_shadow_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/ShadowFrameLayout;->b:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->bottom_bar_shadow_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/ShadowFrameLayout;->c:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->bar_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/ShadowFrameLayout;->d:I

    .line 9
    iget-object p1, p0, Lsmartisan/widget/ShadowFrameLayout;->a:Landroid/content/Context;

    sget-object v0, Lsmartisan/widget/R$styleable;->ShadowFrameLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lsmartisan/widget/R$styleable;->ShadowFrameLayout_bottom_type:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/ShadowFrameLayout;->e:Z

    .line 11
    iget-boolean p2, p0, Lsmartisan/widget/ShadowFrameLayout;->e:Z

    if-eqz p2, :cond_0

    sget p2, Lsmartisan/widget/ShadowFrameLayout;->i:I

    goto :goto_0

    :cond_0
    sget p2, Lsmartisan/widget/ShadowFrameLayout;->h:I

    :goto_0
    iput p2, p0, Lsmartisan/widget/ShadowFrameLayout;->f:I

    const p2, 0x3dcccccd    # 0.1f

    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 13
    invoke-virtual {p0}, Lsmartisan/widget/ShadowFrameLayout;->a()V

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 5
    iget v0, p0, Lsmartisan/widget/ShadowFrameLayout;->d:I

    if-eqz p1, :cond_1

    .line 6
    iget-boolean p1, p0, Lsmartisan/widget/ShadowFrameLayout;->e:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lsmartisan/widget/ShadowFrameLayout;->c:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lsmartisan/widget/ShadowFrameLayout;->b:I

    :goto_0
    move v0, p1

    .line 7
    :cond_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-boolean v0, p0, Lsmartisan/widget/ShadowFrameLayout;->e:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x30

    goto :goto_1

    :cond_2
    const/16 v0, 0x50

    :goto_1
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/ShadowFrameLayout;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/ShadowFrameLayout;->g:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ShadowFrameLayout;->g:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lsmartisan/widget/ShadowFrameLayout;->a(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/ShadowFrameLayout;->c()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lsmartisan/widget/ShadowFrameLayout;->a(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowFrameLayout;->g:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lsmartisan/widget/ShadowFrameLayout;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final c()Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lsmartisan/widget/ShadowFrameLayout;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lsmartisan/widget/R$drawable;->divider_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    sget v1, Lsmartisan/widget/R$id;->shadow_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 4
    iget-boolean v1, p0, Lsmartisan/widget/ShadowFrameLayout;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lsmartisan/widget/ShadowFrameLayout;->d:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lsmartisan/widget/ShadowFrameLayout;->d:I

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lsmartisan/widget/ShadowFrameLayout;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iget v1, p0, Lsmartisan/widget/ShadowFrameLayout;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    iget-boolean v1, p0, Lsmartisan/widget/ShadowFrameLayout;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lsmartisan/widget/ShadowFrameLayout;->c:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lsmartisan/widget/ShadowFrameLayout;->b:I

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public setShadowBackgroundRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/ShadowFrameLayout;->f:I

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/ShadowFrameLayout;->b()V

    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowFrameLayout;->g:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
