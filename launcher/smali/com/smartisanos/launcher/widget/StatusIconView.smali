.class public Lcom/smartisanos/launcher/widget/StatusIconView;
.super Landroid/view/View;
.source "StatusIconView.java"


# instance fields
.field private He:Landroid/graphics/drawable/Drawable;

.field private Ie:Landroid/graphics/drawable/Drawable;

.field private Je:I

.field private Ke:Ljava/lang/Runnable;

.field private mProgress:I

.field private mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mResId:I

    .line 9
    new-instance p1, Lcom/smartisanos/launcher/widget/d;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/widget/d;-><init>(Lcom/smartisanos/launcher/widget/StatusIconView;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ke:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mResId:I

    .line 6
    new-instance p1, Lcom/smartisanos/launcher/widget/d;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/widget/d;-><init>(Lcom/smartisanos/launcher/widget/StatusIconView;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ke:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mResId:I

    .line 3
    new-instance p1, Lcom/smartisanos/launcher/widget/d;

    invoke-direct {p1, p0}, Lcom/smartisanos/launcher/widget/d;-><init>(Lcom/smartisanos/launcher/widget/StatusIconView;)V

    iput-object p1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ke:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->He:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->He:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->He:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->He:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->He:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->He:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ie:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 8
    iget v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgress:I

    if-gez v0, :cond_1

    .line 9
    iget v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Je:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 12
    iget v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Je:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Je:I

    .line 13
    iget v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Je:I

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Je:I

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ke:Ljava/lang/Runnable;

    const-wide/16 v1, 0x19

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ie:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ie:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ie:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ie:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ie:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    .line 17
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    iget-object p0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->Ie:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
