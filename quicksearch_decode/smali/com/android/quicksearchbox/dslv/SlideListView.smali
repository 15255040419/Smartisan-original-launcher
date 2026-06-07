.class public Lcom/android/quicksearchbox/dslv/SlideListView;
.super Landroid/widget/ListView;
.source "SlideListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/dslv/SlideListView$b;,
        Lcom/android/quicksearchbox/dslv/SlideListView$TouchMonitorListener;,
        Lcom/android/quicksearchbox/dslv/SlideListView$Listener;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;

.field public c:Z

.field public d:[I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Lcom/android/quicksearchbox/dslv/SlideListView$TouchMonitorListener;

.field public k:Lcom/android/quicksearchbox/dslv/SlideListView$b;

.field public l:F

.field public m:F

.field public n:Landroid/graphics/Point;

.field public o:Landroid/graphics/Point;

.field public p:F

.field public q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->c:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 23
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->d:[I

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    const/4 p1, -0x2

    .line 25
    iput p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->f:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 26
    iput p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->l:F

    .line 27
    iput p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->m:F

    .line 28
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->n:Landroid/graphics/Point;

    .line 29
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->o:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->c:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->d:[I

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    const/4 v0, -0x2

    .line 15
    iput v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->f:I

    const v0, 0x3e4ccccd    # 0.2f

    .line 16
    iput v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->l:F

    .line 17
    iput v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->m:F

    .line 18
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->n:Landroid/graphics/Point;

    .line 19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->o:Landroid/graphics/Point;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->c:Z

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 3
    iput-object p3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->d:[I

    const/4 p3, -0x1

    .line 4
    iput p3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    const/4 p3, -0x2

    .line 5
    iput p3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->f:I

    const p3, 0x3e4ccccd    # 0.2f

    .line 6
    iput p3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->l:F

    .line 7
    iput p3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->m:F

    .line 8
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->n:Landroid/graphics/Point;

    .line 9
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->o:Landroid/graphics/Point;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/dslv/SlideListView;)Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->o:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/dslv/SlideListView;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView;->b(I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/dslv/SlideListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->q:F

    return p0
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/dslv/SlideListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->p:F

    return p0
.end method

.method public static synthetic d(Lcom/android/quicksearchbox/dslv/SlideListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->a:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)I
    .locals 1

    .line 8
    iget v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->a:I

    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/MotionEvent;I)I
    .locals 7

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 17
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-lt v0, v1, :cond_3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 20
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 23
    iget v3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->g:I

    if-le v1, v3, :cond_1

    iget v3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->h:I

    if-ge v1, v3, :cond_1

    return v0

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->d:[I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 25
    iget-object v3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->d:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    if-le v1, v6, :cond_3

    aget v6, v3, v2

    if-le p1, v6, :cond_3

    aget v3, v3, v5

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v3, v6

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->d:[I

    aget v1, v1, v2

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_3

    .line 28
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->d:[I

    aget v1, p1, v5

    iput v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->g:I

    .line 29
    aget p1, p1, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->h:I

    return v0

    :cond_2
    if-nez p2, :cond_3

    .line 30
    iget p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    if-ne p1, v2, :cond_3

    iget p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->g:I

    if-le v1, p1, :cond_3

    iget p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->h:I

    if-ge v1, p1, :cond_3

    const/4 p1, -0x2

    return p1

    :cond_3
    return v4
.end method

.method public final a()V
    .locals 4

    .line 31
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    .line 33
    iget v2, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->l:F

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->q:F

    .line 34
    iget v2, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->m:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->p:F

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->b:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->f:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    .line 11
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView$Listener;->onDown(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(III)V
    .locals 1

    .line 35
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->n:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int p1, p2, p1

    int-to-float p2, p2

    .line 36
    iget v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->p:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    if-lez p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->k:Lcom/android/quicksearchbox/dslv/SlideListView$b;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/dslv/SlideListView$b;->a(I)V

    return-void

    .line 38
    :cond_0
    iget v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->q:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    if-gez p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->k:Lcom/android/quicksearchbox/dslv/SlideListView$b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/dslv/SlideListView$b;->a(I)V

    return-void

    .line 40
    :cond_1
    iget p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->q:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    iget p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->p:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 41
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->k:Lcom/android/quicksearchbox/dslv/SlideListView$b;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/SlideListView$b;->c()V

    .line 42
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/quicksearchbox/dslv/SlideListView;->b(I)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/quicksearch/R$styleable;->DragSortListView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0x11

    .line 4
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->a:I

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    :cond_1
    iget p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->a:I

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->i:Z

    .line 7
    new-instance p1, Lcom/android/quicksearchbox/dslv/SlideListView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/quicksearchbox/dslv/SlideListView$b;-><init>(Lcom/android/quicksearchbox/dslv/SlideListView;Lcom/android/quicksearchbox/dslv/SlideListView$a;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->k:Lcom/android/quicksearchbox/dslv/SlideListView$b;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 5
    iget v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->k:Lcom/android/quicksearchbox/dslv/SlideListView$b;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/dslv/SlideListView$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->k:Lcom/android/quicksearchbox/dslv/SlideListView$b;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/dslv/SlideListView$b;->c()V

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->c:Z

    .line 9
    iput v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    const/4 v1, -0x2

    .line 10
    iput v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->f:I

    .line 11
    iput v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->g:I

    .line 12
    iput v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->h:I

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->b:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->f:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->f:I

    .line 4
    iget-boolean v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->c:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/quicksearchbox/dslv/SlideListView$Listener;->setChecked(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 6
    iget-object v3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->o:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v3, :cond_8

    if-eq v3, v6, :cond_7

    const/4 v7, 0x2

    if-eq v3, v7, :cond_1

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7

    goto :goto_2

    :cond_1
    if-eq v0, v4, :cond_3

    if-ne v0, v5, :cond_2

    .line 8
    iget v3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v6

    .line 9
    :goto_1
    iget v5, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    if-eq v5, v6, :cond_4

    if-nez v3, :cond_4

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(I)V

    return v6

    .line 11
    :cond_4
    iget v5, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    if-ne v5, v6, :cond_5

    if-ne v0, v4, :cond_5

    return v6

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(III)V

    return v6

    .line 13
    :cond_7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/SlideListView;->b()V

    .line 14
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->j:Lcom/android/quicksearchbox/dslv/SlideListView$TouchMonitorListener;

    if-eqz v0, :cond_a

    .line 15
    invoke-interface {v0}, Lcom/android/quicksearchbox/dslv/SlideListView$TouchMonitorListener;->onTouchActionUp()V

    goto :goto_2

    .line 16
    :cond_8
    iget-object v3, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->n:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    if-eq v0, v4, :cond_a

    if-ne v0, v5, :cond_9

    .line 17
    iget v1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->e:I

    if-ne v1, v5, :cond_9

    goto :goto_2

    .line 18
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->a(I)V

    return v6

    .line 19
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setSlideEnable(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/SlideListView;->b()V

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->i:Z

    return-void
.end method

.method public setSlideListener(Lcom/android/quicksearchbox/dslv/SlideListView$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->b:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;

    return-void
.end method

.method public setTouchMonitorListener(Lcom/android/quicksearchbox/dslv/SlideListView$TouchMonitorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/SlideListView;->j:Lcom/android/quicksearchbox/dslv/SlideListView$TouchMonitorListener;

    return-void
.end method
