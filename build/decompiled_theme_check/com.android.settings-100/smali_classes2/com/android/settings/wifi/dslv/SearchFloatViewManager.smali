.class public Lcom/android/settings/wifi/dslv/SearchFloatViewManager;
.super Ljava/lang/Object;
.source "SearchFloatViewManager.java"

# interfaces
.implements Lcom/android/settings/wifi/dslv/DragSortListView$FloatViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dslv/SearchFloatViewManager$OnCreateFloatViewListener;
    }
.end annotation


# instance fields
.field private mFloatBGColor:I

.field private mFloatBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mOnCreateFloatViewListener:Lcom/android/settings/wifi/dslv/SearchFloatViewManager$OnCreateFloatViewListener;

.field private mPaddingTop:I

.field private mpaddingBottom:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mFloatBGColor:I

    .line 37
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public getMpaddingBottom()I
    .locals 0

    .line 160
    iget p0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mpaddingBottom:I

    return p0
.end method

.method public getPaddingBottom()I
    .locals 0

    .line 139
    iget p0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mpaddingBottom:I

    return p0
.end method

.method public getPaddingTop()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mPaddingTop:I

    return p0
.end method

.method public getmPaddingTop()I
    .locals 0

    .line 156
    iget p0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mPaddingTop:I

    return p0
.end method

.method public onCreateFloatView(I)Landroid/view/View;
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mOnCreateFloatViewListener:Lcom/android/settings/wifi/dslv/SearchFloatViewManager$OnCreateFloatViewListener;

    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v1}, Lcom/android/settings/wifi/dslv/SearchFloatViewManager$OnCreateFloatViewListener;->onCreateFloatView()V

    :cond_1
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 v2, 0x1

    .line 67
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 69
    iget-object v2, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080576

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080575

    .line 73
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 75
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 76
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mPaddingTop:I

    .line 83
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mpaddingBottom:I

    .line 85
    iget v6, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mPaddingTop:I

    iget v7, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mpaddingBottom:I

    add-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 87
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 88
    iget-object v5, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 89
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 91
    invoke-virtual {v5, v2, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v4, v6, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    .line 95
    invoke-virtual {v5, v3, v6, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    .line 101
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mImageView:Landroid/widget/ImageView;

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 104
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 108
    iget-object p0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 1

    .line 125
    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    iput-object v0, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mFloatBGColor:I

    return-void
.end method

.method public setOnCreateFloatViewListener(Lcom/android/settings/wifi/dslv/SearchFloatViewManager$OnCreateFloatViewListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/settings/wifi/dslv/SearchFloatViewManager;->mOnCreateFloatViewListener:Lcom/android/settings/wifi/dslv/SearchFloatViewManager$OnCreateFloatViewListener;

    return-void
.end method
