.class public Lcom/smartisanos/launcher/widget/StatusIconView;
.super Landroid/view/View;
.source "StatusIconView.java"


# instance fields
.field private mDegrees:I

.field private mInvalidateRunnable:Ljava/lang/Runnable;

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mResId:I

.field private mStatusDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mResId:I

    .line 86
    new-instance v0, Lcom/smartisanos/launcher/widget/StatusIconView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/widget/StatusIconView$1;-><init>(Lcom/smartisanos/launcher/widget/StatusIconView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mResId:I

    .line 86
    new-instance v0, Lcom/smartisanos/launcher/widget/StatusIconView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/widget/StatusIconView$1;-><init>(Lcom/smartisanos/launcher/widget/StatusIconView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mResId:I

    .line 86
    new-instance v0, Lcom/smartisanos/launcher/widget/StatusIconView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/widget/StatusIconView$1;-><init>(Lcom/smartisanos/launcher/widget/StatusIconView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 18
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    const/16 v0, 0x24

    .line 66
    .local v0, "left":I
    iget-object v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mStatusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mStatusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mStatusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mStatusDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 67
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    iget-object v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mStatusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 72
    iget v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgress:I

    if-gez v1, :cond_1

    .line 73
    iget v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mDegrees:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 73
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 75
    iget v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mDegrees:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mDegrees:I

    .line 76
    iget v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mDegrees:I

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mDegrees:I

    .line 77
    iget-object v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mInvalidateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x19

    invoke-virtual {p0, v1, v2, v3}, Lcom/smartisanos/launcher/widget/StatusIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 79
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    iget-object v1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 84
    return-void
.end method

.method public setStatusImageAndProgress(II)V
    .locals 6
    .param p1, "rid"    # I
    .param p2, "progress"    # I

    .prologue
    const/16 v3, 0x64

    .line 29
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/StatusIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mStatusDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iget v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgress:I

    if-ne v2, p2, :cond_1

    .line 32
    iget v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mResId:I

    if-eq v2, p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/StatusIconView;->invalidate()V

    .line 35
    :cond_0
    iput p1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mResId:I

    .line 60
    :goto_0
    return-void

    .line 38
    :cond_1
    iput p1, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mResId:I

    .line 39
    if-le p2, v3, :cond_2

    .line 40
    const/16 p2, 0x64

    .line 42
    :cond_2
    iput p2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgress:I

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "id":I
    iget v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgress:I

    if-gez v2, :cond_4

    .line 45
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/StatusIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "btn_loading"

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/StatusIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    :cond_3
    :goto_1
    if-nez v0, :cond_6

    .line 55
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/StatusIconView;->invalidate()V

    goto :goto_0

    .line 46
    :cond_4
    iget v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgress:I

    if-ne v2, v3, :cond_5

    .line 47
    const/4 v0, 0x0

    goto :goto_1

    .line 49
    :cond_5
    int-to-double v2, p2

    const-wide v4, 0x400a666666666666L    # 3.3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 50
    .local v1, "index":I
    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/StatusIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "btn_loading_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/StatusIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 57
    .end local v1    # "index":I
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/StatusIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/widget/StatusIconView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method
