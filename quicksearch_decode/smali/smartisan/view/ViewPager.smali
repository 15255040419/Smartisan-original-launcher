.class public Lsmartisan/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/view/ViewPager$g;,
        Lsmartisan/view/ViewPager$LayoutParams;,
        Lsmartisan/view/ViewPager$f;,
        Lsmartisan/view/ViewPager$e;,
        Lsmartisan/view/ViewPager$SavedState;,
        Lsmartisan/view/ViewPager$Decor;,
        Lsmartisan/view/ViewPager$OnAdapterChangeListener;,
        Lsmartisan/view/ViewPager$PageTransformer;,
        Lsmartisan/view/ViewPager$OnPageChangeListener;,
        Lsmartisan/view/ViewPager$d;
    }
.end annotation


# static fields
.field public static final c0:[I

.field public static final d0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lsmartisan/view/ViewPager$d;",
            ">;"
        }
    .end annotation
.end field

.field public static final e0:Landroid/view/animation/Interpolator;

.field public static final f0:Lsmartisan/view/ViewPager$g;


# instance fields
.field public A:I

.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:I

.field public G:Landroid/view/VelocityTracker;

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:Lsmartisan/view/ViewPager$OnPageChangeListener;

.field public R:Lsmartisan/view/ViewPager$OnPageChangeListener;

.field public S:Lsmartisan/view/ViewPager$OnAdapterChangeListener;

.field public T:Lsmartisan/view/ViewPager$PageTransformer;

.field public U:Ljava/lang/reflect/Method;

.field public V:I

.field public W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public a:I

.field public final a0:Ljava/lang/Runnable;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsmartisan/view/ViewPager$d;",
            ">;"
        }
    .end annotation
.end field

.field public b0:I

.field public final c:Lsmartisan/view/ViewPager$d;

.field public final d:Landroid/graphics/Rect;

.field public e:Li/s/a;

.field public f:I

.field public g:I

.field public h:Landroid/os/Parcelable;

.field public i:Ljava/lang/ClassLoader;

.field public j:Landroid/widget/Scroller;

.field public k:Lsmartisan/view/ViewPager$f;

.field public l:I

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:I

.field public o:I

.field public p:F

.field public q:F

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 1
    sput-object v0, Lsmartisan/view/ViewPager;->c0:[I

    .line 2
    new-instance v0, Lsmartisan/view/ViewPager$a;

    invoke-direct {v0}, Lsmartisan/view/ViewPager$a;-><init>()V

    sput-object v0, Lsmartisan/view/ViewPager;->d0:Ljava/util/Comparator;

    .line 3
    new-instance v0, Lsmartisan/view/ViewPager$b;

    invoke-direct {v0}, Lsmartisan/view/ViewPager$b;-><init>()V

    sput-object v0, Lsmartisan/view/ViewPager;->e0:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Lsmartisan/view/ViewPager$g;

    invoke-direct {v0}, Lsmartisan/view/ViewPager$g;-><init>()V

    sput-object v0, Lsmartisan/view/ViewPager;->f0:Lsmartisan/view/ViewPager$g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lsmartisan/view/ViewPager$d;

    invoke-direct {p1}, Lsmartisan/view/ViewPager$d;-><init>()V

    iput-object p1, p0, Lsmartisan/view/ViewPager;->c:Lsmartisan/view/ViewPager$d;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lsmartisan/view/ViewPager;->d:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lsmartisan/view/ViewPager;->g:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lsmartisan/view/ViewPager;->h:Landroid/os/Parcelable;

    .line 7
    iput-object v0, p0, Lsmartisan/view/ViewPager;->i:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 8
    iput v0, p0, Lsmartisan/view/ViewPager;->p:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 9
    iput v0, p0, Lsmartisan/view/ViewPager;->q:F

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lsmartisan/view/ViewPager;->v:I

    .line 11
    iput p1, p0, Lsmartisan/view/ViewPager;->F:I

    .line 12
    iput-boolean v0, p0, Lsmartisan/view/ViewPager;->N:Z

    .line 13
    new-instance p1, Lsmartisan/view/ViewPager$c;

    invoke-direct {p1, p0}, Lsmartisan/view/ViewPager$c;-><init>(Lsmartisan/view/ViewPager;)V

    iput-object p1, p0, Lsmartisan/view/ViewPager;->a0:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lsmartisan/view/ViewPager;->b0:I

    .line 15
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    .line 18
    new-instance p1, Lsmartisan/view/ViewPager$d;

    invoke-direct {p1}, Lsmartisan/view/ViewPager$d;-><init>()V

    iput-object p1, p0, Lsmartisan/view/ViewPager;->c:Lsmartisan/view/ViewPager$d;

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lsmartisan/view/ViewPager;->d:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lsmartisan/view/ViewPager;->g:I

    const/4 p2, 0x0

    .line 21
    iput-object p2, p0, Lsmartisan/view/ViewPager;->h:Landroid/os/Parcelable;

    .line 22
    iput-object p2, p0, Lsmartisan/view/ViewPager;->i:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 23
    iput p2, p0, Lsmartisan/view/ViewPager;->p:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 24
    iput p2, p0, Lsmartisan/view/ViewPager;->q:F

    const/4 p2, 0x1

    .line 25
    iput p2, p0, Lsmartisan/view/ViewPager;->v:I

    .line 26
    iput p1, p0, Lsmartisan/view/ViewPager;->F:I

    .line 27
    iput-boolean p2, p0, Lsmartisan/view/ViewPager;->N:Z

    .line 28
    new-instance p1, Lsmartisan/view/ViewPager$c;

    invoke-direct {p1, p0}, Lsmartisan/view/ViewPager$c;-><init>(Lsmartisan/view/ViewPager;)V

    iput-object p1, p0, Lsmartisan/view/ViewPager;->a0:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lsmartisan/view/ViewPager;->b0:I

    .line 30
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->d()V

    return-void
.end method

.method public static synthetic a(Lsmartisan/view/ViewPager;)Li/s/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    return-object p0
.end method

.method public static synthetic a(Lsmartisan/view/ViewPager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method public static synthetic b(Lsmartisan/view/ViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/view/ViewPager;->f:I

    return p0
.end method

.method private getClientWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static synthetic j()[I
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/view/ViewPager;->c0:[I

    return-object v0
.end method

.method private setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/view/ViewPager;->b0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lsmartisan/view/ViewPager;->b0:I

    .line 3
    iget-object v0, p0, Lsmartisan/view/ViewPager;->T:Lsmartisan/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lsmartisan/view/ViewPager;->b(Z)V

    .line 5
    :cond_2
    iget-object v0, p0, Lsmartisan/view/ViewPager;->Q:Lsmartisan/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p1}, Lsmartisan/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/view/ViewPager;->t:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lsmartisan/view/ViewPager;->t:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public final a(IFII)I
    .locals 1

    .line 203
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lsmartisan/view/ViewPager;->J:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lsmartisan/view/ViewPager;->H:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 204
    :cond_1
    iget p3, p0, Lsmartisan/view/ViewPager;->f:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    int-to-float p1, p1

    add-float/2addr p1, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    .line 205
    :goto_1
    iget-object p2, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 206
    iget-object p2, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsmartisan/view/ViewPager$d;

    .line 207
    iget-object p3, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsmartisan/view/ViewPager$d;

    .line 208
    iget p2, p2, Lsmartisan/view/ViewPager$d;->b:I

    iget p3, p3, Lsmartisan/view/ViewPager$d;->b:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 260
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 261
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 262
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 263
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 264
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 265
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 266
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 267
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 268
    check-cast p2, Landroid/view/ViewGroup;

    .line 269
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 270
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 271
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 272
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 273
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public a(II)Lsmartisan/view/ViewPager$d;
    .locals 2

    .line 64
    new-instance v0, Lsmartisan/view/ViewPager$d;

    invoke-direct {v0}, Lsmartisan/view/ViewPager$d;-><init>()V

    .line 65
    iput p1, v0, Lsmartisan/view/ViewPager$d;->b:I

    .line 66
    iget-object v1, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v1, p0, p1}, Li/s/a;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lsmartisan/view/ViewPager$d;->a:Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v1, p1}, Li/s/a;->a(I)F

    move-result p1

    iput p1, v0, Lsmartisan/view/ViewPager$d;->d:F

    if-ltz p2, :cond_1

    .line 68
    iget-object p1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    iget-object p1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public a(Landroid/view/View;)Lsmartisan/view/ViewPager$d;
    .locals 1

    .line 139
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 140
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 142
    :cond_2
    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->b(Landroid/view/View;)Lsmartisan/view/ViewPager$d;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 10

    .line 71
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v0}, Li/s/a;->a()I

    move-result v0

    .line 72
    iput v0, p0, Lsmartisan/view/ViewPager;->a:I

    .line 73
    iget-object v1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lsmartisan/view/ViewPager;->v:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 75
    :goto_0
    iget v2, p0, Lsmartisan/view/ViewPager;->f:I

    move v5, v1

    move v6, v2

    move v1, v4

    move v2, v1

    .line 76
    :goto_1
    iget-object v7, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 77
    iget-object v7, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsmartisan/view/ViewPager$d;

    .line 78
    iget-object v8, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget-object v9, v7, Lsmartisan/view/ViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Li/s/a;->a(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 79
    iget-object v5, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_2

    .line 80
    iget-object v2, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v2, p0}, Li/s/a;->b(Landroid/view/ViewGroup;)V

    move v2, v3

    .line 81
    :cond_2
    iget-object v5, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget v8, v7, Lsmartisan/view/ViewPager$d;->b:I

    iget-object v9, v7, Lsmartisan/view/ViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Li/s/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 82
    iget v5, p0, Lsmartisan/view/ViewPager;->f:I

    iget v7, v7, Lsmartisan/view/ViewPager$d;->b:I

    if-ne v5, v7, :cond_3

    add-int/lit8 v6, v0, -0x1

    .line 83
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    :cond_3
    :goto_2
    move v5, v3

    goto :goto_3

    .line 84
    :cond_4
    iget v9, v7, Lsmartisan/view/ViewPager$d;->b:I

    if-eq v9, v8, :cond_6

    .line 85
    iget v5, p0, Lsmartisan/view/ViewPager;->f:I

    if-ne v9, v5, :cond_5

    move v6, v8

    .line 86
    :cond_5
    iput v8, v7, Lsmartisan/view/ViewPager$d;->b:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v1, v3

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 87
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v0, p0}, Li/s/a;->a(Landroid/view/ViewGroup;)V

    .line 88
    :cond_8
    iget-object v0, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    sget-object v1, Lsmartisan/view/ViewPager;->d0:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_b

    .line 89
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_a

    .line 90
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lsmartisan/view/ViewPager$LayoutParams;

    .line 92
    iget-boolean v5, v2, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-nez v5, :cond_9

    const/4 v5, 0x0

    .line 93
    iput v5, v2, Lsmartisan/view/ViewPager$LayoutParams;->c:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 94
    :cond_a
    invoke-virtual {p0, v6, v4, v3}, Lsmartisan/view/ViewPager;->a(IZZ)V

    .line 95
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_b
    return-void
.end method

.method public a(IFI)V
    .locals 12

    .line 158
    iget v0, p0, Lsmartisan/view/ViewPager;->P:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 159
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 160
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 161
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 162
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 163
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v4

    move v4, v3

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_5

    .line 164
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 165
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lsmartisan/view/ViewPager$LayoutParams;

    .line 166
    iget-boolean v10, v9, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 167
    :cond_0
    iget v9, v9, Lsmartisan/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v4

    goto :goto_2

    :cond_1
    sub-int v9, v5, v7

    .line 168
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 169
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_2

    .line 171
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v4

    move v4, v11

    :goto_2
    add-int/2addr v4, v0

    .line 172
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    if-eqz v4, :cond_4

    .line 173
    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v4, v9

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lsmartisan/view/ViewPager;->Q:Lsmartisan/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_6

    .line 175
    invoke-interface {v0, p1, p2, p3}, Lsmartisan/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 176
    :cond_6
    iget-object v0, p0, Lsmartisan/view/ViewPager;->R:Lsmartisan/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 177
    invoke-interface {v0, p1, p2, p3}, Lsmartisan/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 178
    :cond_7
    iget-object p1, p0, Lsmartisan/view/ViewPager;->T:Lsmartisan/view/ViewPager$PageTransformer;

    if-eqz p1, :cond_9

    .line 179
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    .line 180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_9

    .line 181
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 182
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lsmartisan/view/ViewPager$LayoutParams;

    .line 183
    iget-boolean v0, v0, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-eqz v0, :cond_8

    goto :goto_5

    .line 184
    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 185
    iget-object v3, p0, Lsmartisan/view/ViewPager;->T:Lsmartisan/view/ViewPager$PageTransformer;

    invoke-interface {v3, p3, v0}, Lsmartisan/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 186
    :cond_9
    iput-boolean v2, p0, Lsmartisan/view/ViewPager;->O:Z

    return-void
.end method

.method public a(III)V
    .locals 8

    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0, v1}, Lsmartisan/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 48
    invoke-virtual {p0, v1}, Lsmartisan/view/ViewPager;->a(Z)V

    .line 49
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->g()V

    .line 50
    invoke-direct {p0, v1}, Lsmartisan/view/ViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 51
    invoke-direct {p0, p1}, Lsmartisan/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 52
    invoke-direct {p0, p1}, Lsmartisan/view/ViewPager;->setScrollState(I)V

    .line 53
    invoke-direct {p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result p1

    .line 54
    div-int/lit8 p2, p1, 0x2

    .line 55
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 56
    invoke-virtual {p0, v0}, Lsmartisan/view/ViewPager;->a(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    .line 57
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 58
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 59
    :cond_2
    iget-object p2, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget p3, p0, Lsmartisan/view/ViewPager;->f:I

    invoke-virtual {p2, p3}, Li/s/a;->a(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 60
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lsmartisan/view/ViewPager;->l:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x258

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 62
    iget-object v2, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final a(IIII)V
    .locals 6

    if-lez p2, :cond_0

    .line 143
    iget-object v0, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 145
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 146
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v0

    mul-float/2addr p3, p2

    float-to-int v1, p3

    .line 147
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 148
    iget-object p2, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    .line 149
    iget-object p2, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 150
    iget p2, p0, Lsmartisan/view/ViewPager;->f:I

    invoke-virtual {p0, p2}, Lsmartisan/view/ViewPager;->b(I)Lsmartisan/view/ViewPager$d;

    move-result-object p2

    .line 151
    iget-object v0, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget p2, p2, Lsmartisan/view/ViewPager$d;->e:F

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int v3, p2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 152
    :cond_0
    iget p2, p0, Lsmartisan/view/ViewPager;->f:I

    invoke-virtual {p0, p2}, Lsmartisan/view/ViewPager;->b(I)Lsmartisan/view/ViewPager$d;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 153
    iget p2, p2, Lsmartisan/view/ViewPager$d;->e:F

    iget p3, p0, Lsmartisan/view/ViewPager;->q:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 154
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 155
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x0

    .line 156
    invoke-virtual {p0, p2}, Lsmartisan/view/ViewPager;->a(Z)V

    .line 157
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lsmartisan/view/ViewPager;->u:Z

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lsmartisan/view/ViewPager;->a(IZZ)V

    return-void
.end method

.method public final a(IZIZ)V
    .locals 5

    .line 26
    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->b(I)Lsmartisan/view/ViewPager$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 28
    iget v3, p0, Lsmartisan/view/ViewPager;->p:F

    iget v0, v0, Lsmartisan/view/ViewPager$d;->e:F

    iget v4, p0, Lsmartisan/view/ViewPager;->q:F

    .line 29
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 30
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 31
    invoke-virtual {p0, v0, v1, p3}, Lsmartisan/view/ViewPager;->a(III)V

    if-eqz p4, :cond_1

    .line 32
    iget-object p2, p0, Lsmartisan/view/ViewPager;->Q:Lsmartisan/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_1

    .line 33
    invoke-interface {p2, p1}, Lsmartisan/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    if-eqz p4, :cond_5

    .line 34
    iget-object p2, p0, Lsmartisan/view/ViewPager;->R:Lsmartisan/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_5

    .line 35
    invoke-interface {p2, p1}, Lsmartisan/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 36
    iget-object p2, p0, Lsmartisan/view/ViewPager;->Q:Lsmartisan/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_3

    .line 37
    invoke-interface {p2, p1}, Lsmartisan/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    if-eqz p4, :cond_4

    .line 38
    iget-object p2, p0, Lsmartisan/view/ViewPager;->R:Lsmartisan/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_4

    .line 39
    invoke-interface {p2, p1}, Lsmartisan/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 40
    :cond_4
    invoke-virtual {p0, v1}, Lsmartisan/view/ViewPager;->a(Z)V

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 42
    invoke-virtual {p0, v0}, Lsmartisan/view/ViewPager;->c(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lsmartisan/view/ViewPager;->a(IZZI)V

    return-void
.end method

.method public a(IZZI)V
    .locals 4

    .line 6
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Li/s/a;->a()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p3, :cond_1

    .line 7
    iget p3, p0, Lsmartisan/view/ViewPager;->f:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 8
    invoke-direct {p0, v1}, Lsmartisan/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v0}, Li/s/a;->a()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {p1}, Li/s/a;->a()I

    move-result p1

    sub-int/2addr p1, p3

    .line 11
    :cond_3
    :goto_0
    iget v0, p0, Lsmartisan/view/ViewPager;->v:I

    .line 12
    iget v2, p0, Lsmartisan/view/ViewPager;->f:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 13
    :goto_1
    iget-object v2, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 14
    iget-object v2, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/view/ViewPager$d;

    iput-boolean p3, v2, Lsmartisan/view/ViewPager$d;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_5
    iget v0, p0, Lsmartisan/view/ViewPager;->f:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v1

    .line 16
    :goto_2
    iget-boolean v0, p0, Lsmartisan/view/ViewPager;->N:Z

    if-eqz v0, :cond_9

    .line 17
    iput p1, p0, Lsmartisan/view/ViewPager;->f:I

    if-eqz p3, :cond_7

    .line 18
    iget-object p2, p0, Lsmartisan/view/ViewPager;->Q:Lsmartisan/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_7

    .line 19
    invoke-interface {p2, p1}, Lsmartisan/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_7
    if-eqz p3, :cond_8

    .line 20
    iget-object p2, p0, Lsmartisan/view/ViewPager;->R:Lsmartisan/view/ViewPager$OnPageChangeListener;

    if-eqz p2, :cond_8

    .line 21
    invoke-interface {p2, p1}, Lsmartisan/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 22
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_3

    .line 23
    :cond_9
    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->d(I)V

    .line 24
    invoke-virtual {p0, p1, p2, p4, p3}, Lsmartisan/view/ViewPager;->a(IZIZ)V

    :goto_3
    return-void

    .line 25
    :cond_a
    :goto_4
    invoke-direct {p0, v1}, Lsmartisan/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 211
    iget v2, p0, Lsmartisan/view/ViewPager;->F:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lsmartisan/view/ViewPager;->B:F

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lsmartisan/view/ViewPager;->F:I

    .line 214
    iget-object p1, p0, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final a(Lsmartisan/view/ViewPager$d;ILsmartisan/view/ViewPager$d;)V
    .locals 9

    .line 96
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v0}, Li/s/a;->a()I

    move-result v0

    .line 97
    invoke-direct {p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    iget v2, p0, Lsmartisan/view/ViewPager;->l:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p3, :cond_6

    .line 99
    iget v1, p3, Lsmartisan/view/ViewPager$d;->b:I

    .line 100
    iget v3, p1, Lsmartisan/view/ViewPager$d;->b:I

    if-ge v1, v3, :cond_3

    const/4 v3, 0x0

    .line 101
    iget v4, p3, Lsmartisan/view/ViewPager$d;->e:F

    iget p3, p3, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 102
    iget p3, p1, Lsmartisan/view/ViewPager$d;->b:I

    if-gt v1, p3, :cond_6

    iget-object p3, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v3, p3, :cond_6

    .line 103
    iget-object p3, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsmartisan/view/ViewPager$d;

    .line 104
    :goto_2
    iget v5, p3, Lsmartisan/view/ViewPager$d;->b:I

    if-le v1, v5, :cond_1

    iget-object v5, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 105
    iget-object p3, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsmartisan/view/ViewPager$d;

    goto :goto_2

    .line 106
    :cond_1
    :goto_3
    iget v5, p3, Lsmartisan/view/ViewPager$d;->b:I

    if-ge v1, v5, :cond_2

    .line 107
    iget-object v5, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v5, v1}, Li/s/a;->a(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 108
    :cond_2
    iput v4, p3, Lsmartisan/view/ViewPager$d;->e:F

    .line 109
    iget p3, p3, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr p3, v2

    add-float/2addr v4, p3

    goto :goto_1

    :cond_3
    if-le v1, v3, :cond_6

    .line 110
    iget-object v3, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 111
    iget p3, p3, Lsmartisan/view/ViewPager$d;->e:F

    add-int/lit8 v1, v1, -0x1

    .line 112
    :goto_4
    iget v4, p1, Lsmartisan/view/ViewPager$d;->b:I

    if-lt v1, v4, :cond_6

    if-ltz v3, :cond_6

    .line 113
    iget-object v4, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisan/view/ViewPager$d;

    .line 114
    :goto_5
    iget v5, v4, Lsmartisan/view/ViewPager$d;->b:I

    if-ge v1, v5, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 115
    iget-object v4, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisan/view/ViewPager$d;

    goto :goto_5

    .line 116
    :cond_4
    :goto_6
    iget v5, v4, Lsmartisan/view/ViewPager$d;->b:I

    if-le v1, v5, :cond_5

    .line 117
    iget-object v5, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v5, v1}, Li/s/a;->a(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 118
    :cond_5
    iget v5, v4, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    .line 119
    iput p3, v4, Lsmartisan/view/ViewPager$d;->e:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 120
    :cond_6
    iget-object p3, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 121
    iget v1, p1, Lsmartisan/view/ViewPager$d;->e:F

    .line 122
    iget v3, p1, Lsmartisan/view/ViewPager$d;->b:I

    add-int/lit8 v4, v3, -0x1

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    const v3, -0x800001

    .line 123
    :goto_7
    iput v3, p0, Lsmartisan/view/ViewPager;->p:F

    .line 124
    iget v3, p1, Lsmartisan/view/ViewPager$d;->b:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v0, :cond_8

    iget v3, p1, Lsmartisan/view/ViewPager$d;->e:F

    iget v6, p1, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v3, v6

    sub-float/2addr v3, v5

    goto :goto_8

    :cond_8
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v3, p0, Lsmartisan/view/ViewPager;->q:F

    add-int/lit8 v3, p2, -0x1

    :goto_9
    if-ltz v3, :cond_b

    .line 125
    iget-object v6, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisan/view/ViewPager$d;

    .line 126
    :goto_a
    iget v7, v6, Lsmartisan/view/ViewPager$d;->b:I

    if-le v4, v7, :cond_9

    .line 127
    iget-object v7, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v4}, Li/s/a;->a(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v1, v4

    move v4, v8

    goto :goto_a

    .line 128
    :cond_9
    iget v8, v6, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v8, v2

    sub-float/2addr v1, v8

    .line 129
    iput v1, v6, Lsmartisan/view/ViewPager$d;->e:F

    if-nez v7, :cond_a

    .line 130
    iput v1, p0, Lsmartisan/view/ViewPager;->p:F

    :cond_a
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 131
    :cond_b
    iget v1, p1, Lsmartisan/view/ViewPager$d;->e:F

    iget v3, p1, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 132
    iget p1, p1, Lsmartisan/view/ViewPager$d;->b:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 133
    iget-object v3, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsmartisan/view/ViewPager$d;

    .line 134
    :goto_c
    iget v4, v3, Lsmartisan/view/ViewPager$d;->b:I

    if-ge p1, v4, :cond_c

    .line 135
    iget-object v4, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, p1}, Li/s/a;->a(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v1, p1

    move p1, v6

    goto :goto_c

    :cond_c
    if-ne v4, v0, :cond_d

    .line 136
    iget v4, v3, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v4, v1

    sub-float/2addr v4, v5

    iput v4, p0, Lsmartisan/view/ViewPager;->q:F

    .line 137
    :cond_d
    iput v1, v3, Lsmartisan/view/ViewPager$d;->e:F

    .line 138
    iget v3, v3, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    return-void
.end method

.method public final a(Z)V
    .locals 7

    .line 187
    iget v0, p0, Lsmartisan/view/ViewPager;->b0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 188
    invoke-direct {p0, v2}, Lsmartisan/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 189
    iget-object v3, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 190
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 192
    iget-object v5, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 193
    iget-object v6, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 194
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 195
    :cond_2
    iput-boolean v2, p0, Lsmartisan/view/ViewPager;->u:Z

    move v3, v0

    move v0, v2

    .line 196
    :goto_1
    iget-object v4, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 197
    iget-object v4, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisan/view/ViewPager$d;

    .line 198
    iget-boolean v5, v4, Lsmartisan/view/ViewPager$d;->c:Z

    if-eqz v5, :cond_3

    .line 199
    iput-boolean v2, v4, Lsmartisan/view/ViewPager$d;->c:Z

    move v3, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    .line 200
    iget-object p1, p0, Lsmartisan/view/ViewPager;->a0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 201
    :cond_5
    iget-object p1, p0, Lsmartisan/view/ViewPager;->a0:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final a(FF)Z
    .locals 3

    .line 202
    iget v0, p0, Lsmartisan/view/ViewPager;->z:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Lsmartisan/view/ViewPager;->z:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(I)Z
    .locals 6

    .line 237
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    move v4, v1

    goto :goto_1

    .line 239
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_1
    if-nez v4, :cond_4

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 243
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 245
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 247
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v3, v0

    .line 248
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    if-ne p1, v5, :cond_6

    .line 249
    iget-object v1, p0, Lsmartisan/view/ViewPager;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0}, Lsmartisan/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 250
    iget-object v2, p0, Lsmartisan/view/ViewPager;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lsmartisan/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_5

    if-lt v1, v2, :cond_5

    .line 251
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->e()Z

    move-result v0

    goto :goto_4

    .line 252
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_6

    :cond_6
    if-ne p1, v4, :cond_c

    .line 253
    iget-object v1, p0, Lsmartisan/view/ViewPager;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0}, Lsmartisan/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 254
    iget-object v2, p0, Lsmartisan/view/ViewPager;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lsmartisan/view/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_7

    if-gt v1, v2, :cond_7

    .line 255
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->f()Z

    move-result v0

    goto :goto_4

    .line 256
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_4

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 257
    :cond_a
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->f()Z

    move-result v2

    goto :goto_6

    .line 258
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->e()Z

    move-result v2

    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    .line 259
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 229
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 231
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 232
    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 234
    invoke-virtual {p0, v0}, Lsmartisan/view/ViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    .line 235
    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 236
    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->a(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public a(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 216
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 217
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 220
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 221
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 222
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 223
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 224
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 225
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 226
    invoke-virtual/range {v6 .. v11}, Lsmartisan/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 227
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {p0, v3}, Lsmartisan/view/ViewPager;->b(Landroid/view/View;)Lsmartisan/view/ViewPager$d;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    iget v4, v4, Lsmartisan/view/ViewPager$d;->b:I

    iget v5, p0, Lsmartisan/view/ViewPager;->f:I

    if-ne v4, v5, :cond_0

    .line 8
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lsmartisan/view/ViewPager;->b(Landroid/view/View;)Lsmartisan/view/ViewPager$d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget v2, v2, Lsmartisan/view/ViewPager$d;->b:I

    iget v3, p0, Lsmartisan/view/ViewPager;->f:I

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lsmartisan/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lsmartisan/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3
    :cond_0
    move-object v0, p3

    check-cast v0, Lsmartisan/view/ViewPager$LayoutParams;

    .line 4
    iget-boolean v1, v0, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    instance-of v2, p1, Lsmartisan/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    .line 5
    iget-boolean v1, p0, Lsmartisan/view/ViewPager;->s:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v1, v0, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lsmartisan/view/ViewPager$LayoutParams;->d:Z

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public b(I)Lsmartisan/view/ViewPager$d;
    .locals 3

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/view/ViewPager$d;

    .line 7
    iget v2, v1, Lsmartisan/view/ViewPager$d;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/view/View;)Lsmartisan/view/ViewPager$d;
    .locals 4

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/view/ViewPager$d;

    .line 4
    iget-object v2, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget-object v3, v1, Lsmartisan/view/ViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Li/s/a;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lsmartisan/view/ViewPager;->w:Z

    .line 30
    iput-boolean v0, p0, Lsmartisan/view/ViewPager;->x:Z

    .line 31
    iget-object v0, p0, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 6

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    move v3, v1

    .line 9
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(F)Z
    .locals 15

    move-object v10, p0

    move/from16 v0, p1

    .line 10
    iget v1, v10, Lsmartisan/view/ViewPager;->B:F

    sub-float/2addr v1, v0

    .line 11
    iput v0, v10, Lsmartisan/view/ViewPager;->B:F

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float v11, v0, v1

    .line 13
    invoke-direct {p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 14
    iget v2, v10, Lsmartisan/view/ViewPager;->p:F

    mul-float/2addr v2, v0

    .line 15
    iget v3, v10, Lsmartisan/view/ViewPager;->q:F

    mul-float/2addr v3, v0

    .line 16
    iget-object v4, v10, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisan/view/ViewPager$d;

    .line 17
    iget-object v5, v10, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsmartisan/view/ViewPager$d;

    .line 18
    iget v6, v4, Lsmartisan/view/ViewPager$d;->b:I

    if-eqz v6, :cond_0

    .line 19
    iget v2, v4, Lsmartisan/view/ViewPager$d;->e:F

    mul-float/2addr v2, v0

    move v4, v12

    goto :goto_0

    :cond_0
    move v4, v13

    .line 20
    :goto_0
    iget v6, v5, Lsmartisan/view/ViewPager$d;->b:I

    iget-object v7, v10, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v7}, Li/s/a;->a()I

    move-result v7

    sub-int/2addr v7, v13

    if-eq v6, v7, :cond_1

    .line 21
    iget v3, v5, Lsmartisan/view/ViewPager$d;->e:F

    mul-float/2addr v3, v0

    move v0, v12

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    cmpg-float v5, v11, v2

    if-gez v5, :cond_2

    if-eqz v4, :cond_3

    float-to-int v1, v1

    const/4 v3, 0x0

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    float-to-int v6, v2

    const/4 v7, 0x0

    iget v8, v10, Lsmartisan/view/ViewPager;->L:I

    const/4 v9, 0x0

    const/4 v14, 0x1

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v14

    .line 23
    invoke-virtual/range {v0 .. v9}, Lsmartisan/view/ViewPager;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_2

    :cond_2
    cmpl-float v2, v11, v3

    if-lez v2, :cond_3

    if-eqz v0, :cond_3

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    float-to-int v6, v3

    const/4 v7, 0x0

    iget v8, v10, Lsmartisan/view/ViewPager;->L:I

    const/4 v9, 0x0

    const/4 v14, 0x1

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v14

    .line 25
    invoke-virtual/range {v0 .. v9}, Lsmartisan/view/ViewPager;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_2

    :cond_3
    move v13, v12

    :goto_2
    if-nez v13, :cond_4

    .line 26
    iget v0, v10, Lsmartisan/view/ViewPager;->B:F

    float-to-int v1, v11

    int-to-float v2, v1

    sub-float/2addr v11, v2

    add-float/2addr v0, v11

    iput v0, v10, Lsmartisan/view/ViewPager;->B:F

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 28
    invoke-virtual {p0, v1}, Lsmartisan/view/ViewPager;->c(I)Z

    :cond_4
    return v12
.end method

.method public final c()Lsmartisan/view/ViewPager$d;
    .locals 12

    .line 17
    invoke-direct {p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 19
    iget v3, p0, Lsmartisan/view/ViewPager;->l:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v1

    move v9, v8

    move v1, v4

    move v7, v5

    move v5, v6

    .line 20
    :goto_2
    iget-object v10, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_7

    .line 21
    iget-object v10, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsmartisan/view/ViewPager$d;

    if-nez v5, :cond_2

    .line 22
    iget v11, v10, Lsmartisan/view/ViewPager$d;->b:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 23
    iget-object v10, p0, Lsmartisan/view/ViewPager;->c:Lsmartisan/view/ViewPager$d;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    .line 24
    iput v8, v10, Lsmartisan/view/ViewPager$d;->e:F

    .line 25
    iput v7, v10, Lsmartisan/view/ViewPager$d;->b:I

    .line 26
    iget-object v7, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget v8, v10, Lsmartisan/view/ViewPager$d;->b:I

    invoke-virtual {v7, v8}, Li/s/a;->a(I)F

    move-result v7

    iput v7, v10, Lsmartisan/view/ViewPager$d;->d:F

    add-int/lit8 v1, v1, -0x1

    .line 27
    :cond_2
    iget v8, v10, Lsmartisan/view/ViewPager$d;->e:F

    .line 28
    iget v7, v10, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    if-nez v5, :cond_4

    cmpl-float v5, v2, v8

    if-ltz v5, :cond_3

    goto :goto_3

    :cond_3
    return-object v3

    :cond_4
    :goto_3
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_6

    .line 29
    iget-object v3, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_5

    goto :goto_4

    .line 30
    :cond_5
    iget v7, v10, Lsmartisan/view/ViewPager$d;->b:I

    .line 31
    iget v9, v10, Lsmartisan/view/ViewPager$d;->d:F

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move-object v3, v10

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v3
.end method

.method public final c(Z)V
    .locals 1

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public final c(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lsmartisan/view/ViewPager;->O:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v2, p1, v2}, Lsmartisan/view/ViewPager;->a(IFI)V

    .line 4
    iget-boolean p1, p0, Lsmartisan/view/ViewPager;->O:Z

    if-eqz p1, :cond_0

    return v2

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->c()Lsmartisan/view/ViewPager$d;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result v3

    .line 8
    iget v4, p0, Lsmartisan/view/ViewPager;->l:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 9
    iget v6, v0, Lsmartisan/view/ViewPager$d;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 10
    iget v3, v0, Lsmartisan/view/ViewPager$d;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 11
    iput-boolean v2, p0, Lsmartisan/view/ViewPager;->O:Z

    .line 12
    invoke-virtual {p0, v6, p1, v0}, Lsmartisan/view/ViewPager;->a(IFI)V

    .line 13
    iget-boolean p1, p0, Lsmartisan/view/ViewPager;->O:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 4
    iget v0, p0, Lsmartisan/view/ViewPager;->p:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 5
    iget v0, p0, Lsmartisan/view/ViewPager;->q:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lsmartisan/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 4
    iget-object v2, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 5
    iget-object v3, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 7
    invoke-virtual {p0, v2}, Lsmartisan/view/ViewPager;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lsmartisan/view/ViewPager;->a(Z)V

    return-void
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lsmartisan/view/ViewPager;->e0:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    .line 6
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 8
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lsmartisan/view/ViewPager;->A:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 9
    iput v3, p0, Lsmartisan/view/ViewPager;->H:I

    .line 10
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lsmartisan/view/ViewPager;->I:I

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 11
    iput v2, p0, Lsmartisan/view/ViewPager;->J:I

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 12
    iput v2, p0, Lsmartisan/view/ViewPager;->K:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 13
    iput v1, p0, Lsmartisan/view/ViewPager;->y:I

    .line 14
    new-instance v1, Lsmartisan/view/ViewPager$e;

    invoke-direct {v1, p0}, Lsmartisan/view/ViewPager$e;-><init>(Lsmartisan/view/ViewPager;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 17
    iget v2, v0, Lsmartisan/view/ViewPager;->f:I

    if-eq v2, v1, :cond_1

    if-ge v2, v1, :cond_0

    const/16 v2, 0x42

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    .line 18
    :goto_0
    iget v4, v0, Lsmartisan/view/ViewPager;->f:I

    invoke-virtual {v0, v4}, Lsmartisan/view/ViewPager;->b(I)Lsmartisan/view/ViewPager$d;

    move-result-object v4

    .line 19
    iput v1, v0, Lsmartisan/view/ViewPager;->f:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 20
    :goto_1
    iget-object v1, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    if-nez v1, :cond_2

    .line 21
    invoke-virtual/range {p0 .. p0}, Lsmartisan/view/ViewPager;->i()V

    return-void

    .line 22
    :cond_2
    iget-boolean v1, v0, Lsmartisan/view/ViewPager;->u:Z

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual/range {p0 .. p0}, Lsmartisan/view/ViewPager;->i()V

    return-void

    .line 24
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 25
    :cond_4
    iget-object v1, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v1, v0}, Li/s/a;->b(Landroid/view/ViewGroup;)V

    .line 26
    iget v1, v0, Lsmartisan/view/ViewPager;->v:I

    .line 27
    iget v5, v0, Lsmartisan/view/ViewPager;->f:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 28
    iget-object v7, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v7}, Li/s/a;->a()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    .line 29
    iget v9, v0, Lsmartisan/view/ViewPager;->f:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 30
    iget v8, v0, Lsmartisan/view/ViewPager;->a:I

    if-ne v7, v8, :cond_21

    move v8, v6

    .line 31
    :goto_2
    iget-object v9, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 32
    iget-object v9, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsmartisan/view/ViewPager$d;

    .line 33
    iget v10, v9, Lsmartisan/view/ViewPager$d;->b:I

    iget v11, v0, Lsmartisan/view/ViewPager;->f:I

    if-lt v10, v11, :cond_5

    if-ne v10, v11, :cond_6

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_7

    if-lez v7, :cond_7

    .line 34
    iget v9, v0, Lsmartisan/view/ViewPager;->f:I

    invoke-virtual {v0, v9, v8}, Lsmartisan/view/ViewPager;->a(II)Lsmartisan/view/ViewPager$d;

    move-result-object v9

    :cond_7
    if-eqz v9, :cond_18

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_8

    .line 35
    iget-object v12, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsmartisan/view/ViewPager$d;

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    .line 36
    :goto_4
    invoke-direct/range {p0 .. p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_9

    const/4 v3, 0x0

    goto :goto_5

    .line 37
    :cond_9
    iget v15, v9, Lsmartisan/view/ViewPager$d;->d:F

    sub-float v15, v14, v15

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v13

    div-float/2addr v3, v6

    add-float/2addr v3, v15

    .line 39
    :goto_5
    iget v6, v0, Lsmartisan/view/ViewPager;->f:I

    add-int/lit8 v6, v6, -0x1

    move v15, v11

    move v11, v8

    const/4 v8, 0x0

    :goto_6
    if-ltz v6, :cond_f

    cmpl-float v16, v8, v3

    if-ltz v16, :cond_b

    if-ge v6, v5, :cond_b

    if-nez v12, :cond_a

    goto :goto_8

    .line 40
    :cond_a
    iget v10, v12, Lsmartisan/view/ViewPager$d;->b:I

    if-ne v6, v10, :cond_e

    iget-boolean v10, v12, Lsmartisan/view/ViewPager$d;->c:Z

    if-nez v10, :cond_e

    .line 41
    iget-object v10, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    iget-object v10, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget-object v12, v12, Lsmartisan/view/ViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v10, v0, v6, v12}, Li/s/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v11, v11, -0x1

    if-ltz v15, :cond_d

    .line 43
    iget-object v10, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsmartisan/view/ViewPager$d;

    goto :goto_7

    :cond_b
    if-eqz v12, :cond_c

    .line 44
    iget v10, v12, Lsmartisan/view/ViewPager$d;->b:I

    if-ne v6, v10, :cond_c

    .line 45
    iget v10, v12, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v8, v10

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_d

    .line 46
    iget-object v10, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsmartisan/view/ViewPager$d;

    goto :goto_7

    :cond_c
    add-int/lit8 v10, v15, 0x1

    .line 47
    invoke-virtual {v0, v6, v10}, Lsmartisan/view/ViewPager;->a(II)Lsmartisan/view/ViewPager$d;

    move-result-object v10

    .line 48
    iget v10, v10, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v8, v10

    add-int/lit8 v11, v11, 0x1

    if-ltz v15, :cond_d

    .line 49
    iget-object v10, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsmartisan/view/ViewPager$d;

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    move-object v12, v10

    :cond_e
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 50
    :cond_f
    :goto_8
    iget v3, v9, Lsmartisan/view/ViewPager$d;->d:F

    add-int/lit8 v5, v11, 0x1

    cmpg-float v6, v3, v14

    if-gez v6, :cond_17

    .line 51
    iget-object v6, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget-object v6, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisan/view/ViewPager$d;

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    :goto_9
    if-gtz v13, :cond_11

    const/4 v10, 0x0

    goto :goto_a

    .line 52
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v10, v13

    div-float/2addr v8, v10

    add-float v10, v8, v14

    .line 53
    :goto_a
    iget v8, v0, Lsmartisan/view/ViewPager;->f:I

    :goto_b
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v7, :cond_17

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_14

    if-le v8, v1, :cond_14

    if-nez v6, :cond_12

    goto :goto_d

    .line 54
    :cond_12
    iget v12, v6, Lsmartisan/view/ViewPager$d;->b:I

    if-ne v8, v12, :cond_16

    iget-boolean v12, v6, Lsmartisan/view/ViewPager$d;->c:Z

    if-nez v12, :cond_16

    .line 55
    iget-object v12, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    iget-object v12, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget-object v6, v6, Lsmartisan/view/ViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v8, v6}, Li/s/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 57
    iget-object v6, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    iget-object v6, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisan/view/ViewPager$d;

    goto :goto_c

    :cond_13
    const/4 v6, 0x0

    goto :goto_c

    :cond_14
    if-eqz v6, :cond_15

    .line 58
    iget v12, v6, Lsmartisan/view/ViewPager$d;->b:I

    if-ne v8, v12, :cond_15

    .line 59
    iget v6, v6, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    .line 60
    iget-object v6, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    iget-object v6, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisan/view/ViewPager$d;

    goto :goto_c

    .line 61
    :cond_15
    invoke-virtual {v0, v8, v5}, Lsmartisan/view/ViewPager;->a(II)Lsmartisan/view/ViewPager$d;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 62
    iget v6, v6, Lsmartisan/view/ViewPager$d;->d:F

    add-float/2addr v3, v6

    .line 63
    iget-object v6, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    iget-object v6, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisan/view/ViewPager$d;

    :cond_16
    :goto_c
    goto :goto_b

    .line 64
    :cond_17
    :goto_d
    invoke-virtual {v0, v9, v11, v4}, Lsmartisan/view/ViewPager;->a(Lsmartisan/view/ViewPager$d;ILsmartisan/view/ViewPager$d;)V

    .line 65
    :cond_18
    iget-object v1, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget v3, v0, Lsmartisan/view/ViewPager;->f:I

    if-eqz v9, :cond_19

    iget-object v4, v9, Lsmartisan/view/ViewPager$d;->a:Ljava/lang/Object;

    goto :goto_e

    :cond_19
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v1, v0, v3, v4}, Li/s/a;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 66
    iget-object v1, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v1, v0}, Li/s/a;->a(Landroid/view/ViewGroup;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1c

    .line 68
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lsmartisan/view/ViewPager$LayoutParams;

    .line 70
    iput v3, v5, Lsmartisan/view/ViewPager$LayoutParams;->f:I

    .line 71
    iget-boolean v6, v5, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-nez v6, :cond_1a

    iget v6, v5, Lsmartisan/view/ViewPager$LayoutParams;->c:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1b

    .line 72
    invoke-virtual {v0, v4}, Lsmartisan/view/ViewPager;->b(Landroid/view/View;)Lsmartisan/view/ViewPager$d;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 73
    iget v6, v4, Lsmartisan/view/ViewPager$d;->d:F

    iput v6, v5, Lsmartisan/view/ViewPager$LayoutParams;->c:F

    .line 74
    iget v4, v4, Lsmartisan/view/ViewPager$d;->b:I

    iput v4, v5, Lsmartisan/view/ViewPager$LayoutParams;->e:I

    goto :goto_10

    :cond_1a
    const/4 v7, 0x0

    :cond_1b
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 75
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lsmartisan/view/ViewPager;->i()V

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 78
    invoke-virtual {v0, v1}, Lsmartisan/view/ViewPager;->a(Landroid/view/View;)Lsmartisan/view/ViewPager$d;

    move-result-object v3

    goto :goto_11

    :cond_1d
    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_1e

    .line 79
    iget v1, v3, Lsmartisan/view/ViewPager$d;->b:I

    iget v3, v0, Lsmartisan/view/ViewPager;->f:I

    if-eq v1, v3, :cond_20

    :cond_1e
    const/4 v1, 0x0

    .line 80
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 82
    invoke-virtual {v0, v3}, Lsmartisan/view/ViewPager;->b(Landroid/view/View;)Lsmartisan/view/ViewPager$d;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 83
    iget v4, v4, Lsmartisan/view/ViewPager$d;->b:I

    iget v5, v0, Lsmartisan/view/ViewPager;->f:I

    if-ne v4, v5, :cond_1f

    .line 84
    invoke-virtual {v3, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_13

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    :goto_13
    return-void

    .line 85
    :cond_21
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    .line 86
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    :goto_14
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lsmartisan/view/ViewPager;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Lsmartisan/view/ViewPager;->b(Landroid/view/View;)Lsmartisan/view/ViewPager$d;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget v4, v4, Lsmartisan/view/ViewPager$d;->b:I

    iget v5, p0, Lsmartisan/view/ViewPager;->f:I

    if-ne v4, v5, :cond_1

    .line 8
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lsmartisan/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/view/ViewPager;->f:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lsmartisan/view/ViewPager;->a(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lsmartisan/view/ViewPager;->f:I

    invoke-virtual {v0}, Li/s/a;->a()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/view/ViewPager;->f:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lsmartisan/view/ViewPager;->a(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/view/ViewPager;->f:I

    invoke-virtual {p0, v0}, Lsmartisan/view/ViewPager;->d(I)V

    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Lsmartisan/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lsmartisan/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lsmartisan/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Li/s/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/view/ViewPager;->V:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 2
    :cond_0
    iget-object p1, p0, Lsmartisan/view/ViewPager;->W:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lsmartisan/view/ViewPager$LayoutParams;

    iget p1, p1, Lsmartisan/view/ViewPager$LayoutParams;->f:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/view/ViewPager;->f:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/view/ViewPager;->v:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/view/ViewPager;->l:I

    return v0
.end method

.method public final h()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lsmartisan/view/ViewPager$LayoutParams;

    .line 4
    iget-boolean v1, v1, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget v0, p0, Lsmartisan/view/ViewPager;->V:I

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lsmartisan/view/ViewPager;->W:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/view/ViewPager;->W:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lsmartisan/view/ViewPager;->W:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->W:Ljava/util/ArrayList;

    sget-object v1, Lsmartisan/view/ViewPager;->f0:Lsmartisan/view/ViewPager$g;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lsmartisan/view/ViewPager;->N:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->a0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v1, v0, Lsmartisan/view/ViewPager;->l:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lsmartisan/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 5
    iget v3, v0, Lsmartisan/view/ViewPager;->l:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 6
    iget-object v5, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsmartisan/view/ViewPager$d;

    .line 7
    iget v7, v5, Lsmartisan/view/ViewPager$d;->e:F

    .line 8
    iget-object v8, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 9
    iget v9, v5, Lsmartisan/view/ViewPager$d;->b:I

    .line 10
    iget-object v10, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsmartisan/view/ViewPager$d;

    iget v10, v10, Lsmartisan/view/ViewPager$d;->b:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 11
    :goto_1
    iget v11, v5, Lsmartisan/view/ViewPager$d;->b:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 12
    iget-object v5, v0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsmartisan/view/ViewPager$d;

    goto :goto_1

    .line 13
    :cond_0
    iget v11, v5, Lsmartisan/view/ViewPager$d;->b:I

    if-ne v9, v11, :cond_1

    .line 14
    iget v7, v5, Lsmartisan/view/ViewPager$d;->e:F

    iget v11, v5, Lsmartisan/view/ViewPager$d;->d:F

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    .line 15
    :cond_1
    iget-object v11, v0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v11, v9}, Li/s/a;->a(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    .line 16
    :goto_2
    iget v11, v0, Lsmartisan/view/ViewPager;->l:I

    int-to-float v13, v11

    add-float/2addr v13, v12

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    .line 17
    iget-object v13, v0, Lsmartisan/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v12

    iget v15, v0, Lsmartisan/view/ViewPager;->n:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v11, v11, v16

    float-to-int v11, v11

    move/from16 v16, v3

    iget v3, v0, Lsmartisan/view/ViewPager;->o:I

    invoke-virtual {v13, v14, v15, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    iget-object v3, v0, Lsmartisan/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-boolean v2, v6, Lsmartisan/view/ViewPager;->w:Z

    if-eqz v2, :cond_1

    return v9

    .line 3
    :cond_1
    iget-boolean v2, v6, Lsmartisan/view/ViewPager;->x:Z

    if-eqz v2, :cond_2

    return v8

    :cond_2
    const/4 v2, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 4
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lsmartisan/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 5
    :cond_4
    iget v0, v6, Lsmartisan/view/ViewPager;->F:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 6
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 7
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 8
    iget v1, v6, Lsmartisan/view/ViewPager;->B:F

    sub-float v1, v10, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 10
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 11
    iget v0, v6, Lsmartisan/view/ViewPager;->E:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_6

    .line 12
    iget v0, v6, Lsmartisan/view/ViewPager;->B:F

    invoke-virtual {p0, v0, v1}, Lsmartisan/view/ViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 13
    invoke-virtual/range {v0 .. v5}, Lsmartisan/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iput v10, v6, Lsmartisan/view/ViewPager;->B:F

    .line 15
    iput v12, v6, Lsmartisan/view/ViewPager;->C:F

    .line 16
    iput-boolean v9, v6, Lsmartisan/view/ViewPager;->x:Z

    return v8

    .line 17
    :cond_6
    iget v0, v6, Lsmartisan/view/ViewPager;->A:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_8

    .line 18
    iput-boolean v9, v6, Lsmartisan/view/ViewPager;->w:Z

    .line 19
    invoke-virtual {p0, v9}, Lsmartisan/view/ViewPager;->c(Z)V

    .line 20
    invoke-direct {p0, v9}, Lsmartisan/view/ViewPager;->setScrollState(I)V

    .line 21
    iget v0, v6, Lsmartisan/view/ViewPager;->D:F

    iget v1, v6, Lsmartisan/view/ViewPager;->A:I

    int-to-float v1, v1

    if-lez v14, :cond_7

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lsmartisan/view/ViewPager;->B:F

    .line 22
    iput v12, v6, Lsmartisan/view/ViewPager;->C:F

    .line 23
    invoke-direct {p0, v9}, Lsmartisan/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 24
    :cond_8
    iget v0, v6, Lsmartisan/view/ViewPager;->A:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 25
    iput-boolean v9, v6, Lsmartisan/view/ViewPager;->x:Z

    .line 26
    :cond_9
    :goto_1
    iget-boolean v0, v6, Lsmartisan/view/ViewPager;->w:Z

    if-eqz v0, :cond_c

    .line 27
    invoke-virtual {p0, v10}, Lsmartisan/view/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    goto :goto_2

    .line 29
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lsmartisan/view/ViewPager;->D:F

    iput v0, v6, Lsmartisan/view/ViewPager;->B:F

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lsmartisan/view/ViewPager;->E:F

    iput v0, v6, Lsmartisan/view/ViewPager;->C:F

    .line 31
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lsmartisan/view/ViewPager;->F:I

    .line 32
    iput-boolean v8, v6, Lsmartisan/view/ViewPager;->x:Z

    .line 33
    iget-object v0, v6, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 34
    iget v0, v6, Lsmartisan/view/ViewPager;->b0:I

    if-ne v0, v2, :cond_b

    iget-object v0, v6, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    .line 35
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lsmartisan/view/ViewPager;->K:I

    if-le v0, v1, :cond_b

    .line 36
    iget-object v0, v6, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 37
    iput-boolean v8, v6, Lsmartisan/view/ViewPager;->u:Z

    .line 38
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->g()V

    .line 39
    iput-boolean v9, v6, Lsmartisan/view/ViewPager;->w:Z

    .line 40
    invoke-virtual {p0, v9}, Lsmartisan/view/ViewPager;->c(Z)V

    .line 41
    invoke-direct {p0, v9}, Lsmartisan/view/ViewPager;->setScrollState(I)V

    goto :goto_2

    .line 42
    :cond_b
    invoke-virtual {p0, v8}, Lsmartisan/view/ViewPager;->a(Z)V

    .line 43
    iput-boolean v8, v6, Lsmartisan/view/ViewPager;->w:Z

    .line 44
    :cond_c
    :goto_2
    iget-object v0, v6, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    .line 45
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    .line 46
    :cond_d
    iget-object v0, v6, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 47
    iget-boolean v0, v6, Lsmartisan/view/ViewPager;->w:Z

    return v0

    .line 48
    :cond_e
    :goto_3
    iput-boolean v8, v6, Lsmartisan/view/ViewPager;->w:Z

    .line 49
    iput-boolean v8, v6, Lsmartisan/view/ViewPager;->x:Z

    .line 50
    iput v1, v6, Lsmartisan/view/ViewPager;->F:I

    .line 51
    iget-object v0, v6, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 52
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, v6, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    :cond_f
    return v8
.end method

.method public onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v4, v1, :cond_7

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 8
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lsmartisan/view/ViewPager$LayoutParams;

    .line 10
    iget-boolean v14, v12, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-eqz v14, :cond_6

    .line 11
    iget v12, v12, Lsmartisan/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v5

    goto :goto_1

    :cond_0
    sub-int v14, v2, v6

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v5

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v7

    goto :goto_2

    :cond_3
    sub-int v12, v3, v10

    .line 16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 17
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_2
    add-int/2addr v14, v8

    .line 20
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    .line 21
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    .line 22
    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int v4, v2, v5

    sub-int/2addr v4, v6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_a

    .line 23
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 24
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    .line 25
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lsmartisan/view/ViewPager$LayoutParams;

    .line 26
    iget-boolean v13, v9, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-nez v13, :cond_9

    invoke-virtual {v0, v8}, Lsmartisan/view/ViewPager;->b(Landroid/view/View;)Lsmartisan/view/ViewPager$d;

    move-result-object v13

    if-eqz v13, :cond_9

    int-to-float v14, v4

    .line 27
    iget v13, v13, Lsmartisan/view/ViewPager$d;->e:F

    mul-float/2addr v13, v14

    float-to-int v13, v13

    add-int/2addr v13, v5

    .line 28
    iget-boolean v15, v9, Lsmartisan/view/ViewPager$LayoutParams;->d:Z

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    .line 29
    iput-boolean v15, v9, Lsmartisan/view/ViewPager$LayoutParams;->d:Z

    .line 30
    iget v9, v9, Lsmartisan/view/ViewPager$LayoutParams;->c:F

    mul-float/2addr v14, v9

    float-to-int v9, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v15, v3, v7

    sub-int/2addr v15, v10

    .line 31
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 32
    invoke-virtual {v8, v9, v14}, Landroid/view/View;->measure(II)V

    .line 33
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v13

    .line 34
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v7

    .line 35
    invoke-virtual {v8, v13, v7, v9, v14}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 36
    :cond_a
    iput v7, v0, Lsmartisan/view/ViewPager;->n:I

    sub-int/2addr v3, v10

    .line 37
    iput v3, v0, Lsmartisan/view/ViewPager;->o:I

    .line 38
    iput v11, v0, Lsmartisan/view/ViewPager;->P:I

    .line 39
    iget-boolean v1, v0, Lsmartisan/view/ViewPager;->N:Z

    if-eqz v1, :cond_b

    .line 40
    iget v1, v0, Lsmartisan/view/ViewPager;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v3}, Lsmartisan/view/ViewPager;->a(IZIZ)V

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    .line 41
    :goto_4
    iput-boolean v3, v0, Lsmartisan/view/ViewPager;->N:Z

    .line 42
    iput v2, v0, Lsmartisan/view/ViewPager;->L:I

    .line 43
    iget v1, v0, Lsmartisan/view/ViewPager;->L:I

    div-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 2
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 5
    div-int/lit8 p2, p1, 0xa

    .line 6
    iget v1, p0, Lsmartisan/view/ViewPager;->y:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lsmartisan/view/ViewPager;->z:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, p2

    move p2, p1

    move p1, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge p1, v1, :cond_c

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lsmartisan/view/ViewPager$LayoutParams;

    if-eqz v3, :cond_b

    .line 13
    iget-boolean v7, v3, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_b

    .line 14
    iget v7, v3, Lsmartisan/view/ViewPager$LayoutParams;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    move v9, v8

    move v8, v5

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v8

    .line 15
    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_5

    :cond_6
    move v10, p2

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_7
    move v10, p2

    .line 16
    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, v2

    goto :goto_7

    :cond_9
    move v3, v2

    move v5, v9

    .line 17
    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 18
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 19
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p2, v3

    :cond_b
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 22
    :cond_c
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 23
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lsmartisan/view/ViewPager;->r:I

    .line 24
    iput-boolean v4, p0, Lsmartisan/view/ViewPager;->s:Z

    .line 25
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->g()V

    .line 26
    iput-boolean v0, p0, Lsmartisan/view/ViewPager;->s:Z

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_9
    if-ge v0, p1, :cond_f

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lsmartisan/view/ViewPager$LayoutParams;

    if-eqz v2, :cond_d

    .line 31
    iget-boolean v4, v2, Lsmartisan/view/ViewPager$LayoutParams;->a:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p2

    .line 32
    iget v2, v2, Lsmartisan/view/ViewPager$LayoutParams;->c:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 33
    iget v4, p0, Lsmartisan/view/ViewPager;->r:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Lsmartisan/view/ViewPager;->b(Landroid/view/View;)Lsmartisan/view/ViewPager$d;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5
    iget v6, v6, Lsmartisan/view/ViewPager$d;->b:I

    iget v7, p0, Lsmartisan/view/ViewPager;->f:I

    if-ne v6, v7, :cond_1

    .line 6
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lsmartisan/view/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lsmartisan/view/ViewPager$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p1, Lsmartisan/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lsmartisan/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Li/s/a;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 7
    iget p1, p1, Lsmartisan/view/ViewPager$SavedState;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lsmartisan/view/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p1, Lsmartisan/view/ViewPager$SavedState;->a:I

    iput v0, p0, Lsmartisan/view/ViewPager;->g:I

    .line 9
    iget-object v0, p1, Lsmartisan/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lsmartisan/view/ViewPager;->h:Landroid/os/Parcelable;

    .line 10
    iget-object p1, p1, Lsmartisan/view/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lsmartisan/view/ViewPager;->i:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lsmartisan/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lsmartisan/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lsmartisan/view/ViewPager;->f:I

    iput v0, v1, Lsmartisan/view/ViewPager$SavedState;->a:I

    .line 4
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Li/s/a;->b()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lsmartisan/view/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 2
    iget p2, p0, Lsmartisan/view/ViewPager;->l:I

    invoke-virtual {p0, p1, p3, p2, p2}, Lsmartisan/view/ViewPager;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lsmartisan/view/ViewPager;->M:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Li/s/a;->a()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 4
    :cond_2
    iget-object v0, p0, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    .line 6
    :cond_3
    iget-object v0, p0, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_c

    const/4 v3, -0x1

    if-eq v0, v1, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 8
    :cond_4
    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 9
    iget v0, p0, Lsmartisan/view/ViewPager;->F:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lsmartisan/view/ViewPager;->B:F

    goto/16 :goto_1

    .line 12
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 14
    iput v3, p0, Lsmartisan/view/ViewPager;->B:F

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lsmartisan/view/ViewPager;->F:I

    goto/16 :goto_1

    .line 16
    :cond_6
    iget-boolean p1, p0, Lsmartisan/view/ViewPager;->w:Z

    if-eqz p1, :cond_d

    .line 17
    iget p1, p0, Lsmartisan/view/ViewPager;->f:I

    invoke-virtual {p0, p1, v1, v2, v2}, Lsmartisan/view/ViewPager;->a(IZIZ)V

    .line 18
    iput v3, p0, Lsmartisan/view/ViewPager;->F:I

    .line 19
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->b()V

    goto/16 :goto_1

    .line 20
    :cond_7
    iget-boolean v0, p0, Lsmartisan/view/ViewPager;->w:Z

    if-nez v0, :cond_a

    .line 21
    iget v0, p0, Lsmartisan/view/ViewPager;->F:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_8

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid pointerId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsmartisan/view/ViewPager;->F:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewPager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 23
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 24
    iget v4, p0, Lsmartisan/view/ViewPager;->B:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 26
    iget v5, p0, Lsmartisan/view/ViewPager;->C:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 27
    iget v6, p0, Lsmartisan/view/ViewPager;->A:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 28
    iput-boolean v1, p0, Lsmartisan/view/ViewPager;->w:Z

    .line 29
    invoke-virtual {p0, v1}, Lsmartisan/view/ViewPager;->c(Z)V

    .line 30
    iget v4, p0, Lsmartisan/view/ViewPager;->D:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    iget v3, p0, Lsmartisan/view/ViewPager;->A:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_9
    iget v3, p0, Lsmartisan/view/ViewPager;->A:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Lsmartisan/view/ViewPager;->B:F

    .line 31
    iput v0, p0, Lsmartisan/view/ViewPager;->C:F

    .line 32
    invoke-direct {p0, v1}, Lsmartisan/view/ViewPager;->setScrollState(I)V

    .line 33
    invoke-direct {p0, v1}, Lsmartisan/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 35
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 36
    :cond_a
    iget-boolean v0, p0, Lsmartisan/view/ViewPager;->w:Z

    if-eqz v0, :cond_d

    .line 37
    iget v0, p0, Lsmartisan/view/ViewPager;->F:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 39
    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->b(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_1

    .line 40
    :cond_b
    iget-boolean v0, p0, Lsmartisan/view/ViewPager;->w:Z

    if-eqz v0, :cond_d

    .line 41
    iget-object v0, p0, Lsmartisan/view/ViewPager;->G:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 42
    iget v5, p0, Lsmartisan/view/ViewPager;->I:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 43
    iget v4, p0, Lsmartisan/view/ViewPager;->F:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 44
    iput-boolean v1, p0, Lsmartisan/view/ViewPager;->u:Z

    .line 45
    invoke-direct {p0}, Lsmartisan/view/ViewPager;->getClientWidth()I

    move-result v4

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    .line 47
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->c()Lsmartisan/view/ViewPager$d;

    move-result-object v6

    .line 48
    iget v7, v6, Lsmartisan/view/ViewPager$d;->b:I

    int-to-float v5, v5

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 49
    iget v4, v6, Lsmartisan/view/ViewPager$d;->e:F

    sub-float/2addr v5, v4

    iget v4, v6, Lsmartisan/view/ViewPager$d;->d:F

    div-float/2addr v5, v4

    .line 50
    iget v4, p0, Lsmartisan/view/ViewPager;->F:I

    .line 51
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 52
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 53
    iget v4, p0, Lsmartisan/view/ViewPager;->D:F

    sub-float/2addr p1, v4

    float-to-int p1, p1

    .line 54
    invoke-virtual {p0, v7, v5, v0, p1}, Lsmartisan/view/ViewPager;->a(IFII)I

    move-result p1

    .line 55
    invoke-virtual {p0, p1, v1, v1, v0}, Lsmartisan/view/ViewPager;->a(IZZI)V

    .line 56
    iput v3, p0, Lsmartisan/view/ViewPager;->F:I

    .line 57
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->b()V

    goto :goto_1

    .line 58
    :cond_c
    iget-object v0, p0, Lsmartisan/view/ViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 59
    iput-boolean v2, p0, Lsmartisan/view/ViewPager;->u:Z

    .line 60
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->g()V

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lsmartisan/view/ViewPager;->D:F

    iput v0, p0, Lsmartisan/view/ViewPager;->B:F

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lsmartisan/view/ViewPager;->E:F

    iput v0, p0, Lsmartisan/view/ViewPager;->C:F

    .line 63
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lsmartisan/view/ViewPager;->F:I

    :cond_d
    :goto_1
    if-eqz v2, :cond_e

    .line 64
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :cond_e
    return v1

    :cond_f
    :goto_2
    return v2
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 25

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    if-ne v8, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v11, v10

    :goto_1
    if-eqz v8, :cond_3

    if-ne v8, v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v10

    :goto_3
    add-int v12, v2, v0

    if-lez v0, :cond_4

    if-le v12, v4, :cond_5

    :goto_4
    move v13, v10

    goto :goto_5

    :cond_4
    if-gez v0, :cond_5

    if-ge v12, v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_5
    const/16 v16, 0x0

    const-wide v17, 0x3fe570a3d70a3d71L    # 0.67

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    const/16 v9, 0x14

    if-eqz p9, :cond_a

    if-eqz v13, :cond_a

    sub-int v12, v2, v4

    .line 2
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    int-to-double v14, v12

    move/from16 v22, v11

    int-to-double v10, v6

    mul-double v23, v10, v19

    cmpg-double v23, v14, v23

    if-gez v23, :cond_6

    int-to-float v10, v6

    mul-int/lit8 v12, v12, 0xc

    :goto_6
    add-int/2addr v12, v6

    int-to-float v11, v12

    div-float/2addr v10, v11

    int-to-float v0, v0

    mul-float/2addr v0, v10

    goto :goto_7

    :cond_6
    mul-double v10, v10, v17

    cmpg-double v10, v14, v10

    if-gez v10, :cond_7

    int-to-float v10, v6

    mul-int/2addr v12, v9

    goto :goto_6

    .line 3
    :cond_7
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v10, v9, :cond_9

    if-lez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_7

    :cond_9
    move/from16 v0, v16

    :goto_7
    float-to-int v0, v0

    add-int v12, v2, v0

    goto :goto_8

    :cond_a
    move/from16 v22, v11

    :goto_8
    if-nez v22, :cond_b

    const/4 v6, 0x0

    :cond_b
    add-int v0, v3, v1

    if-lez v1, :cond_c

    if-le v0, v5, :cond_d

    :goto_9
    const/4 v10, 0x1

    goto :goto_a

    :cond_c
    if-gez v1, :cond_d

    if-ge v0, v5, :cond_d

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    :goto_a
    if-eqz p9, :cond_12

    if-eqz v10, :cond_12

    sub-int v0, v3, v5

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v10, v0

    int-to-double v14, v7

    mul-double v19, v19, v14

    cmpg-double v19, v10, v19

    if-gez v19, :cond_f

    int-to-float v9, v7

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v9, v0

    int-to-float v0, v1

    mul-float v16, v9, v0

    :cond_e
    :goto_b
    move/from16 v0, v16

    goto :goto_c

    :cond_f
    mul-double v14, v14, v17

    cmpg-double v10, v10, v14

    if-gez v10, :cond_10

    int-to-float v10, v7

    mul-int/2addr v0, v9

    add-int/2addr v0, v7

    int-to-float v0, v0

    div-float/2addr v10, v0

    int-to-float v0, v1

    mul-float v16, v10, v0

    goto :goto_b

    .line 5
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v9, :cond_e

    if-lez v1, :cond_11

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_11
    const/high16 v16, -0x40800000    # -1.0f

    goto :goto_b

    :goto_c
    float-to-int v0, v0

    add-int/2addr v0, v3

    :cond_12
    if-nez v8, :cond_13

    const/4 v7, 0x0

    .line 6
    :cond_13
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v1, v8

    neg-int v1, v1

    add-int/2addr v4, v6

    .line 7
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v6, v8

    neg-int v6, v6

    add-int/2addr v5, v7

    if-le v12, v4, :cond_14

    if-le v12, v2, :cond_14

    move v12, v4

    :goto_d
    const/4 v1, 0x1

    goto :goto_e

    :cond_14
    if-ge v12, v1, :cond_15

    if-ge v12, v2, :cond_15

    move v12, v1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_e
    if-le v0, v5, :cond_16

    if-le v0, v3, :cond_16

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move v6, v5

    goto :goto_10

    :cond_16
    if-ge v0, v6, :cond_17

    if-ge v0, v3, :cond_17

    const/4 v2, 0x1

    goto :goto_f

    :cond_17
    const/4 v2, 0x0

    move v6, v0

    :goto_f
    move-object/from16 v0, p0

    .line 8
    :goto_10
    invoke-virtual {v0, v12, v6, v1, v2}, Lsmartisan/view/ViewPager;->onOverScrolled(IIZZ)V

    if-nez v1, :cond_19

    if-eqz v2, :cond_18

    goto :goto_11

    :cond_18
    const/16 v21, 0x0

    goto :goto_12

    :cond_19
    :goto_11
    const/16 v21, 0x1

    :goto_12
    return v21
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/view/ViewPager;->s:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Li/s/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lsmartisan/view/ViewPager;->k:Lsmartisan/view/ViewPager$f;

    invoke-virtual {v0, v2}, Li/s/a;->b(Landroid/database/DataSetObserver;)V

    .line 3
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v0, p0}, Li/s/a;->b(Landroid/view/ViewGroup;)V

    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v2, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/view/ViewPager$d;

    .line 6
    iget-object v3, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget v4, v2, Lsmartisan/view/ViewPager$d;->b:I

    iget-object v2, v2, Lsmartisan/view/ViewPager$d;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Li/s/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v0, p0}, Li/s/a;->a(Landroid/view/ViewGroup;)V

    .line 8
    iget-object v0, p0, Lsmartisan/view/ViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->h()V

    .line 10
    iput v1, p0, Lsmartisan/view/ViewPager;->f:I

    .line 11
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 12
    :cond_1
    iget-object v0, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    .line 13
    iput-object p1, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    .line 14
    iput v1, p0, Lsmartisan/view/ViewPager;->a:I

    .line 15
    iget-object v2, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    if-eqz v2, :cond_5

    .line 16
    iget-object v2, p0, Lsmartisan/view/ViewPager;->k:Lsmartisan/view/ViewPager$f;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 17
    new-instance v2, Lsmartisan/view/ViewPager$f;

    invoke-direct {v2, p0, v3}, Lsmartisan/view/ViewPager$f;-><init>(Lsmartisan/view/ViewPager;Lsmartisan/view/ViewPager$a;)V

    iput-object v2, p0, Lsmartisan/view/ViewPager;->k:Lsmartisan/view/ViewPager$f;

    .line 18
    :cond_2
    iget-object v2, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget-object v4, p0, Lsmartisan/view/ViewPager;->k:Lsmartisan/view/ViewPager$f;

    invoke-virtual {v2, v4}, Li/s/a;->a(Landroid/database/DataSetObserver;)V

    .line 19
    iput-boolean v1, p0, Lsmartisan/view/ViewPager;->u:Z

    .line 20
    iget-boolean v2, p0, Lsmartisan/view/ViewPager;->N:Z

    const/4 v4, 0x1

    .line 21
    iput-boolean v4, p0, Lsmartisan/view/ViewPager;->N:Z

    .line 22
    iget-object v5, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    invoke-virtual {v5}, Li/s/a;->a()I

    move-result v5

    iput v5, p0, Lsmartisan/view/ViewPager;->a:I

    .line 23
    iget v5, p0, Lsmartisan/view/ViewPager;->g:I

    if-ltz v5, :cond_3

    .line 24
    iget-object v2, p0, Lsmartisan/view/ViewPager;->e:Li/s/a;

    iget-object v5, p0, Lsmartisan/view/ViewPager;->h:Landroid/os/Parcelable;

    iget-object v6, p0, Lsmartisan/view/ViewPager;->i:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v5, v6}, Li/s/a;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 25
    iget v2, p0, Lsmartisan/view/ViewPager;->g:I

    invoke-virtual {p0, v2, v1, v4}, Lsmartisan/view/ViewPager;->a(IZZ)V

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lsmartisan/view/ViewPager;->g:I

    .line 27
    iput-object v3, p0, Lsmartisan/view/ViewPager;->h:Landroid/os/Parcelable;

    .line 28
    iput-object v3, p0, Lsmartisan/view/ViewPager;->i:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 29
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->g()V

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 31
    :cond_5
    :goto_1
    iget-object v1, p0, Lsmartisan/view/ViewPager;->S:Lsmartisan/view/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    .line 32
    invoke-interface {v1, v0, p1}, Lsmartisan/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Li/s/a;Li/s/a;)V

    :cond_6
    return-void
.end method

.method public setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lsmartisan/view/ViewPager;->U:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-string v2, "ViewPager"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "setChildrenDrawingOrderEnabled"

    :try_start_1
    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/view/ViewPager;->U:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Can\'t find setChildrenDrawingOrderEnabled"

    .line 4
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lsmartisan/view/ViewPager;->U:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Error changing children drawing order"

    .line 6
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsmartisan/view/ViewPager;->u:Z

    .line 2
    iget-boolean v1, p0, Lsmartisan/view/ViewPager;->N:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lsmartisan/view/ViewPager;->a(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Lsmartisan/view/ViewPager;->v:I

    if-eq p1, v0, :cond_1

    .line 3
    iput p1, p0, Lsmartisan/view/ViewPager;->v:I

    .line 4
    invoke-virtual {p0}, Lsmartisan/view/ViewPager;->g()V

    :cond_1
    return-void
.end method

.method public setOnAdapterChangeListener(Lsmartisan/view/ViewPager$OnAdapterChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/view/ViewPager;->S:Lsmartisan/view/ViewPager$OnAdapterChangeListener;

    return-void
.end method

.method public setOnPageChangeListener(Lsmartisan/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/view/ViewPager;->Q:Lsmartisan/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/view/ViewPager;->l:I

    .line 2
    iput p1, p0, Lsmartisan/view/ViewPager;->l:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {p0, v1, v1, p1, v0}, Lsmartisan/view/ViewPager;->a(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsmartisan/view/ViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
