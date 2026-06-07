.class public Lcom/android/quicksearchbox/dslv/DragSortListView;
.super Lcom/android/quicksearchbox/dslv/SlideListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/dslv/DragSortListView$OnCancelDragListener;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$e;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$d;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$DragScrollProfile;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$DragSortListener;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$i;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$f;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$h;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$j;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$g;,
        Lcom/android/quicksearchbox/dslv/DragSortListView$c;
    }
.end annotation


# instance fields
.field public A:I

.field public A0:Lcom/android/quicksearchbox/dslv/DragSortListView$f;

.field public B:I

.field public B0:Z

.field public C:Z

.field public C0:F

.field public D:Z

.field public D0:Landroid/graphics/Point;

.field public E:J

.field public E0:Z

.field public F:I

.field public F0:Z

.field public G:I

.field public G0:I

.field public H:I

.field public H0:Lcom/android/quicksearchbox/dslv/DragSortListView$OnCancelDragListener;

.field public I:Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;

.field public J:Landroid/widget/ListView;

.field public K:Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;

.field public L:Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;

.field public M:Z

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:[Landroid/view/View;

.field public T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

.field public U:F

.field public V:F

.field public W:I

.field public a0:I

.field public b0:F

.field public c0:F

.field public d0:F

.field public e0:F

.field public f0:F

.field public g0:Lcom/android/quicksearchbox/dslv/DragSortListView$DragScrollProfile;

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:I

.field public l0:Z

.field public m0:Z

.field public n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

.field public o0:Landroid/view/MotionEvent;

.field public p0:I

.field public q0:F

.field public r:Landroid/view/View;

.field public r0:F

.field public s:Landroid/graphics/Point;

.field public s0:Lcom/android/quicksearchbox/dslv/DragSortListView$c;

.field public t:Landroid/graphics/Point;

.field public t0:Z

.field public u:I

.field public u0:Lcom/android/quicksearchbox/dslv/DragSortListView$e;

.field public v:Z

.field public v0:Z

.field public w:Landroid/database/DataSetObserver;

.field public w0:Z

.field public x:F

.field public x0:Lcom/android/quicksearchbox/dslv/DragSortListView$g;

.field public y:F

.field public y0:Lcom/android/quicksearchbox/dslv/DragSortListView$i;

.field public z:I

.field public z0:Lcom/android/quicksearchbox/dslv/DragSortListView$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 1
    invoke-direct/range {p0 .. p2}, Lcom/android/quicksearchbox/dslv/SlideListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    .line 3
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->t:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->v:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    iput v2, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->x:F

    .line 6
    iput v2, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->y:F

    .line 7
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->C:Z

    .line 8
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->D:Z

    const-wide/16 v3, 0x0

    .line 9
    iput-wide v3, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->E:J

    const/4 v5, 0x1

    .line 10
    iput-boolean v5, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->M:Z

    .line 11
    iput v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    .line 12
    iput v5, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->O:I

    .line 13
    iput v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->R:I

    new-array v6, v5, [Landroid/view/View;

    .line 14
    iput-object v6, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->S:[Landroid/view/View;

    const v6, 0x3eaaaaab

    .line 15
    iput v6, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->U:F

    .line 16
    iput v6, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->V:F

    const/high16 v8, 0x3f000000    # 0.5f

    .line 17
    iput v8, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->f0:F

    .line 18
    new-instance v6, Lcom/android/quicksearchbox/dslv/DragSortListView$a;

    invoke-direct {v6, v7}, Lcom/android/quicksearchbox/dslv/DragSortListView$a;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;)V

    iput-object v6, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->g0:Lcom/android/quicksearchbox/dslv/DragSortListView$DragScrollProfile;

    .line 19
    iput v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    .line 20
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->l0:Z

    .line 21
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    const/4 v6, 0x0

    .line 22
    iput-object v6, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    .line 23
    iput v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->p0:I

    const/high16 v6, 0x3e800000    # 0.25f

    .line 24
    iput v6, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->q0:F

    const/4 v6, 0x0

    .line 25
    iput v6, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->r0:F

    .line 26
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->t0:Z

    .line 27
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->v0:Z

    .line 28
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->w0:Z

    .line 29
    new-instance v9, Lcom/android/quicksearchbox/dslv/DragSortListView$g;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lcom/android/quicksearchbox/dslv/DragSortListView$g;-><init>(I)V

    iput-object v9, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->x0:Lcom/android/quicksearchbox/dslv/DragSortListView$g;

    .line 30
    iput v6, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->C0:F

    .line 31
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->F0:Z

    const/4 v9, -0x1

    .line 32
    iput v9, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->G0:I

    const/16 v9, 0x96

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/smartisanos/quicksearch/R$styleable;->DragSortListView:[I

    invoke-virtual {v11, v0, v12, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v0, 0x2

    .line 34
    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->O:I

    const/16 v0, 0x13

    .line 35
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->t0:Z

    .line 36
    iget-boolean v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->t0:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/quicksearchbox/dslv/DragSortListView$e;

    invoke-direct {v0, v7}, Lcom/android/quicksearchbox/dslv/DragSortListView$e;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->u0:Lcom/android/quicksearchbox/dslv/DragSortListView$e;

    :cond_0
    const/16 v0, 0x9

    .line 38
    iget v12, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->x:F

    invoke-virtual {v11, v0, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->x:F

    .line 39
    iget v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->x:F

    iput v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->y:F

    .line 40
    iget-boolean v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->M:Z

    invoke-virtual {v11, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->M:Z

    const/16 v0, 0x10

    const/high16 v10, 0x3f400000    # 0.75f

    .line 41
    invoke-virtual {v11, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 42
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->q0:F

    .line 43
    iget v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->q0:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->C:Z

    .line 44
    invoke-virtual {v11, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-long v12, v0

    iput-wide v12, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->E:J

    .line 45
    iget-wide v12, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->E:J

    cmp-long v0, v12, v3

    if-eqz v0, :cond_2

    .line 46
    iput-boolean v5, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->D:Z

    .line 47
    iput-boolean v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->C:Z

    :cond_2
    const/4 v0, 0x5

    .line 48
    iget v2, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->U:F

    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 49
    invoke-virtual {v7, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setDragScrollStart(F)V

    const/16 v0, 0xb

    .line 50
    iget v2, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->f0:F

    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->f0:F

    const/16 v0, 0xd

    .line 51
    invoke-virtual {v11, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/4 v0, 0x7

    .line 52
    invoke-virtual {v11, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/16 v0, 0x14

    .line 53
    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v2, 0xc

    .line 54
    invoke-virtual {v11, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->E0:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    .line 55
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    const/16 v0, 0xf

    .line 56
    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v0, 0x12

    .line 57
    invoke-virtual {v11, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    const/4 v0, 0x6

    .line 58
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v0, 0x4

    .line 59
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v0, 0x8

    .line 60
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 61
    invoke-virtual {v11, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/16 v0, 0xa

    const/high16 v1, -0x1000000

    .line 62
    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 63
    new-instance v15, Lb/a/a/f1/a;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Lb/a/a/f1/a;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;IIIII)V

    .line 64
    invoke-virtual {v15, v12}, Lb/a/a/f1/a;->a(Z)V

    .line 65
    invoke-virtual {v15, v13}, Lb/a/a/f1/a;->b(Z)V

    .line 66
    invoke-virtual {v15, v14}, Lcom/android/quicksearchbox/dslv/SimpleFloatViewManager;->a(I)V

    .line 67
    iput-object v15, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    .line 68
    invoke-virtual {v7, v15}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    :cond_3
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    move v0, v9

    move v9, v10

    goto :goto_1

    :cond_4
    move v0, v9

    .line 70
    :goto_1
    new-instance v1, Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    invoke-direct {v1, v7}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;)V

    iput-object v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    if-lez v9, :cond_5

    .line 71
    new-instance v1, Lcom/android/quicksearchbox/dslv/DragSortListView$i;

    invoke-direct {v1, v7, v8, v9}, Lcom/android/quicksearchbox/dslv/DragSortListView$i;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;FI)V

    iput-object v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->y0:Lcom/android/quicksearchbox/dslv/DragSortListView$i;

    :cond_5
    if-lez v0, :cond_6

    .line 72
    new-instance v1, Lcom/android/quicksearchbox/dslv/DragSortListView$f;

    invoke-direct {v1, v7, v8, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView$f;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;FI)V

    iput-object v1, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->A0:Lcom/android/quicksearchbox/dslv/DragSortListView$f;

    :cond_6
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 73
    invoke-static/range {v9 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->o0:Landroid/view/MotionEvent;

    .line 74
    new-instance v0, Lcom/android/quicksearchbox/dslv/DragSortListView$b;

    invoke-direct {v0, v7}, Lcom/android/quicksearchbox/dslv/DragSortListView$b;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;)V

    iput-object v0, v7, Lcom/android/quicksearchbox/dslv/DragSortListView;->w:Landroid/database/DataSetObserver;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->f0:F

    return p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/dslv/DragSortListView;F)F
    .locals 0

    .line 3
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->C0:F

    return p1
.end method

.method public static a(IFF)I
    .locals 2

    int-to-float p0, p0

    mul-float v0, p1, p2

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    add-float v1, p1, v0

    mul-float/2addr v1, p2

    div-float/2addr p0, p2

    sub-float/2addr p1, v0

    sub-float/2addr p0, p1

    div-float/2addr v0, p0

    mul-float/2addr v0, p2

    sub-float p0, v1, v0

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/dslv/DragSortListView;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    return p1
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/dslv/DragSortListView;II)I
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(II)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(ILandroid/view/View;Z)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/dslv/DragSortListView;Z)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    return p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/dslv/DragSortListView;I)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->e(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->O:I

    return p0
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/dslv/DragSortListView;I)I
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(I)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(ILandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    return p0
.end method

.method public static synthetic e(Lcom/android/quicksearchbox/dslv/DragSortListView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->j()V

    return-void
.end method

.method public static synthetic f(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    return p0
.end method

.method public static synthetic g(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    return p0
.end method

.method public static synthetic h(Lcom/android/quicksearchbox/dslv/DragSortListView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B0:Z

    return p0
.end method

.method public static synthetic i(Lcom/android/quicksearchbox/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->C0:F

    return p0
.end method

.method public static synthetic j(Lcom/android/quicksearchbox/dslv/DragSortListView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->g()V

    return-void
.end method

.method public static synthetic k(Lcom/android/quicksearchbox/dslv/DragSortListView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->i()V

    return-void
.end method

.method public static synthetic l(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u:I

    return p0
.end method

.method public static synthetic m(Lcom/android/quicksearchbox/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->c0:F

    return p0
.end method

.method public static synthetic n(Lcom/android/quicksearchbox/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->d0:F

    return p0
.end method

.method public static synthetic o(Lcom/android/quicksearchbox/dslv/DragSortListView;)Lcom/android/quicksearchbox/dslv/DragSortListView$DragScrollProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->g0:Lcom/android/quicksearchbox/dslv/DragSortListView$DragScrollProfile;

    return-object p0
.end method

.method public static synthetic p(Lcom/android/quicksearchbox/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->b0:F

    return p0
.end method

.method public static synthetic q(Lcom/android/quicksearchbox/dslv/DragSortListView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->e0:F

    return p0
.end method

.method public static synthetic r(Lcom/android/quicksearchbox/dslv/DragSortListView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->J:Landroid/widget/ListView;

    return-object p0
.end method

.method public static synthetic s(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->j0:I

    return p0
.end method

.method public static synthetic t(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->Q:I

    return p0
.end method

.method public static synthetic u(Lcom/android/quicksearchbox/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    return-object p0
.end method

.method public static synthetic v(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->i0:I

    return p0
.end method

.method public static synthetic w(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->z:I

    return p0
.end method

.method public static synthetic x(Lcom/android/quicksearchbox/dslv/DragSortListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    return p0
.end method


# virtual methods
.method public final a(II)I
    .locals 6

    .line 86
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 87
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->C:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->O:I

    sub-int v3, v1, v2

    .line 89
    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r0:F

    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 90
    iget v5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-ne p1, v5, :cond_4

    .line 91
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-ne v5, p1, :cond_2

    if-eqz v0, :cond_1

    add-int p2, v4, v2

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_1

    .line 92
    :cond_2
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-ne v5, p1, :cond_3

    sub-int p2, v1, v4

    goto :goto_1

    :cond_3
    move p2, v2

    goto :goto_1

    .line 93
    :cond_4
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-ne p1, v1, :cond_6

    if-eqz v0, :cond_5

    add-int/2addr p2, v4

    goto :goto_1

    :cond_5
    add-int/2addr p2, v3

    goto :goto_1

    .line 94
    :cond_6
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-ne p1, v0, :cond_7

    add-int/2addr p2, v3

    sub-int/2addr p2, v4

    :cond_7
    :goto_1
    return p2
.end method

.method public final a(ILandroid/view/View;II)I
    .locals 6

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(I)I

    move-result v0

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(II)I

    move-result v1

    .line 98
    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-eq p1, v2, :cond_0

    sub-int v2, p2, v0

    sub-int v0, v1, v0

    goto :goto_0

    :cond_0
    move v2, p2

    move v0, v1

    .line 99
    :goto_0
    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    .line 100
    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    iget v5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-eq v4, v5, :cond_1

    iget v5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-eq v4, v5, :cond_1

    .line 101
    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->O:I

    sub-int/2addr v3, v4

    :cond_1
    const/4 v4, 0x0

    if-gt p1, p3, :cond_2

    .line 102
    iget p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-le p1, p2, :cond_7

    sub-int/2addr v3, v0

    add-int/2addr v4, v3

    goto :goto_1

    :cond_2
    if-ne p1, p4, :cond_5

    .line 103
    iget p3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-gt p1, p3, :cond_4

    sub-int/2addr v2, v3

    :cond_3
    add-int/2addr v4, v2

    goto :goto_1

    .line 104
    :cond_4
    iget p3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-ne p1, p3, :cond_3

    sub-int/2addr p2, v1

    add-int/2addr v4, p2

    goto :goto_1

    .line 105
    :cond_5
    iget p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-gt p1, p2, :cond_6

    sub-int/2addr v4, v3

    goto :goto_1

    .line 106
    :cond_6
    iget p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-ne p1, p2, :cond_7

    sub-int/2addr v4, v0

    :cond_7
    :goto_1
    return v4
.end method

.method public a(FF)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    .line 47
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->V:F

    goto :goto_0

    .line 48
    :cond_0
    iput p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->V:F

    :goto_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    .line 49
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->U:F

    goto :goto_1

    .line 50
    :cond_1
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->U:F

    .line 51
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->p()V

    :cond_2
    return-void
.end method

.method public a(IF)V
    .locals 3

    .line 22
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_6

    .line 23
    :cond_0
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    if-nez v0, :cond_1

    .line 24
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    .line 25
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 26
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    .line 27
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->z:I

    .line 28
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    .line 31
    iput p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->C0:F

    .line 32
    iget-boolean p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    if-eqz p2, :cond_4

    .line 33
    iget p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->p0:I

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->o0:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Lcom/android/quicksearchbox/dslv/SlideListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 35
    :cond_3
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->o0:Landroid/view/MotionEvent;

    invoke-super {p0, p2}, Lcom/android/quicksearchbox/dslv/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 36
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->y0:Lcom/android/quicksearchbox/dslv/DragSortListView$i;

    if-eqz p2, :cond_5

    .line 37
    invoke-virtual {p2}, Lcom/android/quicksearchbox/dslv/DragSortListView$j;->d()V

    goto :goto_1

    .line 38
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final a(ILandroid/graphics/Canvas;)V
    .locals 8

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    .line 10
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    .line 12
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    .line 13
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 14
    iget v6, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-le p1, v6, :cond_0

    .line 15
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result p1

    add-int/2addr p1, v5

    add-int/2addr v1, p1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    sub-int/2addr p1, v5

    sub-int v1, p1, v1

    move v7, v1

    move v1, p1

    move p1, v7

    .line 17
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 18
    invoke-virtual {p2, v3, p1, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 19
    invoke-virtual {v0, v3, p1, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 20
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public final a(ILandroid/view/View;Z)V
    .locals 7

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 54
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-eq p1, v1, :cond_0

    const/4 p3, -0x2

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result p3

    .line 56
    :goto_0
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-ne p1, v1, :cond_7

    .line 57
    :cond_1
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    const/16 v3, 0x50

    const/4 v4, 0x0

    if-ge p1, v1, :cond_3

    .line 58
    move-object v1, p2

    check-cast v1, Lcom/android/quicksearchbox/dslv/DragSortItemView;

    invoke-virtual {v1, v3}, Lcom/android/quicksearchbox/dslv/DragSortItemView;->setGravity(I)V

    .line 59
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-ne p1, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->D:Z

    if-eqz v1, :cond_7

    .line 60
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->G0:I

    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-le v1, v2, :cond_2

    .line 61
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v2, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_1
    move-object v1, p2

    goto/16 :goto_2

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 63
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto/16 :goto_2

    :cond_3
    const/16 v5, 0x30

    if-le p1, v1, :cond_5

    .line 64
    move-object v1, p2

    check-cast v1, Lcom/android/quicksearchbox/dslv/DragSortItemView;

    invoke-virtual {v1, v5}, Lcom/android/quicksearchbox/dslv/DragSortItemView;->setGravity(I)V

    .line 65
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-ne p1, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->D:Z

    if-eqz v1, :cond_7

    .line 66
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->G0:I

    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-le v1, v2, :cond_4

    .line 67
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 68
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    .line 69
    :cond_4
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    int-to-float v1, v1

    invoke-direct {v2, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    .line 70
    :cond_5
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->O:I

    if-ne v1, v6, :cond_7

    iget-boolean v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->D:Z

    if-eqz v1, :cond_7

    .line 71
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->G0:I

    iget v6, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-le v1, v6, :cond_6

    .line 72
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 73
    move-object v2, v1

    check-cast v2, Lcom/android/quicksearchbox/dslv/DragSortItemView;

    invoke-virtual {v2, v5}, Lcom/android/quicksearchbox/dslv/DragSortItemView;->setGravity(I)V

    .line 74
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    .line 75
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 76
    move-object v2, v1

    check-cast v2, Lcom/android/quicksearchbox/dslv/DragSortItemView;

    invoke-virtual {v2, v3}, Lcom/android/quicksearchbox/dslv/DragSortItemView;->setGravity(I)V

    .line 77
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_2

    :cond_7
    move-object v1, v2

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 78
    iget-wide v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->E:J

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 80
    :cond_9
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p3, v1, :cond_a

    .line 81
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    .line 84
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-ne p1, v1, :cond_b

    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    :cond_b
    if-eq v0, p3, :cond_c

    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_0
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->R:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingLeft()I

    move-result v2

    .line 111
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 112
    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 113
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 114
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 115
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 116
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 154
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 155
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(ILandroid/view/View;Z)V

    return-void
.end method

.method public a(IIII)Z
    .locals 8

    .line 117
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 119
    invoke-virtual/range {v2 .. v7}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(ILandroid/view/View;III)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public a(ILandroid/view/View;III)Z
    .locals 3

    .line 120
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->M:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 124
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 125
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    .line 126
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    .line 127
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->z:I

    const/4 p1, 0x4

    .line 128
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    .line 129
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    .line 130
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    or-int/2addr p3, v0

    iput p3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    .line 131
    iput-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    .line 132
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->m()V

    .line 133
    iput p4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->G:I

    .line 134
    iput p5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->H:I

    .line 135
    iget p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->i0:I

    .line 136
    iget-object p3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget p4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->h0:I

    iget p5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->G:I

    sub-int/2addr p4, p5

    iput p4, p3, Landroid/graphics/Point;->x:I

    .line 137
    iget p4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->H:I

    sub-int/2addr p2, p4

    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 138
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->D0:Landroid/graphics/Point;

    .line 139
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result p2

    .line 140
    iget p3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    and-int/2addr p3, v2

    const/4 p4, 0x2

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget p5, p3, Landroid/graphics/Point;->x:I

    if-le p5, p2, :cond_2

    .line 141
    iput p2, p3, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 142
    :cond_2
    iget p3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    and-int/2addr p3, p4

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget p5, p3, Landroid/graphics/Point;->x:I

    if-ge p5, p2, :cond_3

    .line 143
    iput p2, p3, Landroid/graphics/Point;->x:I

    .line 144
    :cond_3
    :goto_0
    iget p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_4
    iget-boolean p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->t0:Z

    if-eqz p1, :cond_5

    .line 147
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u0:Lcom/android/quicksearchbox/dslv/DragSortListView$e;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$e;->c()V

    .line 148
    :cond_5
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->p0:I

    if-eq p1, v2, :cond_7

    if-eq p1, p4, :cond_6

    goto :goto_1

    .line 149
    :cond_6
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->o0:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 150
    :cond_7
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->o0:Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 151
    :goto_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->requestLayout()V

    .line 152
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->z0:Lcom/android/quicksearchbox/dslv/DragSortListView$h;

    if-eqz p1, :cond_8

    .line 153
    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$j;->d()V

    :cond_8
    return v2

    :cond_9
    :goto_2
    return v1
.end method

.method public a(ZF)Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;->a(Z)V

    if-eqz p1, :cond_0

    .line 41
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(IF)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A0:Lcom/android/quicksearchbox/dslv/DragSortListView$f;

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$j;->d()V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->j()V

    .line 45
    :goto_0
    iget-boolean p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->t0:Z

    if-eqz p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u0:Lcom/android/quicksearchbox/dslv/DragSortListView$e;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$e;->d()V

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final b(ILandroid/view/View;Z)I
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(ILandroid/view/View;Z)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(II)I

    move-result p1

    return p1
.end method

.method public final b(II)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->G:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 9
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->H:I

    sub-int p1, p2, p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(Z)V

    .line 11
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u:I

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->Q:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 12
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u:I

    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->Q:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 13
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;->a()I

    move-result v1

    .line 14
    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->j0:I

    const/4 v3, -0x1

    if-le v0, v2, :cond_1

    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->a0:I

    if-le v0, v2, :cond_1

    if-eq v1, p1, :cond_1

    if-eq v1, v3, :cond_0

    .line 15
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    invoke-virtual {p2, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;->a(Z)V

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    invoke-virtual {p2, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;->a(I)V

    goto :goto_0

    .line 17
    :cond_1
    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->j0:I

    if-ge p2, v2, :cond_3

    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->W:I

    if-ge p2, v2, :cond_3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    .line 18
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    invoke-virtual {p2, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;->a(Z)V

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;->a(I)V

    goto :goto_0

    .line 20
    :cond_3
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->W:I

    if-lt p2, v1, :cond_4

    iget p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->a0:I

    if-gt v0, p2, :cond_4

    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    .line 21
    invoke-virtual {p2}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 22
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    invoke-virtual {p2, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;->a(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    if-ne p1, v1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->e()V

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->h()V

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->b(II)V

    goto :goto_0

    .line 29
    :cond_3
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    if-ne p1, v1, :cond_4

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->b(Z)Z

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->h()V

    :goto_0
    return v2
.end method

.method public b(Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B0:Z

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(ZF)Z

    move-result p1

    return p1
.end method

.method public b(ZF)Z
    .locals 1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B0:Z

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(ZF)Z

    move-result p1

    return p1
.end method

.method public final c(II)I
    .locals 7

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-le p1, v0, :cond_7

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 8
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->O:I

    sub-int/2addr v1, v2

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(I)I

    move-result v2

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->e(I)I

    move-result v3

    .line 11
    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    iget v5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-gt v4, v5, :cond_3

    if-ne p1, v4, :cond_2

    .line 12
    iget v6, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-eq v6, v4, :cond_2

    if-ne p1, v5, :cond_1

    add-int/2addr p2, v3

    .line 13
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    goto :goto_0

    .line 14
    :cond_2
    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-le p1, v3, :cond_5

    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-gt p1, v3, :cond_5

    :goto_0
    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    if-le p1, v5, :cond_4

    .line 15
    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-gt p1, v4, :cond_4

    add-int/2addr p2, v1

    goto :goto_1

    .line 16
    :cond_4
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-ne p1, v1, :cond_5

    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-eq v4, v1, :cond_5

    sub-int/2addr v3, v2

    add-int/2addr p2, v3

    .line 17
    :cond_5
    :goto_1
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-gt p1, v1, :cond_6

    .line 18
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    sub-int/2addr v1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(I)I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    goto :goto_2

    :cond_6
    sub-int/2addr v2, v0

    .line 19
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p2, v2

    :cond_7
    :goto_2
    return p2
.end method

.method public final c()V
    .locals 6

    .line 36
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 38
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v0

    .line 39
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 40
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    add-int v5, v0, v2

    .line 41
    invoke-virtual {p0, v5, v4, v3}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    .line 21
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->L:Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->g()V

    .line 24
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d()V

    .line 25
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->f()V

    .line 26
    iget-boolean p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 27
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    :goto_0
    return-void
.end method

.method public final c(ILandroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->v0:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->n()V

    .line 44
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 45
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    .line 46
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c()V

    .line 48
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(ILandroid/view/View;II)I

    move-result v0

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 50
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->layoutChildren()V

    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_2
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->v0:Z

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 2

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    .line 30
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->i0:I

    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->j0:I

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->h0:I

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->i0:I

    if-nez v0, :cond_1

    .line 33
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->i0:I

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->j0:I

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    return-void
.end method

.method public final d(I)I
    .locals 5

    .line 8
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(ILandroid/view/View;Z)I

    move-result p1

    return p1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->x0:Lcom/android/quicksearchbox/dslv/DragSortListView$g;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$g;->a(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    return v0

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 13
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 14
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 15
    iget-object v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->S:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 16
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->S:[Landroid/view/View;

    :cond_3
    const/4 v2, 0x0

    if-ltz v1, :cond_5

    .line 17
    iget-object v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->S:[Landroid/view/View;

    aget-object v4, v3, v1

    if-nez v4, :cond_4

    .line 18
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->S:[Landroid/view/View;

    aput-object v0, v2, v1

    goto :goto_0

    .line 20
    :cond_4
    aget-object v1, v3, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_5
    invoke-interface {v0, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(ILandroid/view/View;Z)I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->x0:Lcom/android/quicksearchbox/dslv/DragSortListView$g;

    invoke-virtual {v1, p1, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView$g;->a(II)V

    return v0
.end method

.method public final d(ILandroid/view/View;Z)I
    .locals 3

    .line 24
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 27
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 28
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p1, :cond_3

    return p1

    .line 29
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_5

    .line 30
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(Landroid/view/View;)V

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :cond_5
    return p1
.end method

.method public final d()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-ge v1, v0, :cond_2

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_2
    return-void
.end method

.method public final d(II)V
    .locals 2

    .line 32
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->i0:I

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->j0:I

    sub-int v1, v0, v1

    if-gez v1, :cond_1

    .line 33
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->D0:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-float p1, v1

    .line 34
    :goto_0
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->D0:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 35
    :cond_1
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 36
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->H:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, p2

    const p1, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v0, p1, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(IFF)I

    move-result p1

    .line 37
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    add-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 38
    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    sub-int/2addr p2, v0

    if-lt p1, p2, :cond_2

    .line 39
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_2
    :goto_1
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    if-gez v2, :cond_2

    neg-int v2, v2

    :cond_2
    if-ge v2, v3, :cond_3

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    .line 12
    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->y:F

    mul-float/2addr v4, v3

    mul-float/2addr v4, v2

    float-to-int v10, v4

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    .line 15
    invoke-interface {v4}, Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 16
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v0

    int-to-float v9, v1

    const/16 v11, 0x1f

    move-object v5, p1

    .line 18
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 19
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public final e(I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(II)I

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    .line 5
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->T:Lcom/android/quicksearchbox/dslv/DragSortListView$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView$d;->a(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->g()V

    .line 8
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->f()V

    .line 9
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c()V

    .line 10
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->H0:Lcom/android/quicksearchbox/dslv/DragSortListView$OnCancelDragListener;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView$OnCancelDragListener;->onCancelDrag()V

    :cond_1
    return-void
.end method

.method public final e(II)V
    .locals 2

    .line 15
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->i0:I

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->j0:I

    sub-int v1, v0, v1

    if-lez v1, :cond_1

    .line 16
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->D0:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    neg-int p1, v1

    int-to-float p1, p1

    .line 17
    :goto_0
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->D0:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    float-to-int p1, p1

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 18
    :cond_1
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 19
    iget p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->H:I

    sub-int/2addr v0, p1

    sub-int p1, p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p1, v0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(IFF)I

    move-result p1

    .line 20
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 21
    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p2

    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_2

    .line 22
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p2

    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    .line 5
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 6
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    .line 7
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->z:I

    return-void
.end method

.method public f(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B0:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(IF)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_1
    return-void
.end method

.method public getDragState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    return v0
.end method

.method public getFloatAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->y:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s0:Lcom/android/quicksearchbox/dslv/DragSortListView$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView$c;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->p0:I

    .line 3
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    .line 4
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 5
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    .line 6
    :cond_0
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->x:F

    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->y:F

    .line 7
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F0:Z

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->x0:Lcom/android/quicksearchbox/dslv/DragSortListView$g;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView$g;->a()V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(I)V

    return-void
.end method

.method public final j()V
    .locals 4

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->K:Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->z:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->K:Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;

    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->z:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;->drop(II)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->g()V

    .line 7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d()V

    .line 8
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->f()V

    .line 9
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c()V

    .line 10
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->M:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F0:Z

    return v0
.end method

.method public layoutChildren()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->v:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->m()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 6
    iput-boolean v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->v:Z

    :cond_1
    return-void
.end method

.method public final m()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    .line 5
    invoke-interface {v1}, Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    .line 6
    invoke-interface {v1}, Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    .line 7
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->Q:I

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->t:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->h0:I

    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->i0:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->t:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 6
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    .line 8
    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    if-le v1, v2, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iput v2, v1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 10
    :cond_1
    iget v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    if-ge v1, v2, :cond_2

    .line 11
    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 14
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 15
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 16
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    if-ge v3, v1, :cond_3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 18
    :cond_3
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4

    .line 19
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-gt v3, v1, :cond_4

    sub-int/2addr v1, v3

    .line 20
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 22
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_5

    .line 23
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v3

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 25
    :cond_5
    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->k0:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_6

    .line 26
    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F:I

    if-lt v4, v2, :cond_6

    sub-int/2addr v2, v3

    .line 27
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 28
    :cond_6
    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->P:I

    sub-int/2addr v1, v2

    .line 29
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v5, v2

    if-ge v0, v5, :cond_8

    .line 30
    iget-boolean v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->E0:Z

    if-eqz v1, :cond_7

    if-nez v3, :cond_7

    .line 31
    invoke-virtual {p0, v0, v5}, Lcom/android/quicksearchbox/dslv/DragSortListView;->e(II)V

    goto :goto_1

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iput v5, v0, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_8
    if-le v0, v1, :cond_a

    .line 33
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v4, v2, :cond_9

    iget-boolean v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->E0:Z

    if-eqz v2, :cond_9

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->d(II)V

    goto :goto_1

    .line 35
    :cond_9
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 36
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->D0:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 37
    iget v0, v1, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->Q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u:I

    return-void
.end method

.method public final o()Z
    .locals 14

    .line 2
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->G0:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    sub-int v2, v1, v0

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int v0, v1, v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(II)I

    move-result v3

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    .line 12
    iget v5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u:I

    if-ge v5, v3, :cond_4

    :goto_0
    if-ltz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->e(I)I

    move-result v2

    if-nez v1, :cond_1

    sub-int/2addr v0, v4

    sub-int/2addr v0, v2

    goto :goto_2

    :cond_1
    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(II)I

    move-result v2

    .line 15
    iget v5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u:I

    if-lt v5, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-ne v1, v6, :cond_5

    add-int/2addr v0, v4

    add-int/2addr v0, v2

    goto :goto_2

    :cond_5
    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 17
    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->e(I)I

    move-result v6

    .line 18
    invoke-virtual {p0, v2, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(II)I

    move-result v7

    .line 19
    iget v8, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u:I

    if-ge v8, v7, :cond_6

    move v0, v7

    goto :goto_2

    :cond_6
    move v1, v2

    move v2, v6

    move v3, v7

    goto :goto_1

    .line 20
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 21
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    const/4 v5, 0x0

    .line 22
    iget v6, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 23
    iget v7, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    .line 24
    iget v8, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r0:F

    .line 25
    iget-boolean v9, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->C:Z

    if-eqz v9, :cond_a

    sub-int v9, v0, v3

    .line 26
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 27
    iget v10, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u:I

    if-ge v10, v0, :cond_7

    move v13, v3

    move v3, v0

    move v0, v13

    .line 28
    :cond_7
    iget v10, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->q0:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    int-to-float v9, v9

    mul-float/2addr v10, v9

    float-to-int v9, v10

    int-to-float v10, v9

    add-int/2addr v0, v9

    sub-int v9, v3, v9

    .line 29
    iget v12, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u:I

    if-ge v12, v0, :cond_8

    add-int/lit8 v3, v1, -0x1

    .line 30
    iput v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 31
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    sub-int/2addr v0, v12

    int-to-float v0, v0

    mul-float/2addr v0, v11

    div-float/2addr v0, v10

    .line 32
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r0:F

    goto :goto_3

    :cond_8
    if-ge v12, v9, :cond_9

    .line 33
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 34
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    goto :goto_3

    .line 35
    :cond_9
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    add-int/lit8 v0, v1, 0x1

    .line 36
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    const/high16 v0, 0x3f800000    # 1.0f

    sub-int/2addr v3, v12

    int-to-float v3, v3

    div-float/2addr v3, v10

    add-float/2addr v3, v0

    mul-float/2addr v3, v11

    .line 37
    iput v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r0:F

    goto :goto_3

    .line 38
    :cond_a
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 39
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    .line 40
    :goto_3
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_b

    .line 41
    iput v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 42
    iput v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    move v1, v2

    goto :goto_4

    .line 43
    :cond_b
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v4

    if-lt v0, v9, :cond_c

    .line 44
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 45
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    .line 46
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    .line 47
    :cond_c
    :goto_4
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->A:I

    if-ne v0, v6, :cond_d

    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->B:I

    if-ne v0, v7, :cond_d

    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r0:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_e

    :cond_d
    move v5, v3

    .line 48
    :cond_e
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->z:I

    if-eq v1, v0, :cond_10

    .line 49
    iget-object v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->I:Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;

    if-eqz v4, :cond_f

    sub-int/2addr v0, v2

    sub-int v2, v1, v2

    .line 50
    invoke-interface {v4, v0, v2}, Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;->drag(II)V

    .line 51
    :cond_f
    iput v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->z:I

    goto :goto_5

    :cond_10
    move v3, v5

    :goto_5
    return v3
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->t0:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->u0:Lcom/android/quicksearchbox/dslv/DragSortListView$e;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$e;->a()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->M:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->l0:Z

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    .line 6
    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    if-eqz v2, :cond_1

    .line 7
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->w0:Z

    return v0

    .line 8
    :cond_1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    move p1, v0

    goto :goto_1

    .line 10
    :cond_3
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iput-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->F0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v0

    goto :goto_0

    :catch_0
    :cond_4
    move p1, v4

    :goto_0
    if-eq v1, v0, :cond_6

    if-eq v1, v3, :cond_6

    if-eqz p1, :cond_5

    .line 12
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->p0:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    .line 13
    iput v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->p0:I

    goto :goto_1

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->h()V

    :goto_1
    if-eq v1, v0, :cond_7

    if-ne v1, v3, :cond_8

    .line 15
    :cond_7
    iput-boolean v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->m0:Z

    :cond_8
    return p1
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->r:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->m()V

    :cond_0
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->v:Z

    .line 6
    :cond_1
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->R:I

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/dslv/SlideListView;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->p()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->w0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->w0:Z

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->M:Z

    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->l0:Z

    .line 6
    iput-boolean v1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->l0:Z

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->c(Landroid/view/MotionEvent;)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->N:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->b(Landroid/view/MotionEvent;)Z

    move v1, v3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 10
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/dslv/SlideListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v3

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    if-eqz v1, :cond_6

    .line 12
    iput v3, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->p0:I

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->h()V

    :cond_6
    :goto_0
    return v1
.end method

.method public p()V
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v0

    .line 4
    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->U:F

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    iput v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->c0:F

    .line 5
    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->V:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    iput v5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->b0:F

    .line 6
    iget v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->c0:F

    float-to-int v4, v2

    iput v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->W:I

    .line 7
    iget v4, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->b0:F

    float-to-int v5, v4

    iput v5, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->a0:I

    sub-float/2addr v2, v3

    .line 8
    iput v2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->d0:F

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v4

    .line 9
    iput v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->e0:F

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->v0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/dslv/DragSortListView$c;

    invoke-direct {v0, p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView$c;-><init>(Lcom/android/quicksearchbox/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s0:Lcom/android/quicksearchbox/dslv/DragSortListView$c;

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->w:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    instance-of v0, p1, Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setDropListener(Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;)V

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setDragListener(Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;)V

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setRemoveListener(Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s0:Lcom/android/quicksearchbox/dslv/DragSortListView$c;

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->s0:Lcom/android/quicksearchbox/dslv/DragSortListView$c;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->M:Z

    return-void
.end method

.method public setDragListener(Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->I:Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;

    return-void
.end method

.method public setDragScrollProfile(Lcom/android/quicksearchbox/dslv/DragSortListView$DragScrollProfile;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->g0:Lcom/android/quicksearchbox/dslv/DragSortListView$DragScrollProfile;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(FF)V

    return-void
.end method

.method public setDragSortListener(Lcom/android/quicksearchbox/dslv/DragSortListView$DragSortListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setDropListener(Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setDragListener(Lcom/android/quicksearchbox/dslv/DragSortListView$DragListener;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setRemoveListener(Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;)V

    return-void
.end method

.method public setDropListener(Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->K:Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->y:F

    return-void
.end method

.method public setFloatViewManager(Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->n0:Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->f0:F

    return-void
.end method

.method public setOnCancelDragListener(Lcom/android/quicksearchbox/dslv/DragSortListView$OnCancelDragListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->H0:Lcom/android/quicksearchbox/dslv/DragSortListView$OnCancelDragListener;

    return-void
.end method

.method public setRelateListView(Landroid/widget/ListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->J:Landroid/widget/ListView;

    return-void
.end method

.method public setRemoveListener(Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView;->L:Lcom/android/quicksearchbox/dslv/DragSortListView$RemoveListener;

    return-void
.end method
