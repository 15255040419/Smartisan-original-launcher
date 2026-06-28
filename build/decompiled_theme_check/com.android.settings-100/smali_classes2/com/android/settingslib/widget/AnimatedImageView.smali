.class public Lcom/android/settingslib/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# instance fields
.field private mAnimating:Z

.field private mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateAnimating()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDrawable()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    iput-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v0, :cond_2

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 81
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 87
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 98
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/settingslib/widget/AnimatedImageView;->mAnimating:Z

    .line 92
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    invoke-direct {p0}, Lcom/android/settingslib/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method
