.class public Landroidx/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/drawerlayout/widget/DrawerLayout$c;,
        Landroidx/drawerlayout/widget/DrawerLayout$b;,
        Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;,
        Landroidx/drawerlayout/widget/DrawerLayout$d;,
        Landroidx/drawerlayout/widget/DrawerLayout$SavedState;,
        Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field public static final K:[I

.field public static final L:[I

.field public static final M:Z

.field public static final N:Z


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/Object;

.field public C:Z

.field public D:Landroid/graphics/drawable/Drawable;

.field public E:Landroid/graphics/drawable/Drawable;

.field public F:Landroid/graphics/drawable/Drawable;

.field public G:Landroid/graphics/drawable/Drawable;

.field public final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public I:Landroid/graphics/Rect;

.field public J:Landroid/graphics/Matrix;

.field public final a:Landroidx/drawerlayout/widget/DrawerLayout$c;

.field public b:F

.field public c:I

.field public d:I

.field public e:F

.field public f:Landroid/graphics/Paint;

.field public final g:La/i/a/b;

.field public final h:La/i/a/b;

.field public final i:Landroidx/drawerlayout/widget/DrawerLayout$d;

.field public final j:Landroidx/drawerlayout/widget/DrawerLayout$d;

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field public u:F

.field public v:F

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    .line 1
    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->K:[I

    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    .line 2
    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->L:[I

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->M:Z

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroidx/drawerlayout/widget/DrawerLayout$c;

    invoke-direct {p2}, Landroidx/drawerlayout/widget/DrawerLayout$c;-><init>()V

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->a:Landroidx/drawerlayout/widget/DrawerLayout$c;

    const/high16 p2, -0x67000000

    .line 5
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:I

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    const/4 p3, 0x3

    .line 8
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    .line 9
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    .line 10
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    .line 11
    iput p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    .line 14
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40000

    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 18
    iput v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->c:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    .line 19
    new-instance v3, Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-direct {v3, p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout$d;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 20
    new-instance p3, Landroidx/drawerlayout/widget/DrawerLayout$d;

    const/4 v3, 0x5

    invoke-direct {p3, p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout$d;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$d;

    .line 21
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Landroidx/drawerlayout/widget/DrawerLayout$d;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3, p3}, La/i/a/b;->a(Landroid/view/ViewGroup;FLa/i/a/b$c;)La/i/a/b;

    move-result-object p3

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    .line 22
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {p3, p2}, La/i/a/b;->g(I)V

    .line 23
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {p3, v2}, La/i/a/b;->b(F)V

    .line 24
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Landroidx/drawerlayout/widget/DrawerLayout$d;

    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {p3, v4}, Landroidx/drawerlayout/widget/DrawerLayout$d;->a(La/i/a/b;)V

    .line 25
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-static {p0, v3, p3}, La/i/a/b;->a(Landroid/view/ViewGroup;FLa/i/a/b$c;)La/i/a/b;

    move-result-object p3

    iput-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    .line 26
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    const/4 v3, 0x2

    invoke-virtual {p3, v3}, La/i/a/b;->g(I)V

    .line 27
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    invoke-virtual {p3, v2}, La/i/a/b;->b(F)V

    .line 28
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$d;

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    invoke-virtual {p3, v2}, Landroidx/drawerlayout/widget/DrawerLayout$d;->a(La/i/a/b;)V

    .line 29
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 30
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    .line 31
    new-instance p2, Landroidx/drawerlayout/widget/DrawerLayout$b;

    invoke-direct {p2, p0}, Landroidx/drawerlayout/widget/DrawerLayout$b;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;La/g/h/a;)V

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 33
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->j(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 34
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p3, v2, :cond_0

    .line 35
    new-instance p3, Landroidx/drawerlayout/widget/DrawerLayout$a;

    invoke-direct {p3, p0}, Landroidx/drawerlayout/widget/DrawerLayout$a;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 p3, 0x500

    .line 36
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 37
    sget-object p3, Landroidx/drawerlayout/widget/DrawerLayout;->K:[I

    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 38
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    .line 40
    :cond_0
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    const/high16 p1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    .line 41
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Ljava/util/ArrayList;

    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "LEFT"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string p0, "RIGHT"

    return-object p0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static m(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 4

    .line 49
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    .line 50
    invoke-static {p1, v0}, La/g/h/b;->a(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 52
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 53
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 9

    .line 89
    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 91
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 93
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 8
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    .line 9
    invoke-static {p2, v0}, La/g/h/b;->a(II)I

    move-result v0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x800003

    if-eq p2, v2, :cond_1

    const v2, 0x800005

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    goto :goto_0

    .line 11
    :cond_1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    goto :goto_0

    .line 12
    :cond_2
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    goto :goto_0

    .line 13
    :cond_3
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    :goto_0
    if-eqz p1, :cond_5

    if-ne v0, v1, :cond_4

    .line 14
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    .line 15
    :goto_1
    invoke-virtual {p2}, La/i/a/b;->b()V

    :cond_5
    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 17
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)V

    goto :goto_2

    .line 18
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 19
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public a(IILandroid/view/View;)V
    .locals 3

    .line 34
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {p1}, La/i/a/b;->g()I

    move-result p1

    .line 35
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    invoke-virtual {v0}, La/i/a/b;->g()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    .line 36
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 37
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_4

    .line 38
    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    .line 39
    invoke-virtual {p0, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;)V

    .line 40
    :cond_5
    :goto_2
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:I

    if-eq v1, p1, :cond_6

    .line 41
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->k:I

    .line 42
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_6

    .line 44
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {p2, v1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 2

    .line 45
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 47
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v1, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 4

    .line 73
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 75
    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 76
    iput v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    .line 77
    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-eqz p2, :cond_2

    .line 78
    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    or-int/2addr p2, v1

    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    const/4 p2, 0x3

    .line 79
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 80
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 82
    invoke-virtual {p2, p1, v0, v1}, La/i/a/b;->b(Landroid/view/View;II)Z

    goto :goto_0

    .line 83
    :cond_1
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, La/i/a/b;->b(Landroid/view/View;II)Z

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0, p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 85
    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->a:I

    invoke-virtual {p0, p2, v2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 88
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    .line 7
    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Ljava/lang/Object;

    .line 2
    iput-boolean p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Z

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    return-void
.end method

.method public a(Z)V
    .locals 9

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 57
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 59
    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->c:Z

    if-nez v6, :cond_0

    goto :goto_2

    .line 60
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    .line 61
    invoke-virtual {p0, v4, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 62
    iget-object v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    neg-int v6, v6

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 64
    invoke-virtual {v7, v4, v6, v8}, La/i/a/b;->b(Landroid/view/View;II)Z

    move-result v4

    goto :goto_1

    .line 65
    :cond_1
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 67
    invoke-virtual {v6, v4, v7, v8}, La/i/a/b;->b(Landroid/view/View;II)Z

    move-result v4

    :goto_1
    or-int/2addr v3, v4

    .line 68
    iput-boolean v1, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->c:Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_3
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;->c()V

    .line 70
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;->c()V

    if-eqz v3, :cond_4

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_4
    return-void
.end method

.method public final a(FFLandroid/view/View;)Z
    .locals 1

    .line 20
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/Rect;

    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 23
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->I:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 54
    invoke-static {p1}, La/g/c/i/a;->e(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1, p2}, La/g/c/i/a;->a(Landroid/graphics/drawable/Drawable;I)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    neg-float v0, v0

    neg-float v1, v1

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_0
    return p2
.end method

.method public a(Landroid/view/View;I)Z
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result p1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->h(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v3, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    .line 8
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    .line 9
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 11
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_5
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 4
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x4

    .line 5
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    .line 6
    :goto_1
    sget-boolean p2, Landroidx/drawerlayout/widget/DrawerLayout;->M:Z

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->a:Landroidx/drawerlayout/widget/DrawerLayout$c;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;La/g/h/a;)V

    :cond_2
    return-void
.end method

.method public b(I)I
    .locals 3

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const v2, 0x800003

    if-eq p1, v2, :cond_3

    const v2, 0x800005

    if-eq p1, v2, :cond_0

    goto :goto_4

    .line 4
    :cond_0
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    if-eq p1, v1, :cond_1

    return p1

    :cond_1
    if-nez v0, :cond_2

    .line 5
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    :goto_0
    if-eq p1, v1, :cond_c

    return p1

    .line 6
    :cond_3
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    if-eq p1, v1, :cond_4

    return p1

    :cond_4
    if-nez v0, :cond_5

    .line 7
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    goto :goto_1

    :cond_5
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    :goto_1
    if-eq p1, v1, :cond_c

    return p1

    .line 8
    :cond_6
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    if-eq p1, v1, :cond_7

    return p1

    :cond_7
    if-nez v0, :cond_8

    .line 9
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    goto :goto_2

    :cond_8
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    :goto_2
    if-eq p1, v1, :cond_c

    return p1

    .line 10
    :cond_9
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    if-eq p1, v1, :cond_a

    return p1

    :cond_a
    if-nez v0, :cond_b

    .line 11
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    goto :goto_3

    :cond_b
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    :goto_3
    if-eq p1, v1, :cond_c

    return p1

    :cond_c
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .locals 3

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 14
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/Matrix;

    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 21
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->J:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 23
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 24
    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    .line 25
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_0

    .line 27
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x20

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;F)V
    .locals 2

    .line 32
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->f(Landroid/view/View;)F

    move-result v0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int v1, v1

    .line 35
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 36
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;F)V

    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 3

    .line 38
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 40
    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 41
    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    const/4 p2, 0x1

    .line 42
    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    .line 43
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 44
    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    const/4 p2, 0x3

    .line 45
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 46
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2, p1, v1, v0}, La/i/a/b;->b(Landroid/view/View;II)Z

    goto :goto_0

    .line 47
    :cond_1
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 49
    invoke-virtual {p2, p1, v0, v1}, La/i/a/b;->b(Landroid/view/View;II)Z

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;F)V

    .line 51
    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->a:I

    invoke-virtual {p0, p2, v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(IILandroid/view/View;)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void

    .line 54
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 5

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 26
    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    .line 2
    invoke-static {p1, v0}, La/g/h/b;->a(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->z:Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->A:Ljava/lang/CharSequence;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 6
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 7
    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    .line 8
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_0

    .line 10
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-interface {v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;Z)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x20

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 20
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    return-void

    .line 21
    :cond_0
    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    .line 22
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;F)V

    return-void
.end method

.method public final c(Landroid/view/View;Z)V
    .locals 4

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 17
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    .line 18
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->f(Landroid/view/View;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    .line 3
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->e:F

    .line 5
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, La/i/a/b;->a(Z)Z

    move-result v0

    .line 6
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    invoke-virtual {v2, v1}, La/i/a/b;->a(Z)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 7
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->B(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->a:I

    .line 3
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Landroid/view/View;
    .locals 4

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->e:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    invoke-virtual {p0, v1, v2, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->a(FFLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, p1, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 9
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    .line 2
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v4

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v11, v5

    move v5, v8

    move v10, v5

    :goto_0
    if-ge v5, v9, :cond_3

    .line 6
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eq v12, v2, :cond_2

    .line 7
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_2

    .line 8
    invoke-static {v12}, Landroidx/drawerlayout/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {p0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 9
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v13, v3, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0, v12, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 11
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v12, v10, :cond_2

    move v10, v12

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v12, v11, :cond_2

    move v11, v12

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p1, v10, v8, v11, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v8, v10

    goto :goto_2

    :cond_4
    move v11, v5

    .line 14
    :goto_2
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 15
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 16
    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->e:F

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-lez v6, :cond_5

    if-eqz v4, :cond_5

    .line 17
    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->d:I

    const/high16 v4, -0x1000000

    and-int/2addr v4, v2

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    shl-int/lit8 v3, v3, 0x18

    const v4, 0xffffff

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 18
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    const/4 v3, 0x0

    int-to-float v4, v11

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->f:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 20
    :cond_5
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    .line 21
    invoke-virtual {p0, v2, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 22
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 24
    iget-object v8, v0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {v8}, La/i/a/b;->e()I

    move-result v8

    int-to-float v10, v7

    int-to-float v8, v8

    div-float/2addr v10, v8

    .line 25
    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 26
    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v3, v7

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 28
    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 30
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 31
    :cond_6
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    .line 32
    invoke-virtual {p0, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 33
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    .line 36
    iget-object v10, v0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    invoke-virtual {v10}, La/i/a/b;->e()I

    move-result v10

    int-to-float v8, v8

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 37
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 38
    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    sub-int v3, v7, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 40
    invoke-virtual {v6, v3, v8, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 42
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_3
    return v9
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->a:I

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, La/g/h/b;->a(II)I

    move-result p1

    return p1
.end method

.method public final e()Z
    .locals 4

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 5
    iget-boolean v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->c:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public f(Landroid/view/View;)F
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    return p1
.end method

.method public final f()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 4
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 7
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->F:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public g(Landroid/view/View;)Z
    .locals 0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getDrawerElevation()F
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final h()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 4
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->E:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 7
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->D:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->G:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h(Landroid/view/View;)Z
    .locals 3

    .line 9
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 11
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 12
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->x:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->y:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public i(Landroid/view/View;)Z
    .locals 2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->a:I

    .line 5
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result p1

    .line 6
    invoke-static {v0, p1}, La/g/h/b;->a(II)I

    move-result p1

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public j(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->C:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-lez v0, :cond_1

    .line 6
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {v1, p1}, La/i/a/b;->c(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    .line 3
    invoke-virtual {v2, p1}, La/i/a/b;->c(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    const/4 v4, 0x3

    if-eq v0, p1, :cond_0

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {p1, v4}, La/i/a/b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->i:Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;->c()V

    .line 6
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->j:Landroidx/drawerlayout/widget/DrawerLayout$d;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$d;->c()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    .line 8
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    :cond_2
    :goto_0
    move p1, v3

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 11
    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:F

    .line 12
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:F

    .line 13
    iget v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->e:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 14
    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v4, v0, p1}, La/i/a/b;->b(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v3

    .line 16
    :goto_1
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    :goto_2
    if-nez v1, :cond_6

    if-nez p1, :cond_6

    .line 17
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->e()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :cond_6
    :goto_3
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->d()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->b()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 4
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->l:Z

    sub-int v2, p4, p2

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_b

    .line 3
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto/16 :goto_6

    .line 5
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 6
    invoke-virtual {v0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v7, v11

    .line 10
    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    .line 11
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 12
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x3

    .line 13
    invoke-virtual {v0, v6, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_2

    neg-int v10, v8

    int-to-float v11, v8

    .line 14
    iget v12, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    mul-float/2addr v12, v11

    float-to-int v12, v12

    add-int/2addr v10, v12

    add-int v12, v8, v10

    int-to-float v12, v12

    div-float/2addr v12, v11

    goto :goto_1

    :cond_2
    int-to-float v10, v8

    .line 15
    iget v11, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    mul-float/2addr v11, v10

    float-to-int v11, v11

    sub-int v11, v2, v11

    sub-int v12, v2, v11

    int-to-float v12, v12

    div-float/2addr v12, v10

    move v10, v11

    .line 16
    :goto_1
    iget v11, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    cmpl-float v11, v12, v11

    if-eqz v11, :cond_3

    move v11, v1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 17
    :goto_2
    iget v13, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->a:I

    and-int/lit8 v13, v13, 0x70

    const/16 v14, 0x10

    if-eq v13, v14, :cond_5

    const/16 v14, 0x50

    if-eq v13, v14, :cond_4

    .line 18
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v10

    add-int/2addr v9, v13

    invoke-virtual {v6, v10, v13, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_4
    sub-int v9, p5, p3

    .line 19
    iget v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v13, v9, v13

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    add-int/2addr v8, v10

    iget v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v9, v14

    .line 21
    invoke-virtual {v6, v10, v13, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_5
    sub-int v13, p5, p3

    sub-int v14, v13, v9

    .line 22
    div-int/lit8 v14, v14, 0x2

    .line 23
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v14, v15, :cond_6

    move v14, v15

    goto :goto_3

    :cond_6
    add-int v15, v14, v9

    .line 24
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v4, v13, v1

    if-le v15, v4, :cond_7

    sub-int/2addr v13, v1

    sub-int v14, v13, v9

    :cond_7
    :goto_3
    add-int/2addr v8, v10

    add-int/2addr v9, v14

    .line 25
    invoke-virtual {v6, v10, v14, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_4
    if-eqz v11, :cond_8

    .line 26
    invoke-virtual {v0, v6, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->c(Landroid/view/View;F)V

    .line 27
    :cond_8
    iget v1, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->b:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_9

    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    const/4 v4, 0x4

    .line 28
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_a

    .line 29
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_6
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->l:Z

    .line 31
    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->m:Z

    return-void
.end method

.method public onMeasure(II)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    if-eq v2, v6, :cond_4

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_16

    const/high16 v7, -0x80000000

    if-ne v1, v7, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    move v3, v5

    :cond_2
    :goto_0
    if-ne v2, v7, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    move v4, v5

    .line 6
    :cond_4
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 7
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->j(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v5

    .line 8
    :goto_2
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v7

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v9, v5

    move v10, v9

    move v11, v10

    :goto_3
    if-ge v9, v8, :cond_15

    .line 10
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 11
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_6

    goto/16 :goto_7

    .line 12
    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v14, 0x3

    if-eqz v1, :cond_c

    .line 13
    iget v15, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->a:I

    invoke-static {v15, v7}, La/g/h/b;->a(II)I

    move-result v15

    .line 14
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->j(Landroid/view/View;)Z

    move-result v16

    const/16 v6, 0x15

    if-eqz v16, :cond_9

    .line 15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_c

    .line 16
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    if-ne v15, v14, :cond_7

    .line 17
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    .line 18
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v15

    .line 19
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v14

    .line 20
    invoke-virtual {v2, v6, v15, v5, v14}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    goto :goto_4

    :cond_7
    const/4 v6, 0x5

    if-ne v15, v6, :cond_8

    .line 21
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    .line 22
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 23
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 24
    invoke-virtual {v2, v5, v6, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    .line 25
    :cond_8
    :goto_4
    invoke-virtual {v12, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    goto :goto_6

    .line 26
    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_c

    .line 27
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->B:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    const/4 v6, 0x3

    if-ne v15, v6, :cond_a

    .line 28
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    .line 29
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 30
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 31
    invoke-virtual {v2, v6, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    goto :goto_5

    :cond_a
    const/4 v6, 0x5

    if-ne v15, v6, :cond_b

    .line 32
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    .line 33
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 34
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 35
    invoke-virtual {v2, v5, v6, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    .line 36
    :cond_b
    :goto_5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    iput v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 37
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    iput v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 38
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    iput v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 39
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 40
    :cond_c
    :goto_6
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 41
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v3, v2

    iget v6, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 42
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v14, v4, v14

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v13

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 43
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    :goto_7
    move/from16 v15, p1

    move/from16 v13, p2

    goto/16 :goto_b

    :cond_d
    const/high16 v6, 0x40000000    # 2.0f

    .line 44
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 45
    sget-boolean v2, Landroidx/drawerlayout/widget/DrawerLayout;->N:Z

    if-eqz v2, :cond_e

    .line 46
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->i(Landroid/view/View;)F

    move-result v2

    iget v14, v0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_e

    .line 47
    invoke-static {v12, v14}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 48
    :cond_e
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v14, 0x3

    if-ne v2, v14, :cond_f

    const/4 v14, 0x1

    goto :goto_8

    :cond_f
    move v14, v5

    :goto_8
    if-eqz v14, :cond_10

    if-nez v10, :cond_11

    :cond_10
    if-nez v14, :cond_12

    if-nez v11, :cond_11

    goto :goto_9

    .line 49
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child drawer has absolute gravity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DrawerLayout"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "drawer view along that edge"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_9
    if-eqz v14, :cond_13

    const/4 v10, 0x1

    goto :goto_a

    :cond_13
    const/4 v11, 0x1

    .line 51
    :goto_a
    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->c:I

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v15, p1

    invoke-static {v15, v2, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 52
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v5

    iget v5, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v13, p2

    invoke-static {v13, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 53
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    :goto_b
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 54
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    return-void

    .line 55
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->c:I

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->k(Landroid/view/View;)V

    .line 8
    :cond_1
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    .line 10
    :cond_2
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->e:I

    if-eq v0, v1, :cond_3

    const/4 v2, 0x5

    .line 11
    invoke-virtual {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    .line 12
    :cond_3
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->f:I

    if-eq v0, v1, :cond_4

    const v2, 0x800003

    .line 13
    invoke-virtual {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    .line 14
    :cond_4
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->g:I

    if-eq p1, v1, :cond_5

    const v0, 0x800005

    .line 15
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->i()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 6
    iget v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v2

    .line 7
    :goto_1
    iget v7, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->d:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_3
    iget v0, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->a:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->c:I

    .line 9
    :cond_4
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->n:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->d:I

    .line 10
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->o:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->e:I

    .line 11
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->p:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->f:I

    .line 12
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->q:I

    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->g:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {v0, p1}, La/i/a/b;->a(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->h:La/i/a/b;

    invoke-virtual {v0, p1}, La/i/a/b;->a(Landroid/view/MotionEvent;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    .line 5
    iput-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 8
    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v3, v4, v5}, La/i/a/b;->b(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    iget v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:F

    sub-float/2addr v0, v3

    .line 11
    iget v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:F

    sub-float/2addr p1, v3

    .line 12
    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->g:La/i/a/b;

    invoke-virtual {v3}, La/i/a/b;->f()I

    move-result v3

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    mul-int/2addr v3, v3

    int-to-float p1, v3

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    .line 13
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->c()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_2
    move v1, v2

    .line 15
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 18
    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->u:F

    .line 19
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->v:F

    .line 20
    iput-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->r:Z

    :goto_0
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->l:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->i(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->b:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->a(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 4
    :cond_1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->s:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->a(II)V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->d:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/g/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->w:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
