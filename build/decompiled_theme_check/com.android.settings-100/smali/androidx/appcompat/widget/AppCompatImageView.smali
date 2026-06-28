.class public Landroidx/appcompat/widget/AppCompatImageView;
.super Landroid/widget/ImageView;
.source "AppCompatImageView.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/core/widget/TintableImageSourceView;


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private final mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance p1, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 75
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p1, Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatImageHelper;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    .line 78
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/AppCompatImageHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 252
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 253
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 256
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p0, :cond_1

    .line 257
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 162
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 190
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 218
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 246
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p0, :cond_0

    .line 247
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 263
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageHelper;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 125
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 92
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 117
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 147
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 175
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 203
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 231
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatImageView;->mImageHelper:Landroidx/appcompat/widget/AppCompatImageHelper;

    if-eqz p0, :cond_0

    .line 232
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageHelper;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
