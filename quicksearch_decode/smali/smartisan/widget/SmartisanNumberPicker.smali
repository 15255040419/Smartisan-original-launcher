.class public Lsmartisan/widget/SmartisanNumberPicker;
.super Landroid/widget/LinearLayout;
.source "SmartisanNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanNumberPicker$b;,
        Lsmartisan/widget/SmartisanNumberPicker$Formatter;,
        Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;,
        Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;,
        Lsmartisan/widget/SmartisanNumberPicker$c;
    }
.end annotation


# static fields
.field public static final W:I

.field public static final a0:Lsmartisan/widget/SmartisanNumberPicker$c;

.field public static b0:Landroid/media/SoundPool;

.field public static c0:I


# instance fields
.field public A:I

.field public B:F

.field public C:J

.field public D:F

.field public E:Landroid/view/VelocityTracker;

.field public F:I

.field public G:I

.field public H:I

.field public I:Z

.field public final J:Z

.field public K:I

.field public L:Z

.field public M:Z

.field public N:I

.field public O:I

.field public P:Z

.field public Q:Lsmartisan/widget/SmartisanNumberPicker$b;

.field public R:I

.field public S:Z

.field public T:I

.field public U:Landroid/os/Vibrator;

.field public V:Ljava/lang/Runnable;

.field public final a:I

.field public final b:I

.field public final c:I

.field public d:I

.field public final e:Z

.field public f:I

.field public g:[Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;

.field public l:Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;

.field public m:Lsmartisan/widget/SmartisanNumberPicker$Formatter;

.field public final n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:[I

.field public final p:Landroid/graphics/Paint;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public final y:Landroid/widget/Scroller;

.field public final z:Landroid/widget/Scroller;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "#545454"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPicker;->W:I

    .line 2
    new-instance v0, Lsmartisan/widget/SmartisanNumberPicker$c;

    invoke-direct {v0}, Lsmartisan/widget/SmartisanNumberPicker$c;-><init>()V

    sput-object v0, Lsmartisan/widget/SmartisanNumberPicker;->a0:Lsmartisan/widget/SmartisanNumberPicker$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->n:Landroid/util/SparseArray;

    const/4 p2, 0x5

    new-array p2, p2, [I

    .line 5
    iput-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->o:[I

    const/16 p2, 0x2d

    .line 6
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    .line 7
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->r:I

    .line 8
    sget p2, Lsmartisan/widget/SmartisanNumberPicker;->W:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->s:I

    .line 9
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->t:I

    const/high16 p2, -0x80000000

    .line 10
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->K:I

    .line 12
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->P:Z

    const/4 p3, 0x1

    .line 13
    iput-boolean p3, p0, Lsmartisan/widget/SmartisanNumberPicker;->S:Z

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->T:I

    .line 15
    new-instance v1, Lsmartisan/widget/SmartisanNumberPicker$a;

    invoke-direct {v1, p0}, Lsmartisan/widget/SmartisanNumberPicker$a;-><init>(Lsmartisan/widget/SmartisanNumberPicker;)V

    iput-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->V:Ljava/lang/Runnable;

    .line 16
    iput-boolean p3, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    .line 17
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->a:I

    .line 18
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->b:I

    .line 19
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->a:I

    if-eq v1, v0, :cond_1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->b:I

    if-eq v2, v0, :cond_1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    :goto_0
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->c:I

    .line 22
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->d:I

    .line 23
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->c:I

    if-eq v1, v0, :cond_3

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->d:I

    if-eq v2, v0, :cond_3

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    :goto_1
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->d:I

    if-ne v1, v0, :cond_4

    move p2, p3

    :cond_4
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->e:Z

    .line 26
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    xor-int/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->F:I

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->G:I

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->H:I

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 32
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 34
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->s:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->p:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    .line 38
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->z:Landroid/widget/Scroller;

    .line 39
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 40
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 41
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->U:Landroid/os/Vibrator;

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanNumberPicker;I)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->f(I)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanNumberPicker;Z)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->a(Z)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanNumberPicker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->S:Z

    return p0
.end method

.method public static synthetic b(Lsmartisan/widget/SmartisanNumberPicker;I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lsmartisan/widget/SmartisanNumberPicker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    return p0
.end method

.method public static synthetic c(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    return p0
.end method

.method public static synthetic d(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    return p0
.end method

.method public static synthetic e(Lsmartisan/widget/SmartisanNumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->g:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->N:I

    return p0
.end method

.method public static synthetic g(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    return p0
.end method

.method public static final getTwoDigitFormatter()Lsmartisan/widget/SmartisanNumberPicker$Formatter;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->a0:Lsmartisan/widget/SmartisanNumberPicker$c;

    return-object v0
.end method

.method public static synthetic h(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->O:I

    return p0
.end method

.method public static synthetic i(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 2
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    return p0
.end method

.method public static synthetic i()Landroid/media/SoundPool;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->b0:Landroid/media/SoundPool;

    return-object v0
.end method

.method public static synthetic j()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/SmartisanNumberPicker;->c0:I

    return v0
.end method

.method public static j(I)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 23
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 27
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method public final a(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 29
    invoke-static {p1, p3, p2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final a(I)V
    .locals 3

    .line 46
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->n:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 48
    :cond_0
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->g:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 50
    aget-object v1, v2, v1

    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 52
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const-string v1, ""

    .line 53
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 12
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 13
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    .line 14
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    if-ge p1, v0, :cond_1

    .line 15
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    .line 16
    :cond_1
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->P:Z

    .line 17
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result p1

    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->o:[I

    array-length p2, p2

    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->setWrapSelectorWheel(Z)V

    .line 19
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->e()V

    .line 20
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->h()V

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxValue must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 13

    .line 30
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->z:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->a(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->A:I

    if-eqz p1, :cond_1

    .line 34
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object v7, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 36
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 37
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->b(IZ)V

    goto :goto_1

    .line 38
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->b(IZ)V

    :goto_1
    return-void
.end method

.method public final a([I)V
    .locals 3

    .line 39
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 40
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 41
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 42
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    if-ge v0, v1, :cond_1

    .line 43
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    .line 44
    aput v0, p1, v1

    .line 45
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->a(I)V

    return-void
.end method

.method public final a()Z
    .locals 7

    .line 54
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 55
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->A:I

    .line 56
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 57
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->z:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final a(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 6
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    add-int/2addr p1, v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    rem-int/2addr p1, v2

    .line 7
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_4

    .line 8
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 9
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    mul-int/lit8 v2, v2, 0x5

    .line 10
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    neg-int v1, v2

    .line 11
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v1}, Lsmartisan/widget/SmartisanNumberPicker;->scrollBy(II)V

    return v0

    :cond_4
    return p1
.end method

.method public final b(I)V
    .locals 10

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->A:I

    if-lez p1, :cond_0

    .line 22
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final b(II)V
    .locals 1

    .line 32
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->k:Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 33
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    invoke-interface {p2, p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;->onValueChange(Lsmartisan/widget/SmartisanNumberPicker;II)V

    :cond_0
    return-void
.end method

.method public final b(IZ)V
    .locals 2

    .line 4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->h(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    if-ne v0, v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->f(I)I

    move-result v1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 11
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 12
    :goto_0
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    .line 13
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    if-eqz p2, :cond_5

    .line 14
    invoke-virtual {p0, p1, v1}, Lsmartisan/widget/SmartisanNumberPicker;->b(II)V

    .line 15
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->g()V

    .line 16
    :cond_5
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->e()V

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final b(Landroid/widget/Scroller;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->a()Z

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->i(I)V

    :cond_0
    return-void
.end method

.method public final b([I)V
    .locals 3

    const/4 v0, 0x0

    .line 25
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 26
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 27
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 28
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 29
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    .line 30
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 31
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->a(I)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->P:Z

    return v0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->m:Lsmartisan/widget/SmartisanNumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsmartisan/widget/SmartisanNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->j(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method public c(II)V
    .locals 0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->s:I

    .line 3
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->t:I

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->z:Landroid/widget/Scroller;

    .line 4
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 6
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 7
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->A:I

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->A:I

    :cond_1
    const/4 v2, 0x0

    .line 9
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->A:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lsmartisan/widget/SmartisanNumberPicker;->scrollBy(II)V

    .line 10
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->A:I

    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->b(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public final d(I)I
    .locals 8

    .line 5
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->w:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    sub-int v2, v0, v1

    if-le p1, v2, :cond_4

    add-int v2, v0, v1

    if-lt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 6
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->t:I

    return p1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    if-ge p1, v0, :cond_2

    sub-int/2addr v0, v1

    sub-int v0, p1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 7
    :goto_0
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->w:I

    if-lt p1, v1, :cond_3

    .line 8
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    add-int/2addr v1, v0

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float/2addr p1, v2

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 9
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->s:I

    const v1, 0xffffff

    and-int v2, p1, v1

    .line 10
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->t:I

    and-int/2addr v1, v3

    and-int/lit16 v4, v2, 0xff

    and-int/lit16 v5, v1, 0xff

    int-to-float v6, v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v6, v4

    float-to-int v4, v6

    or-int/lit8 v4, v4, 0x0

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-float v7, v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v7, v5

    float-to-int v5, v7

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v5, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v5, v1

    float-to-int v1, v5

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v4

    shr-int/lit8 p1, p1, 0x18

    shr-int/lit8 v2, v3, 0x18

    int-to-float v3, p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p1, v0

    add-float/2addr v3, p1

    float-to-int p1, v3

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    return p1

    .line 11
    :cond_4
    :goto_1
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->s:I

    return p1
.end method

.method public final d()V
    .locals 4

    .line 12
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->e()V

    .line 13
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->o:[I

    .line 14
    array-length v1, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    mul-int/2addr v1, v2

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 16
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 17
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->f:I

    .line 18
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 20
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    .line 21
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->w:I

    .line 22
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    return-void
.end method

.method public d(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    .line 3
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->r:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the text size mus be >= 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li/a;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 5
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->N:I

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    sub-int v3, v1, v2

    if-ge v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 6
    :cond_2
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->O:I

    add-int/2addr v2, v1

    if-le v0, v2, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    if-le v0, v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPicker$b;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_7

    const/16 v2, 0x9

    if-eq p1, v2, :cond_6

    const/16 v2, 0xa

    if-eq p1, v2, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    invoke-static {v1, v0, v4}, Lsmartisan/widget/SmartisanNumberPicker$b;->a(Lsmartisan/widget/SmartisanNumberPicker$b;II)V

    .line 10
    iput v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->R:I

    goto :goto_1

    .line 11
    :cond_6
    invoke-static {v1, v0, v7}, Lsmartisan/widget/SmartisanNumberPicker$b;->a(Lsmartisan/widget/SmartisanNumberPicker$b;II)V

    .line 12
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->R:I

    .line 13
    invoke-virtual {v1, v0, v6, v5}, Lsmartisan/widget/SmartisanNumberPicker$b;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 14
    :cond_7
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->R:I

    if-eq p1, v0, :cond_8

    if-eq p1, v3, :cond_8

    .line 15
    invoke-static {v1, p1, v4}, Lsmartisan/widget/SmartisanNumberPicker$b;->a(Lsmartisan/widget/SmartisanNumberPicker$b;II)V

    .line 16
    invoke-static {v1, v0, v7}, Lsmartisan/widget/SmartisanNumberPicker$b;->a(Lsmartisan/widget/SmartisanNumberPicker$b;II)V

    .line 17
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->R:I

    .line 18
    invoke-virtual {v1, v0, v6, v5}, Lsmartisan/widget/SmartisanNumberPicker$b;->performAction(IILandroid/os/Bundle;)Z

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final e(I)F
    .locals 9

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->w:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    sub-int v2, v0, v1

    if-le p1, v2, :cond_3

    add-int v2, v0, v1

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-ge p1, v0, :cond_1

    .line 3
    iget v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    int-to-double v5, v4

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-double v7, p1

    mul-double/2addr v7, v2

    int-to-double v0, v1

    div-double/2addr v7, v0

    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->r:I

    sub-int/2addr p1, v4

    int-to-double v0, p1

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    double-to-float p1, v5

    return p1

    :cond_1
    if-lt p1, v0, :cond_2

    .line 4
    iget v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    int-to-double v5, v4

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    int-to-double v7, v0

    mul-double/2addr v7, v2

    int-to-double v0, v1

    div-double/2addr v7, v0

    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->r:I

    sub-int/2addr p1, v4

    int-to-double v0, p1

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    double-to-float p1, v5

    return p1

    .line 5
    :cond_2
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    int-to-float p1, p1

    return p1

    .line 6
    :cond_3
    :goto_0
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->q:I

    int-to-float p1, p1

    return p1
.end method

.method public final e()V
    .locals 5

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->n:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->o:[I

    .line 9
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result v1

    .line 10
    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->h(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 11
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 12
    aget v1, v0, v3

    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->a(I)V

    .line 13
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    aput v1, v0, v2

    .line 14
    aget v1, v0, v2

    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->a(I)V

    const/4 v1, 0x4

    const/4 v3, 0x2

    .line 15
    aput v1, v0, v3

    .line 16
    aget v3, v0, v3

    invoke-virtual {p0, v3}, Lsmartisan/widget/SmartisanNumberPicker;->a(I)V

    .line 17
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    const/4 v4, 0x3

    aput v3, v0, v4

    .line 18
    aget v3, v0, v4

    invoke-virtual {p0, v3}, Lsmartisan/widget/SmartisanNumberPicker;->a(I)V

    .line 19
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    add-int/2addr v3, v2

    aput v3, v0, v1

    .line 20
    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->a(I)V

    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->o:[I

    array-length v2, v2

    if-ge v3, v2, :cond_2

    add-int/lit8 v2, v3, -0x2

    add-int/2addr v2, v1

    .line 22
    iget-boolean v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    if-eqz v4, :cond_1

    .line 23
    invoke-virtual {p0, v2}, Lsmartisan/widget/SmartisanNumberPicker;->f(I)I

    move-result v2

    .line 24
    :cond_1
    aput v2, v0, v3

    .line 25
    aget v2, v0, v3

    invoke-virtual {p0, v2}, Lsmartisan/widget/SmartisanNumberPicker;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final f()I
    .locals 2

    .line 6
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->b()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final f(I)I
    .locals 3

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 3
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result v1

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 4
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    if-ge p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result p1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    sub-int/2addr p1, v2

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method public final g()V
    .locals 2

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->U:Landroid/os/Vibrator;

    const-string v1, "EFFECT_TIME_PICKER"

    invoke-static {v1}, Li/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Li/j;->a(Landroid/os/Vibrator;I)V

    return-void
.end method

.method public final g(I)Z
    .locals 2

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->T:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->T:I

    .line 4
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->T:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->Q:Lsmartisan/widget/SmartisanNumberPicker$b;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lsmartisan/widget/SmartisanNumberPicker$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsmartisan/widget/SmartisanNumberPicker$b;-><init>(Lsmartisan/widget/SmartisanNumberPicker;Lsmartisan/widget/SmartisanNumberPicker$a;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->Q:Lsmartisan/widget/SmartisanNumberPicker$b;

    .line 5
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->Q:Lsmartisan/widget/SmartisanNumberPicker$b;

    return-object v0
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    return v0
.end method

.method public getTopFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    return v0
.end method

.method public final h()V
    .locals 5

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->g:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->p:Landroid/graphics/Paint;

    invoke-static {v1}, Lsmartisan/widget/SmartisanNumberPicker;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    :goto_1
    if-lez v0, :cond_5

    .line 6
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 7
    :cond_3
    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 8
    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->p:Landroid/graphics/Paint;

    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->g:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    float-to-int v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final h(I)Z
    .locals 1

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->i:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final i(I)V
    .locals 1

    .line 3
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->K:I

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->K:I

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->l:Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p0, p1}, Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;->onScrollStateChange(Lsmartisan/widget/SmartisanNumberPicker;I)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->b0:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lsmartisan/widget/SmartisanNumberPicker;->b0:Landroid/media/SoundPool;

    .line 4
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->b0:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$raw;->time_picker:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPicker;->c0:I

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->b0:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lsmartisan/widget/SmartisanNumberPicker;->b0:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 5
    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->o:[I

    const/4 v4, 0x0

    .line 6
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 7
    aget v5, v3, v4

    .line 8
    invoke-virtual {p0, v5}, Lsmartisan/widget/SmartisanNumberPicker;->h(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "--"

    goto :goto_1

    .line 9
    :cond_1
    iget-object v6, p0, Lsmartisan/widget/SmartisanNumberPicker;->n:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10
    :goto_1
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->e(I)F

    move-result v6

    .line 11
    iget-object v7, p0, Lsmartisan/widget/SmartisanNumberPicker;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->d(I)I

    move-result v6

    .line 13
    iget-object v7, p0, Lsmartisan/widget/SmartisanNumberPicker;->p:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v1

    int-to-float v7, v0

    .line 14
    iget-object v8, p0, Lsmartisan/widget/SmartisanNumberPicker;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 15
    iget v5, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_2
    aget p1, v3, v2

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->g(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    .line 17
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_3

    .line 18
    aget p1, v3, v2

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->T:I

    .line 19
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->V:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 20
    :cond_3
    aget p1, v3, v2

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->g(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    .line 21
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 22
    aget p1, v3, v2

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->T:I

    .line 23
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->V:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    add-int/2addr v0, v1

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->B:F

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->D:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->C:J

    .line 5
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->L:Z

    .line 6
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->M:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->z:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 11
    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->i(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->z:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->y:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->z:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 15
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->B:F

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->N:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->O:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->M:Z

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->d()V

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->c()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->N:I

    .line 6
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->N:I

    add-int/2addr p1, p2

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->O:I

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->d:I

    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->a(II)I

    move-result v0

    .line 4
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->b:I

    invoke-virtual {p0, p2, v1}, Lsmartisan/widget/SmartisanNumberPicker;->a(II)I

    move-result v1

    .line 5
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->c:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lsmartisan/widget/SmartisanNumberPicker;->a(III)I

    move-result p1

    .line 7
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->a:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1, p2}, Lsmartisan/widget/SmartisanNumberPicker;->a(III)I

    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->J:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->E:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->E:Landroid/view/VelocityTracker;

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->E:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    .line 6
    :cond_2
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->L:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 8
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->K:I

    if-eq v0, v3, :cond_4

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->B:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 10
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->F:I

    if-le v0, v1, :cond_5

    .line 11
    invoke-virtual {p0, v3}, Lsmartisan/widget/SmartisanNumberPicker;->i(I)V

    goto :goto_0

    .line 12
    :cond_4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->D:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 13
    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->scrollBy(II)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 15
    :cond_5
    :goto_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->D:F

    goto :goto_3

    .line 16
    :cond_6
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->E:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 17
    iget v5, p0, Lsmartisan/widget/SmartisanNumberPicker;->H:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 18
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lsmartisan/widget/SmartisanNumberPicker;->G:I

    if-le v4, v5, :cond_7

    .line 20
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->b(I)V

    .line 21
    invoke-virtual {p0, v2}, Lsmartisan/widget/SmartisanNumberPicker;->i(I)V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 23
    iget v5, p0, Lsmartisan/widget/SmartisanNumberPicker;->B:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lsmartisan/widget/SmartisanNumberPicker;->C:J

    sub-long/2addr v5, v7

    .line 25
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->F:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    .line 26
    iget-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->M:Z

    if-eqz p1, :cond_8

    .line 27
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->M:Z

    goto :goto_1

    .line 28
    :cond_8
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v2

    if-lez v0, :cond_9

    .line 29
    invoke-virtual {p0, v3}, Lsmartisan/widget/SmartisanNumberPicker;->a(Z)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 30
    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->a(Z)V

    goto :goto_1

    .line 31
    :cond_a
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->a()Z

    .line 32
    :cond_b
    :goto_1
    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->i(I)V

    .line 33
    :goto_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->E:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->E:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->o:[I

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    if-gt v0, v2, :cond_0

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 6
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    return-void

    .line 7
    :cond_1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    .line 8
    :cond_2
    :goto_0
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    sub-int v0, p2, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->f:I

    const/4 v3, 0x1

    if-le v0, v2, :cond_3

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    sub-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    .line 10
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->a([I)V

    .line 11
    aget p2, p1, v1

    invoke-virtual {p0, p2, v3}, Lsmartisan/widget/SmartisanNumberPicker;->b(IZ)V

    .line 12
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    if-gt p2, v0, :cond_2

    .line 13
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    sub-int v0, p2, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->f:I

    neg-int v2, v2

    if-ge v0, v2, :cond_4

    .line 15
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->u:I

    add-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    .line 16
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->b([I)V

    .line 17
    aget p2, p1, v1

    invoke-virtual {p0, p2, v3}, Lsmartisan/widget/SmartisanNumberPicker;->b(IZ)V

    .line 18
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 19
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->v:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->x:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->g:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->g:[Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->e()V

    return-void
.end method

.method public setFormatter(Lsmartisan/widget/SmartisanNumberPicker$Formatter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->m:Lsmartisan/widget/SmartisanNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->m:Lsmartisan/widget/SmartisanNumberPicker$Formatter;

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->e()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->a(IZ)V

    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    if-le p1, v0, :cond_1

    .line 4
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->j:I

    .line 5
    :cond_1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result p1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->o:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->setWrapSelectorWheel(Z)V

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->e()V

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->h()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnScrollListener(Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->l:Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->k:Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setSoundEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->S:Z

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->b(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->f()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->h:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->o:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->I:Z

    :cond_2
    return-void
.end method
