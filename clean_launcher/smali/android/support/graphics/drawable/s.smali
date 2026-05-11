.class Landroid/support/graphics/drawable/s;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# instance fields
.field Gb:Landroid/support/graphics/drawable/r;

.field Hb:Landroid/graphics/Bitmap;

.field Ib:Landroid/graphics/PorterDuff$Mode;

.field Jb:I

.field Kb:Landroid/graphics/Paint;

.field mAutoMirrored:Z

.field mCacheDirty:Z

.field mCachedAutoMirrored:Z

.field mCachedTint:Landroid/content/res/ColorStateList;

.field mChangingConfigurations:I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    .line 15
    sget-object v0, Landroid/support/graphics/drawable/u;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 16
    new-instance v0, Landroid/support/graphics/drawable/r;

    invoke-direct {v0}, Landroid/support/graphics/drawable/r;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/s;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    .line 3
    sget-object v0, Landroid/support/graphics/drawable/u;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    .line 4
    iget v0, p1, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    iput v0, p0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    .line 5
    new-instance v0, Landroid/support/graphics/drawable/r;

    iget-object v1, p1, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/r;-><init>(Landroid/support/graphics/drawable/r;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    .line 6
    iget-object v0, p1, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-static {v0}, Landroid/support/graphics/drawable/r;->a(Landroid/support/graphics/drawable/r;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-static {v2}, Landroid/support/graphics/drawable/r;->a(Landroid/support/graphics/drawable/r;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/r;->a(Landroid/support/graphics/drawable/r;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 8
    :cond_0
    iget-object v0, p1, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-static {v0}, Landroid/support/graphics/drawable/r;->b(Landroid/support/graphics/drawable/r;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-static {v2}, Landroid/support/graphics/drawable/r;->b(Landroid/support/graphics/drawable/r;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/graphics/drawable/r;->b(Landroid/support/graphics/drawable/r;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 10
    :cond_1
    iget-object v0, p1, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    .line 11
    iget-object v0, p1, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 12
    iget-boolean p1, p1, Landroid/support/graphics/drawable/s;->mAutoMirrored:Z

    iput-boolean p1, p0, Landroid/support/graphics/drawable/s;->mAutoMirrored:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public E()Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/r;->J()I

    move-result p0

    const/16 v0, 0xff

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/support/graphics/drawable/s;->E()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Kb:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/s;->Kb:Landroid/graphics/Paint;

    .line 6
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Kb:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Kb:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/r;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Kb:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Kb:Landroid/graphics/Paint;

    return-object p0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroid/support/graphics/drawable/s;->a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object p2

    .line 2
    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Hb:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public b(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Hb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Hb:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Hb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/support/graphics/drawable/s;->b(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/support/graphics/drawable/s;->Hb:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/support/graphics/drawable/s;->mCacheDirty:Z

    :cond_1
    return-void
.end method

.method public canReuseCache()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/graphics/drawable/s;->mCacheDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/s;->mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Ib:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/graphics/drawable/s;->mCachedAutoMirrored:Z

    iget-boolean v1, p0, Landroid/support/graphics/drawable/s;->mAutoMirrored:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/graphics/drawable/s;->Jb:I

    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    .line 2
    invoke-virtual {p0}, Landroid/support/graphics/drawable/r;->J()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Hb:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/graphics/drawable/s;->Hb:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/support/graphics/drawable/r;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public getChangingConfigurations()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/graphics/drawable/s;->mChangingConfigurations:I

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/graphics/drawable/u;

    invoke-direct {v0, p0}, Landroid/support/graphics/drawable/u;-><init>(Landroid/support/graphics/drawable/s;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    new-instance p1, Landroid/support/graphics/drawable/u;

    invoke-direct {p1, p0}, Landroid/support/graphics/drawable/u;-><init>(Landroid/support/graphics/drawable/s;)V

    return-object p1
.end method

.method public updateCacheStates()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/graphics/drawable/s;->mCachedTint:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/graphics/drawable/s;->Ib:Landroid/graphics/PorterDuff$Mode;

    .line 3
    iget-object v0, p0, Landroid/support/graphics/drawable/s;->Gb:Landroid/support/graphics/drawable/r;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/r;->J()I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/s;->Jb:I

    .line 4
    iget-boolean v0, p0, Landroid/support/graphics/drawable/s;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/support/graphics/drawable/s;->mCachedAutoMirrored:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/support/graphics/drawable/s;->mCacheDirty:Z

    return-void
.end method
