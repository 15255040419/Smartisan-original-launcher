.class public Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;
.super Ljava/lang/Object;
.source "SearchFloatViewManager.java"

# interfaces
.implements Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/dslv/SearchFloatViewManager$OnCreateFloatViewListener;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ListView;

.field public d:Lcom/android/quicksearchbox/dslv/SearchFloatViewManager$OnCreateFloatViewListener;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->c:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->f:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->e:I

    return v0
.end method

.method public onCreateFloatView(I)Landroid/view/View;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->d:Lcom/android/quicksearchbox/dslv/SearchFloatViewManager$OnCreateFloatViewListener;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager$OnCreateFloatViewListener;->onCreateFloatView()V

    :cond_1
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 6
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->c:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070339

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->c:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070335

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->e:I

    .line 11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->f:I

    .line 12
    iget v6, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->e:I

    iget v7, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->f:I

    add-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 13
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->a:Landroid/graphics/Bitmap;

    .line 14
    iget-object v6, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 15
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->a:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v1, v1, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    .line 17
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v8, v1, v1, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    invoke-virtual {v6, v2, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 20
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v1, v1, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    .line 21
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-direct {v8, v1, v2, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    invoke-virtual {v6, v4, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 23
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 24
    new-instance v4, Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v1, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    .line 26
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {v7, v1, v2, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 27
    invoke-virtual {v6, v3, v4, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 29
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->b:Landroid/widget/ImageView;

    if-nez p1, :cond_2

    .line 30
    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->b:Landroid/widget/ImageView;

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 32
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->b:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 35
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->b:Landroid/widget/ImageView;

    return-object p1
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    iput-object v0, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public setOnCreateFloatViewListener(Lcom/android/quicksearchbox/dslv/SearchFloatViewManager$OnCreateFloatViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;->d:Lcom/android/quicksearchbox/dslv/SearchFloatViewManager$OnCreateFloatViewListener;

    return-void
.end method
