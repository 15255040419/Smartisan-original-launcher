.class public Lsmartisan/widget/SmartisanNumberPickerEx;
.super Landroid/widget/LinearLayout;
.source "SmartisanNumberPickerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;,
        Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;,
        Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;,
        Lsmartisan/widget/SmartisanNumberPickerEx$b;
    }
.end annotation


# static fields
.field public static final t0:I

.field public static final u0:I

.field public static final v0:I

.field public static w0:I

.field public static final x0:Lsmartisan/widget/SmartisanNumberPickerEx$b;

.field public static y0:Landroid/media/SoundPool;

.field public static z0:I


# instance fields
.field public final A:Landroid/widget/Scroller;

.field public final B:Landroid/widget/Scroller;

.field public C:I

.field public D:F

.field public E:J

.field public F:F

.field public G:Landroid/view/VelocityTracker;

.field public H:I

.field public I:I

.field public J:I

.field public K:Z

.field public final L:Z

.field public M:I

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:I

.field public U:I

.field public V:I

.field public W:F

.field public a:Ljava/lang/String;

.field public a0:F

.field public final b:I

.field public b0:I

.field public final c:I

.field public c0:F

.field public final d:I

.field public d0:Landroid/graphics/Paint;

.field public e:I

.field public e0:Landroid/graphics/Paint;

.field public final f:Z

.field public f0:Landroid/graphics/Paint;

.field public g:I

.field public g0:I

.field public h:[Ljava/lang/String;

.field public h0:I

.field public i:I

.field public i0:I

.field public j:I

.field public j0:I

.field public k:I

.field public k0:I

.field public l:I

.field public l0:Landroid/graphics/Rect;

.field public m:Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;

.field public m0:I

.field public n:Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;

.field public n0:I

.field public o:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

.field public o0:I

.field public final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p0:I

.field public final q:[I

.field public q0:Ljava/lang/String;

.field public final r:Landroid/graphics/Paint;

.field public r0:Landroid/graphics/drawable/Drawable;

.field public s:I

.field public s0:Ljava/lang/Runnable;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "#4c000000"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->t0:I

    const-string v0, "#e65079d9"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->u0:I

    const-string v0, "#9a000000"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->v0:I

    const/4 v0, 0x0

    .line 4
    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->w0:I

    .line 5
    new-instance v0, Lsmartisan/widget/SmartisanNumberPickerEx$b;

    invoke-direct {v0}, Lsmartisan/widget/SmartisanNumberPickerEx$b;-><init>()V

    sput-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->x0:Lsmartisan/widget/SmartisanNumberPickerEx$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->a:Ljava/lang/String;

    .line 5
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->p:Landroid/util/SparseArray;

    const/16 p3, 0x9

    new-array v0, p3, [I

    .line 6
    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    const/16 v0, 0x11

    .line 7
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->s:I

    const/16 v0, 0x3c

    .line 8
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->t:I

    .line 9
    sget v0, Lsmartisan/widget/SmartisanNumberPickerEx;->t0:I

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->u:I

    .line 10
    sget v0, Lsmartisan/widget/SmartisanNumberPickerEx;->v0:I

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->v:I

    .line 11
    sget v0, Lsmartisan/widget/SmartisanNumberPickerEx;->u0:I

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->w:I

    const/high16 v0, -0x80000000

    .line 12
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->M:I

    .line 14
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->R:Z

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->S:Z

    const/4 v2, -0x1

    .line 16
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->T:I

    const/high16 v3, 0x40000000    # 2.0f

    .line 17
    iput v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->a0:F

    .line 18
    iput p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->b0:I

    const p3, 0x3f866666    # 1.05f

    .line 19
    iput p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->c0:F

    .line 20
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->l0:Landroid/graphics/Rect;

    .line 21
    new-instance p3, Lsmartisan/widget/SmartisanNumberPickerEx$a;

    invoke-direct {p3, p0}, Lsmartisan/widget/SmartisanNumberPickerEx$a;-><init>(Lsmartisan/widget/SmartisanNumberPickerEx;)V

    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->s0:Ljava/lang/Runnable;

    .line 22
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->L:Z

    .line 23
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->b:I

    .line 24
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->c:I

    .line 25
    iget p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->b:I

    if-eq p3, v2, :cond_1

    iget v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->c:I

    if-eq v3, v2, :cond_1

    if-gt p3, v3, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    :goto_0
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->d:I

    .line 28
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e:I

    .line 29
    iget p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->d:I

    if-eq p3, v2, :cond_3

    iget v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e:I

    if-eq v3, v2, :cond_3

    if-gt p3, v3, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_3
    :goto_1
    iget p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e:I

    if-ne p3, v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->f:Z

    .line 32
    iget-boolean p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->L:Z

    xor-int/2addr p3, v1

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    .line 34
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->H:I

    .line 35
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->I:I

    .line 36
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->J:I

    .line 37
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 38
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 40
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->s:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->u:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->r:Landroid/graphics/Paint;

    .line 43
    new-instance p3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x40200000    # 2.5f

    cmpl-float p2, p2, p3

    if-nez p2, :cond_5

    .line 45
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    const v0, 0x3b378034    # 0.0028f

    invoke-virtual {p2, v0}, Landroid/widget/Scroller;->setFriction(F)V

    goto :goto_2

    .line 46
    :cond_5
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    const v0, 0x3ac49ba6    # 0.0015f

    invoke-virtual {p2, v0}, Landroid/widget/Scroller;->setFriction(F)V

    .line 47
    :goto_2
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p2, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->B:Landroid/widget/Scroller;

    .line 48
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->B:Landroid/widget/Scroller;

    const p3, 0x3a03126f    # 5.0E-4f

    invoke-virtual {p2, p3}, Landroid/widget/Scroller;->setFriction(F)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->number_picker_small_line_gap:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->number_picker_normal_line_gap:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->number_picker_large_line_gap:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->smartisan_numberpicker_hightlight_suffix_font_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->U:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->smartisan_numberpicker_hightlight_suffix_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->V:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$color;->calander_date_pick_select_day_color_2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->w:I

    .line 55
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41880000    # 17.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g0:I

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->f0:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->c()V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanNumberPickerEx;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->S:Z

    return p0
.end method

.method public static final getTwoDigitFormatter()Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->x0:Lsmartisan/widget/SmartisanNumberPickerEx$b;

    return-object v0
.end method

.method public static h(I)Ljava/lang/String;
    .locals 3

    .line 8
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

.method public static synthetic i()Landroid/media/SoundPool;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->y0:Landroid/media/SoundPool;

    return-object v0
.end method

.method public static synthetic j()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/SmartisanNumberPickerEx;->z0:I

    return v0
.end method


# virtual methods
.method public final a(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 25
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 27
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

    .line 28
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 29
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

    .line 30
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 31
    invoke-static {p1, p3, p2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I
    .locals 2

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 22
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 23
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->c0:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 24
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method public final a(I)V
    .locals 3

    .line 48
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->p:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 50
    :cond_0
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 52
    aget-object v1, v2, v1

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->c(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const-string v1, ""

    .line 55
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 10
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 11
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    .line 12
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    if-ge p1, v0, :cond_1

    .line 13
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    .line 14
    :cond_1
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->R:Z

    .line 15
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result p1

    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    array-length p2, p2

    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setWrapSelectorWheel(Z)V

    .line 17
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->f()V

    .line 18
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->h()V

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxValue must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 13

    .line 32
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->L:Z

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->B:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->C:I

    if-eqz p1, :cond_1

    .line 36
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v7, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 38
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 39
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->b(IZ)V

    goto :goto_1

    .line 40
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->b(IZ)V

    :goto_1
    return-void
.end method

.method public final a([I)V
    .locals 3

    .line 41
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 42
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 43
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 44
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    if-ge v0, v1, :cond_1

    .line 45
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    .line 46
    aput v0, p1, v1

    .line 47
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(I)V

    return-void
.end method

.method public final a()Z
    .locals 7

    .line 56
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 57
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->C:I

    .line 58
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 59
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->B:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final a(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 4
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    add-int/2addr p1, v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    rem-int/2addr p1, v2

    .line 5
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_4

    .line 6
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

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

    .line 7
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    mul-int/lit8 v2, v2, 0x9

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    neg-int v1, v2

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->scrollBy(II)V

    return v0

    :cond_4
    return p1
.end method

.method public final b(I)V
    .locals 10

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->C:I

    if-lez p1, :cond_0

    .line 19
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

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

    .line 20
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final b(II)V
    .locals 1

    .line 29
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->m:Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 30
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    invoke-interface {p2, p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;->onValueChange(Lsmartisan/widget/SmartisanNumberPickerEx;II)V

    :cond_0
    return-void
.end method

.method public final b(IZ)V
    .locals 2

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->f(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    if-ne v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->f(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->d(I)I

    move-result v1

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10
    :goto_0
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    .line 11
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p0, p1, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->b(II)V

    .line 13
    :cond_5
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->f()V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final b(Landroid/widget/Scroller;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->a()Z

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->g(I)V

    :cond_0
    return-void
.end method

.method public final b([I)V
    .locals 3

    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 23
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 24
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 25
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 26
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    .line 27
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 28
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(I)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->R:Z

    return v0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->o:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->h(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g0:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->v:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->c0:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 9
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 10
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g0:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->f0:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->u:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->f0:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public c(II)V
    .locals 0

    .line 13
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->u:I

    .line 14
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->v:I

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->B:Landroid/widget/Scroller;

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
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->C:I

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->C:I

    :cond_1
    const/4 v2, 0x0

    .line 9
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->C:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->scrollBy(II)V

    .line 10
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->C:I

    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->b(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public final d(I)I
    .locals 3

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 7
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result v1

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 8
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    if-ge p1, v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result p1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    sub-int/2addr p1, v2

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method public final d()V
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

    add-int/lit16 v0, v0, -0x92

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method public d(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->s:I

    .line 2
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->t:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the text size mus be >= 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()V
    .locals 6

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->f()V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    .line 6
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->s:I

    mul-int/2addr v1, v2

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->t:I

    add-int/2addr v1, v2

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x92

    div-int/lit8 v2, v2, 0x8

    sput v2, Lsmartisan/widget/SmartisanNumberPickerEx;->w0:I

    .line 9
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v1, v1

    .line 10
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g:I

    .line 11
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->s:I

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    .line 12
    sget v1, Lsmartisan/widget/SmartisanNumberPickerEx;->w0:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    .line 13
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    .line 14
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->number_picker_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->W:F

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h0:I

    .line 18
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    if-eqz v1, :cond_1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h0:I

    if-nez v2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    .line 20
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h0:I

    int-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j0:I

    .line 21
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j0:I

    int-to-float v2, v2

    iget v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->a0:F

    iget v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->b0:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    .line 22
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k0:I

    int-to-float v2, v1

    .line 23
    iget v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-float v5, v4

    mul-float/2addr v5, v3

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->m0:I

    int-to-float v1, v1

    int-to-float v2, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    .line 24
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->n0:I

    int-to-float v1, v4

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 25
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g:I

    .line 26
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g:I

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$drawable;->time_picker_widget_lens:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->r0:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->T:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->T:I

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->T:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->getValue()I

    move-result v1

    .line 4
    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->f(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    .line 6
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    .line 7
    :goto_0
    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_0

    .line 8
    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    sub-int v4, v2, v4

    aput v4, v0, v3

    .line 9
    aget v4, v0, v3

    invoke-virtual {p0, v4}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(I)V

    .line 10
    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    add-int v5, v1, v3

    .line 11
    aput v5, v0, v4

    .line 12
    aget v4, v0, v4

    invoke-virtual {p0, v4}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    array-length v1, v4

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x4

    .line 14
    aput v2, v0, v1

    .line 15
    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(I)V

    goto :goto_2

    .line 16
    :cond_1
    :goto_1
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    array-length v2, v2

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v3, -0x4

    add-int/2addr v2, v1

    .line 17
    iget-boolean v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {p0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->d(I)I

    move-result v2

    .line 19
    :cond_2
    aput v2, v0, v3

    .line 20
    aget v2, v0, v3

    invoke-virtual {p0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final f(I)Z
    .locals 1

    .line 21
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g()I
    .locals 2

    .line 5
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->b()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->M:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->M:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->n:Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;->onScrollStateChange(Lsmartisan/widget/SmartisanNumberPickerEx;I)V

    :cond_1
    return-void
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    return v0
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->r:Landroid/graphics/Paint;

    invoke-static {v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    :goto_1
    if-lez v0, :cond_5

    .line 5
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 6
    :cond_3
    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 7
    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->r:Landroid/graphics/Paint;

    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h:[Ljava/lang/String;

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

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->y0:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->y0:Landroid/media/SoundPool;

    .line 4
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->y0:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$raw;->time_picker:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->z0:I

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->y0:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->y0:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-boolean v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->L:Z

    if-nez v1, :cond_0

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v8, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    .line 4
    invoke-virtual/range {p0 .. p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->c()V

    .line 5
    iget v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->a0:F

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    rem-float/2addr v1, v2

    float-to-int v9, v1

    .line 6
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->r0:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    iget v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->m0:I

    int-to-float v1, v1

    invoke-virtual {v7, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->r0:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->n0:I

    iget v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->m0:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v11, v11, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->r0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v2, v1

    iget v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->m0:I

    int-to-float v3, v1

    iget v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->f0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v2, v1

    iget v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->n0:I

    int-to-float v3, v1

    iget v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->f0:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    move v1, v11

    .line 14
    :goto_1
    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->b0:I

    if-ge v1, v2, :cond_d

    .line 15
    aget v2, v8, v1

    .line 16
    invoke-virtual {v0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->f(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "--"

    goto :goto_2

    .line 17
    :cond_2
    iget-object v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->p:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 18
    :goto_2
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->l:I

    if-ne v2, v5, :cond_3

    .line 19
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->w:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->w:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 21
    :cond_3
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->u:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->v:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 24
    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-float v2, v2

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->a0:F

    mul-float/2addr v2, v5

    int-to-float v5, v1

    mul-float/2addr v5, v2

    int-to-float v6, v9

    add-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v12

    .line 25
    iget v14, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->j0:I

    int-to-double v14, v14

    div-double/2addr v5, v14

    cmpl-double v12, v5, v12

    if-gez v12, :cond_8

    const-wide/16 v12, 0x0

    cmpg-double v12, v5, v12

    if-gtz v12, :cond_4

    goto/16 :goto_5

    .line 26
    :cond_4
    iget v12, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->k0:I

    int-to-double v12, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->k0:I

    int-to-double v10, v3

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-double v14, v3

    mul-double/2addr v10, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v14

    sub-double/2addr v12, v10

    double-to-int v3, v12

    int-to-float v10, v3

    const/4 v11, 0x0

    .line 27
    invoke-virtual {v7, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v7, v10, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 29
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->m0:I

    if-gt v3, v5, :cond_5

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    add-int/2addr v6, v3

    if-lt v6, v5, :cond_5

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->m0:I

    sub-int/2addr v6, v3

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 32
    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    iget-object v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->l0:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v6}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-float v6, v6

    iget-object v10, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->m0:I

    sub-int/2addr v5, v3

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    float-to-int v2, v2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v5, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 36
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->l0:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-float v3, v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    .line 38
    :cond_5
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->n0:I

    if-gt v3, v5, :cond_6

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    add-int/2addr v6, v3

    if-lt v6, v5, :cond_6

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->n0:I

    sub-int/2addr v6, v3

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 41
    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    iget-object v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->l0:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v6}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-float v6, v6

    iget-object v10, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->n0:I

    sub-int/2addr v5, v3

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    float-to-int v2, v2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v5, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 45
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->l0:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-float v3, v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 47
    :cond_6
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->m0:I

    if-lt v3, v5, :cond_7

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    add-int/2addr v5, v3

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->n0:I

    if-gt v5, v3, :cond_7

    .line 48
    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    float-to-int v2, v2

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 49
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->l0:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-float v3, v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->e0:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 50
    :cond_7
    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    float-to-int v2, v2

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 51
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->l0:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o0:I

    int-to-float v3, v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->d0:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 52
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_8
    :goto_5
    move v11, v10

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    :goto_6
    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->b0:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    if-ne v1, v2, :cond_c

    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 55
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->o:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    if-nez v2, :cond_a

    .line 56
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->h:[Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 57
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->q0:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object v4, v2

    goto :goto_7

    .line 58
    :cond_9
    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->j:I

    invoke-static {v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->h(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    :cond_a
    :goto_7
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->r:Landroid/graphics/Paint;

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->U:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->r:Landroid/graphics/Paint;

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->v:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->r:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 62
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->r:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->l0:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 63
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->l0:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 64
    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->c0:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 65
    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->p0:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_b

    .line 66
    iput v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->p0:I

    .line 67
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->p0:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->i0:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 68
    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->r:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 69
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->n0:I

    iget v10, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->m0:I

    sub-int/2addr v5, v10

    div-int/2addr v5, v4

    add-int/2addr v5, v10

    .line 70
    iget v10, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v3, v10, v3

    div-int/2addr v3, v4

    add-int/2addr v5, v3

    sub-int/2addr v5, v10

    int-to-float v3, v5

    .line 71
    iget-object v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->a:Ljava/lang/String;

    int-to-float v2, v2

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->W:F

    add-float/2addr v2, v5

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->V:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->r:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v10, v11

    move v11, v6

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x2

    .line 72
    aget v2, v8, v1

    invoke-virtual {v0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->e(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    .line 73
    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_e

    .line 74
    aget v1, v8, v1

    iput v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->T:I

    .line 75
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->s0:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 76
    :cond_e
    aget v2, v8, v1

    invoke-virtual {v0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->e(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    .line 77
    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-gt v2, v3, :cond_f

    .line 78
    aget v1, v8, v1

    iput v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->T:I

    .line 79
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->s0:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    :goto_9
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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    add-int/2addr v0, v1

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->L:Z

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

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->D:F

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->F:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->E:J

    .line 5
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->N:Z

    .line 6
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->O:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->B:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 11
    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->g(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->B:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->A:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->B:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 15
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->D:F

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->P:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->Q:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->O:Z

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->L:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->e()V

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->d()V

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->L:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->e:I

    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(II)I

    move-result v0

    .line 4
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->c:I

    invoke-virtual {p0, p2, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(II)I

    move-result v1

    .line 5
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->d:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(III)I

    move-result p1

    .line 7
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->b:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1, p2}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(III)I

    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 11
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->e()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->L:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->G:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->G:Landroid/view/VelocityTracker;

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->G:Landroid/view/VelocityTracker;

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
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->N:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 8
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->M:I

    if-eq v0, v3, :cond_4

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->D:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 10
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->H:I

    if-le v0, v1, :cond_5

    .line 11
    invoke-virtual {p0, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->g(I)V

    goto :goto_0

    .line 12
    :cond_4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->F:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 13
    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->scrollBy(II)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 15
    :cond_5
    :goto_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->F:F

    goto :goto_3

    .line 16
    :cond_6
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->G:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 17
    iget v5, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->J:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 18
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->I:I

    if-le v4, v5, :cond_7

    .line 20
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->b(I)V

    .line 21
    invoke-virtual {p0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->g(I)V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v0

    .line 23
    iget v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->D:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->E:J

    sub-long/2addr v4, v6

    .line 25
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->H:I

    if-gt v2, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gez p1, :cond_a

    .line 26
    iget-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->O:Z

    if-eqz p1, :cond_8

    .line 27
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->O:Z

    goto :goto_1

    .line 28
    :cond_8
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x4

    if-lez v0, :cond_9

    .line 29
    invoke-virtual {p0, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Z)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 30
    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(Z)V

    goto :goto_1

    .line 31
    :cond_a
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->a()Z

    .line 32
    :cond_b
    :goto_1
    invoke-virtual {p0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->g(I)V

    .line 33
    :goto_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->G:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->G:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    if-gt v0, v2, :cond_0

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 6
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    return-void

    .line 7
    :cond_1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    add-int/2addr v0, p2

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    .line 8
    :cond_2
    :goto_0
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    sub-int v0, p2, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    sub-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    .line 10
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->a([I)V

    .line 11
    aget p2, p1, v1

    invoke-virtual {p0, p2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->b(IZ)V

    .line 12
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    if-gt p2, v0, :cond_2

    .line 13
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    sub-int v0, p2, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g:I

    neg-int v2, v2

    if-gt v0, v2, :cond_4

    .line 15
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->x:I

    add-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    .line 16
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->b([I)V

    .line 17
    aget p2, p1, v1

    invoke-virtual {p0, p2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->b(IZ)V

    .line 18
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 19
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->y:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->z:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h:[Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->f()V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->h:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q0:Ljava/lang/String;

    return-void

    .line 6
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 7
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q0:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 8
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q0:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    aget-object v2, p1, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q0:Ljava/lang/String;

    :goto_1
    iput-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q0:Ljava/lang/String;

    goto :goto_2

    .line 9
    :cond_3
    aget-object v2, p1, v1

    iput-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q0:Ljava/lang/String;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setFormatter(Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->o:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->o:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->f()V

    return-void
.end method

.method public setHightlightSuffix(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->a:Ljava/lang/String;

    return-void
.end method

.method public setInitialValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->l:I

    return-void
.end method

.method public setLineSpacemMultiplier(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    .line 1
    :cond_0
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->a0:F

    :goto_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->a0:F

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->e()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->a(IZ)V

    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    if-le p1, v0, :cond_1

    .line 4
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->k:I

    .line 5
    :cond_1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result p1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setWrapSelectorWheel(Z)V

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->f()V

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->h()V

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

.method public setOnScrollListener(Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->n:Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->m:Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;

    return-void
.end method

.method public setSoundEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->S:Z

    return-void
.end method

.method public setTextScaleX(I)V
    .locals 0

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->c0:F

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->g0:I

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->b(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->g()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->i:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->q:[I

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
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->K:Z

    :cond_2
    return-void
.end method
