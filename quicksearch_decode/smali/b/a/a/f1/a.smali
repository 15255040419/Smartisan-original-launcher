.class public Lb/a/a/f1/a;
.super Lcom/android/quicksearchbox/dslv/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static D:F = 500.0f


# instance fields
.field public A:Lcom/android/quicksearchbox/dslv/DragSortListView;

.field public B:I

.field public C:Landroid/view/GestureDetector$OnGestureListener;

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Landroid/view/GestureDetector;

.field public l:Landroid/view/GestureDetector;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:[I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/dslv/DragSortListView;IIIII)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/dslv/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/a/f1/a;->f:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lb/a/a/f1/a;->g:Z

    .line 4
    iput-boolean v0, p0, Lb/a/a/f1/a;->i:Z

    .line 5
    iput-boolean v0, p0, Lb/a/a/f1/a;->j:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lb/a/a/f1/a;->n:I

    .line 7
    iput v1, p0, Lb/a/a/f1/a;->o:I

    .line 8
    iput v1, p0, Lb/a/a/f1/a;->p:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 9
    iput-object v1, p0, Lb/a/a/f1/a;->q:[I

    .line 10
    iput-boolean v0, p0, Lb/a/a/f1/a;->v:Z

    .line 11
    new-instance v1, Lb/a/a/f1/a$a;

    invoke-direct {v1, p0}, Lb/a/a/f1/a$a;-><init>(Lb/a/a/f1/a;)V

    iput-object v1, p0, Lb/a/a/f1/a;->C:Landroid/view/GestureDetector$OnGestureListener;

    .line 12
    iput-object p1, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    .line 13
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lb/a/a/f1/a;->k:Landroid/view/GestureDetector;

    .line 14
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lb/a/a/f1/a;->C:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lb/a/a/f1/a;->l:Landroid/view/GestureDetector;

    .line 15
    iget-object v1, p0, Lb/a/a/f1/a;->l:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 16
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lb/a/a/f1/a;->m:I

    .line 17
    iput p2, p0, Lb/a/a/f1/a;->w:I

    .line 18
    iput p5, p0, Lb/a/a/f1/a;->x:I

    .line 19
    iput p6, p0, Lb/a/a/f1/a;->y:I

    .line 20
    invoke-virtual {p0, p4}, Lb/a/a/f1/a;->c(I)V

    .line 21
    invoke-virtual {p0, p3}, Lb/a/a/f1/a;->b(I)V

    return-void
.end method

.method public static synthetic a()F
    .locals 1

    .line 3
    sget v0, Lb/a/a/f1/a;->D:F

    return v0
.end method

.method public static synthetic a(Lb/a/a/f1/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/f1/a;->i:Z

    return p0
.end method

.method public static synthetic a(Lb/a/a/f1/a;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lb/a/a/f1/a;->j:Z

    return p1
.end method

.method public static synthetic b(Lb/a/a/f1/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/f1/a;->j:Z

    return p0
.end method

.method public static synthetic c(Lb/a/a/f1/a;)Lcom/android/quicksearchbox/dslv/DragSortListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    return-object p0
.end method

.method public static synthetic d(Lb/a/a/f1/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/f1/a;->B:I

    return p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)I
    .locals 1

    .line 9
    iget v0, p0, Lb/a/a/f1/a;->w:I

    invoke-virtual {p0, p1, v0}, Lb/a/a/f1/a;->a(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MotionEvent;I)I
    .locals 8

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 12
    iget-object v2, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 13
    iget-object v1, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 14
    iget-object v2, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 15
    iget-object v3, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-lt v0, v1, :cond_1

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 16
    iget-object v1, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 20
    iget-object v3, p0, Lb/a/a/f1/a;->q:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 21
    iget-object v3, p0, Lb/a/a/f1/a;->q:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    if-le v2, v6, :cond_1

    const/4 v6, 0x1

    aget v7, v3, v6

    if-le p1, v7, :cond_1

    aget v3, v3, v5

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lb/a/a/f1/a;->q:[I

    aget v2, v2, v6

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    if-ge p1, v2, :cond_1

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lb/a/a/f1/a;->r:I

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lb/a/a/f1/a;->s:I

    return v0

    :cond_1
    return v4
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lb/a/a/f1/a;->i:Z

    return-void
.end method

.method public a(III)Z
    .locals 3

    .line 5
    iget-boolean v0, p0, Lb/a/a/f1/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/a/a/f1/a;->j:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-boolean v1, p0, Lb/a/a/f1/a;->i:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lb/a/a/f1/a;->j:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x2

    .line 7
    :cond_1
    iget-object v1, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(IIII)Z

    move-result p1

    iput-boolean p1, p0, Lb/a/a/f1/a;->v:Z

    .line 8
    iget-boolean p1, p0, Lb/a/a/f1/a;->v:Z

    return p1
.end method

.method public b(Landroid/view/MotionEvent;)I
    .locals 1

    .line 4
    iget v0, p0, Lb/a/a/f1/a;->y:I

    invoke-virtual {p0, p1, v0}, Lb/a/a/f1/a;->a(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lb/a/a/f1/a;->f:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lb/a/a/f1/a;->g:Z

    return-void
.end method

.method public c(Landroid/view/MotionEvent;)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lb/a/a/f1/a;->a(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lb/a/a/f1/a;->h:I

    return-void
.end method

.method public d(Landroid/view/MotionEvent;)I
    .locals 2

    .line 2
    iget v0, p0, Lb/a/a/f1/a;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lb/a/a/f1/a;->b(Landroid/view/MotionEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lb/a/a/f1/a;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/a/a/f1/a;->h:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lb/a/a/f1/a;->x:I

    invoke-virtual {p0, p1, v0}, Lb/a/a/f1/a;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lb/a/a/f1/a;->p:I

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lb/a/a/f1/a;->c(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lb/a/a/f1/a;->n:I

    .line 4
    iget v0, p0, Lb/a/a/f1/a;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lb/a/a/f1/a;->f:I

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lb/a/a/f1/a;->r:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lb/a/a/f1/a;->s:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lb/a/a/f1/a;->a(III)Z

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lb/a/a/f1/a;->j:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lb/a/a/f1/a;->z:Z

    .line 8
    iput v0, p0, Lb/a/a/f1/a;->B:I

    .line 9
    invoke-virtual {p0, p1}, Lb/a/a/f1/a;->d(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lb/a/a/f1/a;->o:I

    return v1
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lb/a/a/f1/a;->i:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lb/a/a/f1/a;->j:Z

    if-eqz p1, :cond_0

    .line 2
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lb/a/a/f1/a;->B:I

    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget p1, p0, Lb/a/a/f1/a;->n:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget p1, p0, Lb/a/a/f1/a;->f:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->performHapticFeedback(I)Z

    .line 3
    iget p1, p0, Lb/a/a/f1/a;->n:I

    iget v0, p0, Lb/a/a/f1/a;->t:I

    iget v1, p0, Lb/a/a/f1/a;->r:I

    sub-int/2addr v0, v1

    iget v1, p0, Lb/a/a/f1/a;->u:I

    iget v2, p0, Lb/a/a/f1/a;->s:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lb/a/a/f1/a;->a(III)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    float-to-int p4, p4

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 5
    iget v0, p0, Lb/a/a/f1/a;->r:I

    sub-int v0, p4, v0

    .line 6
    iget v1, p0, Lb/a/a/f1/a;->s:I

    sub-int v1, p2, v1

    .line 7
    iget-boolean v2, p0, Lb/a/a/f1/a;->z:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lb/a/a/f1/a;->v:Z

    if-nez v2, :cond_4

    iget v2, p0, Lb/a/a/f1/a;->n:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    iget v2, p0, Lb/a/a/f1/a;->o:I

    if-eq v2, v4, :cond_4

    .line 8
    :cond_0
    iget v2, p0, Lb/a/a/f1/a;->n:I

    const/4 v5, 0x1

    if-eq v2, v4, :cond_2

    .line 9
    iget v2, p0, Lb/a/a/f1/a;->f:I

    if-ne v2, v5, :cond_1

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lb/a/a/f1/a;->m:I

    if-le p1, p2, :cond_1

    iget-boolean p1, p0, Lb/a/a/f1/a;->g:Z

    if-eqz p1, :cond_1

    .line 10
    iget p1, p0, Lb/a/a/f1/a;->n:I

    invoke-virtual {p0, p1, v0, v1}, Lb/a/a/f1/a;->a(III)Z

    goto :goto_0

    .line 11
    :cond_1
    iget p1, p0, Lb/a/a/f1/a;->f:I

    if-eqz p1, :cond_4

    sub-int/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lb/a/a/f1/a;->m:I

    if-le p1, p2, :cond_4

    iget-boolean p1, p0, Lb/a/a/f1/a;->i:Z

    if-eqz p1, :cond_4

    .line 12
    iput-boolean v5, p0, Lb/a/a/f1/a;->j:Z

    .line 13
    iget p1, p0, Lb/a/a/f1/a;->o:I

    invoke-virtual {p0, p1, v0, v1}, Lb/a/a/f1/a;->a(III)Z

    goto :goto_0

    .line 14
    :cond_2
    iget v2, p0, Lb/a/a/f1/a;->o:I

    if-eq v2, v4, :cond_4

    sub-int/2addr p4, p3

    .line 15
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget p4, p0, Lb/a/a/f1/a;->m:I

    if-le p3, p4, :cond_3

    iget-boolean p3, p0, Lb/a/a/f1/a;->i:Z

    if-eqz p3, :cond_3

    .line 16
    iput-boolean v5, p0, Lb/a/a/f1/a;->j:Z

    .line 17
    iget p1, p0, Lb/a/a/f1/a;->o:I

    invoke-virtual {p0, p1, v0, v1}, Lb/a/a/f1/a;->a(III)Z

    goto :goto_0

    :cond_3
    sub-int/2addr p2, p1

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lb/a/a/f1/a;->m:I

    if-le p1, p2, :cond_4

    .line 19
    iput-boolean v3, p0, Lb/a/a/f1/a;->z:Z

    :cond_4
    :goto_0
    return v3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean p1, p0, Lb/a/a/f1/a;->i:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lb/a/a/f1/a;->h:I

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lb/a/a/f1/a;->p:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->f(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->k()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lb/a/a/f1/a;->k:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3
    iget-boolean p1, p0, Lb/a/a/f1/a;->i:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lb/a/a/f1/a;->v:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lb/a/a/f1/a;->h:I

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lb/a/a/f1/a;->l:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    goto :goto_1

    .line 6
    :cond_2
    iget-boolean p1, p0, Lb/a/a/f1/a;->i:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lb/a/a/f1/a;->j:Z

    if-eqz p1, :cond_4

    .line 7
    iget p1, p0, Lb/a/a/f1/a;->B:I

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_3
    neg-int p1, p1

    .line 8
    :goto_0
    iget-object p2, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_4

    .line 9
    iget-object p1, p0, Lb/a/a/f1/a;->A:Lcom/android/quicksearchbox/dslv/DragSortListView;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->b(ZF)Z

    .line 10
    :cond_4
    iput-boolean v0, p0, Lb/a/a/f1/a;->j:Z

    .line 11
    iput-boolean v0, p0, Lb/a/a/f1/a;->v:Z

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lb/a/a/f1/a;->t:I

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lb/a/a/f1/a;->u:I

    :cond_6
    :goto_1
    return v0
.end method
