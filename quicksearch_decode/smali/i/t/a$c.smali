.class public Li/t/a$c;
.super Ljava/lang/Object;
.source "BarsHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/view/ViewGroup;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Li/t/a$c;->c:I

    .line 4
    iput-object p1, p0, Li/t/a$c;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->title_bar_shadow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Li/t/a$c;->d:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->bottom_bar_shadow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Li/t/a$c;->e:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->bar_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Li/t/a$c;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Li/t/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li/t/a$c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 2
    iput-object p1, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    .line 3
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Li/t/a$c;->a()V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p1, p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Li/t/a$c;->b()V

    .line 7
    :goto_0
    iget-object p1, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 8
    iget-object p1, p0, Li/t/a$c;->h:Landroid/view/View;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 15
    iget-boolean v0, p0, Li/t/a$c;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 16
    iget p1, p0, Li/t/a$c;->e:I

    goto :goto_0

    :cond_0
    iget p1, p0, Li/t/a$c;->f:I

    :goto_0
    const/16 v0, 0x30

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 17
    iget p1, p0, Li/t/a$c;->d:I

    goto :goto_1

    :cond_2
    iget p1, p0, Li/t/a$c;->f:I

    :goto_1
    const/16 v0, 0x50

    .line 18
    :goto_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 19
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v1
.end method

.method public a(I)Li/t/a$c;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-boolean p1, p0, Li/t/a$c;->b:Z

    return-object p0
.end method

.method public final a()V
    .locals 3

    .line 9
    invoke-virtual {p0}, Li/t/a$c;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Li/t/a$c;->h:Landroid/view/View;

    .line 10
    iget-object v0, p0, Li/t/a$c;->h:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Li/t/a$c;->a(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Li/t/a$c;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    invoke-virtual {p0}, Li/t/a$c;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Li/t/a$c;->i:Landroid/view/View;

    .line 13
    iget-object v0, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Li/t/a$c;->i:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Li/t/a$c;->a(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method

.method public final b(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 7
    iget-boolean v0, p0, Li/t/a$c;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 8
    iget p1, p0, Li/t/a$c;->e:I

    goto :goto_0

    :cond_0
    iget p1, p0, Li/t/a$c;->f:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    iget p1, p0, Li/t/a$c;->d:I

    goto :goto_0

    :cond_2
    iget p1, p0, Li/t/a$c;->f:I

    :goto_0
    const/16 v0, 0xa

    .line 10
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v1
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Li/t/a$c;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Li/t/a$c;->h:Landroid/view/View;

    .line 2
    iget-object v0, p0, Li/t/a$c;->h:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Li/t/a$c;->b(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Li/t/a$c;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Li/t/a$c;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Li/t/a$c;->i:Landroid/view/View;

    .line 5
    iget-object v0, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Li/t/a$c;->i:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Li/t/a$c;->b(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method

.method public final c()Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Li/t/a$c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lsmartisan/widget/R$drawable;->divider_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    iget-boolean v1, p0, Li/t/a$c;->b:Z

    if-eqz v1, :cond_0

    iget v1, p0, Li/t/a$c;->f:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Li/t/a$c;->f:I

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    sget v1, Lsmartisan/widget/R$id;->shadow_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Li/t/a$c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iget v1, p0, Li/t/a$c;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-boolean v1, p0, Li/t/a$c;->b:Z

    if-eqz v1, :cond_0

    sget v1, Lsmartisan/widget/ShadowFrameLayout;->i:I

    goto :goto_0

    :cond_0
    sget v1, Lsmartisan/widget/ShadowFrameLayout;->h:I

    :goto_0
    iput v1, p0, Li/t/a$c;->c:I

    .line 4
    :cond_1
    iget v1, p0, Li/t/a$c;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    iget-boolean v1, p0, Li/t/a$c;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Li/t/a$c;->e:I

    neg-int v1, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Li/t/a$c;->d:I

    :goto_1
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-object v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    instance-of p3, p1, Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Li/t/a$c;->b:Z

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 5
    iget-object p3, p0, Li/t/a$c;->h:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    iget-object p3, p0, Li/t/a$c;->i:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 7
    :cond_1
    iget-object p1, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 8
    iget-object p1, p0, Li/t/a$c;->h:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Li/t/a$c;->h:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 9
    iget-object p1, p0, Li/t/a$c;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Li/t/a$c;->g:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Li/t/a$c;->i:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
