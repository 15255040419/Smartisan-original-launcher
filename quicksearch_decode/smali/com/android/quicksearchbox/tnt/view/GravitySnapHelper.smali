.class public Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;
.super La/o/a/f;
.source "GravitySnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;
    }
.end annotation


# instance fields
.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:F

.field public m:I

.field public n:F

.field public o:La/o/a/g;

.field public p:La/o/a/g;

.field public q:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public s:Landroidx/recyclerview/widget/RecyclerView$n;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;-><init>(IZLcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;)V

    return-void
.end method

.method public constructor <init>(IZLcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;)V
    .locals 1

    .line 2
    invoke-direct {p0}, La/o/a/f;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->j:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->k:Z

    const/high16 v0, 0x42c80000    # 100.0f

    .line 5
    iput v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->l:F

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->m:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    iput v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->n:F

    .line 8
    new-instance v0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$a;-><init>(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->s:Landroidx/recyclerview/widget/RecyclerView$n;

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid gravity value. Use START | END | BOTTOM | TOP | CENTER constants"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->h:Z

    .line 11
    iput p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    .line 12
    iput-object p3, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->q:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(I)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->l:F

    return p0
.end method

.method private c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->p:La/o/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/o/a/g;->d()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 2
    :cond_0
    invoke-static {p1}, La/o/a/g;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->p:La/o/a/g;

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->p:La/o/a/g;

    return-object p1
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->o:La/o/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/o/a/g;->d()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 6
    :cond_0
    invoke-static {p1}, La/o/a/g;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->o:La/o/a/g;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->o:La/o/a/g;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/view/View;La/o/a/g;)I
    .locals 4

    .line 49
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->k:Z

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p2, p1}, La/o/a/g;->a(Landroid/view/View;)I

    move-result v0

    .line 51
    invoke-virtual {p2}, La/o/a/g;->a()I

    move-result v1

    invoke-virtual {p2}, La/o/a/g;->a()I

    move-result v2

    invoke-virtual {p2}, La/o/a/g;->b()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 52
    invoke-virtual {p2, p1}, La/o/a/g;->a(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, La/o/a/g;->a()I

    move-result p2

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, La/o/a/g;->b()I

    move-result p1

    sub-int p1, v0, p1

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p2, p1}, La/o/a/g;->a(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, La/o/a/g;->b()I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    :goto_1
    return p1
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;La/o/a/g;IZ)Landroid/view/View;
    .locals 7

    .line 55
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 56
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p4, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->h:Z

    if-nez p4, :cond_1

    return-object v1

    :cond_1
    const p4, 0x7fffffff

    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 59
    invoke-virtual {p2}, La/o/a/g;->g()I

    move-result p1

    invoke-virtual {p2}, La/o/a/g;->h()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p2}, La/o/a/g;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :goto_0
    const v2, 0x800005

    const v3, 0x800003

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p3, v3, :cond_3

    .line 61
    iget-boolean v6, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->g:Z

    if-eqz v6, :cond_4

    :cond_3
    if-ne p3, v2, :cond_5

    iget-boolean v6, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->g:Z

    if-eqz v6, :cond_5

    :cond_4
    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v5

    :goto_1
    if-ne p3, v3, :cond_6

    .line 62
    iget-boolean v3, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->g:Z

    if-nez v3, :cond_8

    :cond_6
    if-ne p3, v2, :cond_7

    iget-boolean p3, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->g:Z

    if-nez p3, :cond_7

    goto :goto_2

    :cond_7
    move v4, v5

    .line 63
    :cond_8
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result p3

    if-ge v5, p3, :cond_e

    .line 64
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object p3

    if-eqz v6, :cond_a

    .line 65
    iget-boolean v2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->k:Z

    if-nez v2, :cond_9

    .line 66
    invoke-virtual {p2, p3}, La/o/a/g;->d(Landroid/view/View;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_3

    .line 67
    :cond_9
    invoke-virtual {p2}, La/o/a/g;->g()I

    move-result v2

    .line 68
    invoke-virtual {p2, p3}, La/o/a/g;->d(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 69
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_c

    .line 70
    iget-boolean v2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->k:Z

    if-nez v2, :cond_b

    .line 71
    invoke-virtual {p2, p3}, La/o/a/g;->a(Landroid/view/View;)I

    move-result v2

    .line 72
    invoke-virtual {p2}, La/o/a/g;->a()I

    move-result v3

    sub-int/2addr v2, v3

    .line 73
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_3

    .line 74
    :cond_b
    invoke-virtual {p2}, La/o/a/g;->b()I

    move-result v2

    .line 75
    invoke-virtual {p2, p3}, La/o/a/g;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 76
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_3

    .line 77
    :cond_c
    invoke-virtual {p2, p3}, La/o/a/g;->d(Landroid/view/View;)I

    move-result v2

    .line 78
    invoke-virtual {p2, p3}, La/o/a/g;->b(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v2, p1

    .line 79
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    :goto_3
    if-ge v2, p4, :cond_d

    move-object v1, p3

    move p4, v2

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_e
    :goto_4
    return-object v1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Landroid/view/View;
    .locals 4

    .line 12
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    const v2, 0x800003

    if-eq v0, v1, :cond_3

    const/16 v1, 0x50

    const v3, 0x800005

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;La/o/a/g;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;La/o/a/g;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;La/o/a/g;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;La/o/a/g;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;La/o/a/g;IZ)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;La/o/a/g;IZ)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    .line 20
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result p2

    iput p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->i:I

    goto :goto_1

    :cond_6
    const/4 p2, -0x1

    .line 21
    iput p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->i:I

    :goto_1
    return-object p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .locals 1

    .line 34
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$b;-><init>(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;Landroid/content/Context;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(F)V
    .locals 1

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->m:I

    .line 39
    iput p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->n:F

    return-void
.end method

.method public final a(I)V
    .locals 3

    if-nez p1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->q:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;

    if-eqz v0, :cond_1

    .line 90
    iget-boolean v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->j:Z

    if-eqz v1, :cond_1

    .line 91
    iget v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 92
    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;->onSnap(I)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->d()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 94
    :goto_1
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->j:Z

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->s:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 6
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const v1, 0x800003

    if-eq v0, v1, :cond_1

    const v1, 0x800005

    if-ne v0, v1, :cond_3

    .line 7
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, La/g/f/c;->b(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->g:Z

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->s:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 9
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_1

    .line 10
    :cond_4
    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    :goto_1
    invoke-super {p0, p1}, La/o/a/k;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public a(Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->q:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->h:Z

    return-void
.end method

.method public final a(IZ)Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 41
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->c(I)V

    .line 44
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return v0

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(I)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 47
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    aget v1, p1, v1

    aget p1, p1, v0

    invoke-virtual {p2, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return v0

    :cond_1
    return v1
.end method

.method public final a(Landroidx/recyclerview/widget/LinearLayoutManager;)Z
    .locals 4

    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->R()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const v3, 0x800003

    if-eq v0, v3, :cond_3

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const v3, 0x800005

    if-eq v0, v3, :cond_3

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->R()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const/16 v3, 0x30

    if-eq v0, v3, :cond_3

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->R()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const/16 v3, 0x50

    if-ne v0, v3, :cond_5

    .line 84
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->J()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->j()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 85
    :cond_5
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const/16 v3, 0x11

    if-ne v0, v3, :cond_8

    .line 86
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->G()I

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->J()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->j()I

    move-result p1

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1

    .line 88
    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->G()I

    move-result p1

    if-nez p1, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4

    .line 22
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 23
    invoke-super {p0, p1, p2}, La/o/a/f;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 24
    instance-of v1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_1

    return-object v0

    .line 25
    :cond_1
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 27
    iget-boolean v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const v3, 0x800005

    if-eq v1, v3, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->g:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const v3, 0x800003

    if-ne v1, v3, :cond_4

    .line 28
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->b(Landroid/view/View;La/o/a/g;)I

    move-result p1

    aput p1, v0, v2

    goto :goto_0

    .line 29
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->c(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroid/view/View;La/o/a/g;)I

    move-result p1

    aput p1, v0, v2

    goto :goto_0

    .line 30
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31
    iget v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f:I

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    .line 32
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->b(Landroid/view/View;La/o/a/g;)I

    move-result p1

    aput p1, v0, v3

    goto :goto_0

    .line 33
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->d(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)La/o/a/g;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroid/view/View;La/o/a/g;)I

    move-result p1

    aput p1, v0, v3

    :cond_7
    :goto_0
    return-object v0
.end method

.method public final b(Landroid/view/View;La/o/a/g;)I
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->k:Z

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p2, p1}, La/o/a/g;->d(Landroid/view/View;)I

    move-result p1

    .line 15
    invoke-virtual {p2}, La/o/a/g;->g()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_1

    .line 16
    invoke-virtual {p2}, La/o/a/g;->g()I

    move-result p2

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p2, p1}, La/o/a/g;->d(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, La/o/a/g;->g()I

    move-result p2

    :goto_0
    sub-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b(F)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->l:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->k:Z

    return-void
.end method

.method public b(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(IZ)Z

    move-result p1

    return p1
.end method

.method public b(II)[I
    .locals 11

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->o:La/o/a/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->p:La/o/a/g;

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->n:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    new-instance v10, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v10, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->f()I

    move-result v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v8, v9

    move-object v1, v10

    move v4, p1

    move v5, p2

    move v6, v8

    move v7, v9

    .line 6
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v10}, Landroid/widget/Scroller;->getFinalX()I

    move-result p2

    aput p2, v0, p1

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v10}, Landroid/widget/Scroller;->getFinalY()I

    move-result p2

    aput p2, v0, p1

    return-object v0

    .line 9
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, La/o/a/k;->b(II)[I

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 8
    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_3

    aget v2, v0, v3

    if-eqz v2, :cond_4

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    aget v1, v0, v1

    aget v0, v0, v3

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->j(II)V

    :cond_4
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->q:Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;

    invoke-interface {v1, v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper$SnapListener;->onSnap(I)V

    :cond_2
    return-void
.end method

.method public e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final f()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->n:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    const v1, 0x7fffffff

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->o:La/o/a/g;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->n:F

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->p:La/o/a/g;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->n:F

    goto :goto_0

    :cond_1
    return v1

    .line 6
    :cond_2
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/GravitySnapHelper;->m:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    return v0

    :cond_3
    return v1
.end method
