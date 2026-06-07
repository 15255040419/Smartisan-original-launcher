.class public Lsmartisan/widget/letters/QuickBarEx;
.super Landroid/widget/LinearLayout;
.source "QuickBarEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/letters/QuickBarEx$m;,
        Lsmartisan/widget/letters/QuickBarEx$l;,
        Lsmartisan/widget/letters/QuickBarEx$SurnameListener;,
        Lsmartisan/widget/letters/QuickBarEx$QBListener;
    }
.end annotation


# static fields
.field public static final U:Z


# instance fields
.field public A:Lsmartisan/widget/letters/SurnameFlowLayout;

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:Landroid/widget/PopupWindow;

.field public M:Landroid/widget/TextView;

.field public N:I

.field public O:I

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Landroid/view/ViewGroup;

.field public T:Landroid/view/View;

.field public a:Landroid/content/Context;

.field public b:Lsmartisan/widget/letters/LettersBar;

.field public c:Landroid/widget/GridView;

.field public d:Landroid/view/View;

.field public e:Lsmartisan/widget/letters/QuickBarEx$l;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:Lsmartisan/widget/letters/QuickBarEx$QBListener;

.field public q:Lsmartisan/widget/letters/QuickBarEx$SurnameListener;

.field public r:Z

.field public s:Z

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/t/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public u:[I

.field public v:[[Landroid/graphics/Bitmap;

.field public w:Z

.field public x:I

.field public y:Landroid/widget/PopupWindow;

.field public z:Lsmartisan/widget/SurnameGridView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "QuickBarEx"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/letters/QuickBarEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/letters/QuickBarEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lsmartisan/widget/letters/QuickBarEx;->k:I

    const/4 p3, 0x1

    .line 5
    iput p3, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lsmartisan/widget/letters/QuickBarEx;->m:F

    .line 7
    iput v0, p0, Lsmartisan/widget/letters/QuickBarEx;->n:F

    .line 8
    iput v0, p0, Lsmartisan/widget/letters/QuickBarEx;->o:F

    .line 9
    iput-boolean p2, p0, Lsmartisan/widget/letters/QuickBarEx;->r:Z

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lsmartisan/widget/letters/QuickBarEx;->t:Ljava/util/List;

    .line 11
    iput-boolean p3, p0, Lsmartisan/widget/letters/QuickBarEx;->w:Z

    const/4 p2, 0x2

    .line 12
    iput p2, p0, Lsmartisan/widget/letters/QuickBarEx;->x:I

    const/4 p2, 0x3

    .line 13
    iput p2, p0, Lsmartisan/widget/letters/QuickBarEx;->K:I

    const p2, -0x1869f

    .line 14
    iput p2, p0, Lsmartisan/widget/letters/QuickBarEx;->N:I

    const/4 p2, -0x1

    .line 15
    iput p2, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    .line 16
    iput-boolean p3, p0, Lsmartisan/widget/letters/QuickBarEx;->R:Z

    .line 17
    invoke-virtual {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$QBListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/letters/QuickBarEx;->p:Lsmartisan/widget/letters/QuickBarEx$QBListener;

    return-object p0
.end method

.method public static synthetic a(Lsmartisan/widget/letters/QuickBarEx;Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/letters/QuickBarEx;Landroid/view/View;I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/letters/QuickBarEx;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->setShadowVisible(Z)V

    return-void
.end method

.method public static synthetic b(Lsmartisan/widget/letters/QuickBarEx;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->i()V

    return-void
.end method

.method public static synthetic b(Lsmartisan/widget/letters/QuickBarEx;Landroid/view/View;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/letters/QuickBarEx;->b(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic b(Lsmartisan/widget/letters/QuickBarEx;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/letters/QuickBarEx;->s:Z

    return p1
.end method

.method public static synthetic c(Lsmartisan/widget/letters/QuickBarEx;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->h()V

    return-void
.end method

.method public static synthetic c(Lsmartisan/widget/letters/QuickBarEx;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->setLettersBarBg(Z)V

    return-void
.end method

.method public static synthetic d(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$SurnameListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lsmartisan/widget/letters/QuickBarEx;->q:Lsmartisan/widget/letters/QuickBarEx$SurnameListener;

    return-object p0
.end method

.method public static synthetic d(Lsmartisan/widget/letters/QuickBarEx;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/letters/QuickBarEx;->r:Z

    return p1
.end method

.method public static synthetic e(Lsmartisan/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic e(Lsmartisan/widget/letters/QuickBarEx;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/letters/QuickBarEx;->P:Z

    return p1
.end method

.method public static synthetic f(Lsmartisan/widget/letters/QuickBarEx;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/letters/QuickBarEx;->M:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic g(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/SurnameGridView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    return-object p0
.end method

.method private getParentxPos()V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->N:I

    const v1, -0x1869f

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    .line 6
    aget v0, v1, v0

    iput v0, p0, Lsmartisan/widget/letters/QuickBarEx;->N:I

    :cond_1
    return-void
.end method

.method private getScreenWidth()I
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4
    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static synthetic h(Lsmartisan/widget/letters/QuickBarEx;)Lsmartisan/widget/letters/QuickBarEx$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/letters/QuickBarEx;->e:Lsmartisan/widget/letters/QuickBarEx$l;

    return-object p0
.end method

.method public static synthetic i(Lsmartisan/widget/letters/QuickBarEx;)Landroid/widget/GridView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/letters/QuickBarEx;->c:Landroid/widget/GridView;

    return-object p0
.end method

.method public static synthetic j(Lsmartisan/widget/letters/QuickBarEx;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/letters/QuickBarEx;->k:I

    return p0
.end method

.method public static synthetic k(Lsmartisan/widget/letters/QuickBarEx;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/letters/QuickBarEx;->B:I

    return p0
.end method

.method public static synthetic l(Lsmartisan/widget/letters/QuickBarEx;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/letters/QuickBarEx;->C:I

    return p0
.end method

.method public static synthetic m(Lsmartisan/widget/letters/QuickBarEx;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/letters/QuickBarEx;->J:I

    return p0
.end method

.method public static synthetic n(Lsmartisan/widget/letters/QuickBarEx;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->c()V

    return-void
.end method

.method public static synthetic o(Lsmartisan/widget/letters/QuickBarEx;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    return p0
.end method

.method public static synthetic p(Lsmartisan/widget/letters/QuickBarEx;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic q(Lsmartisan/widget/letters/QuickBarEx;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/letters/QuickBarEx;->R:Z

    return p0
.end method

.method private setHostWidth(I)V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->i:I

    sub-int v0, p1, v0

    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/letters/QuickBarEx;->f:I

    .line 2
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->h:I

    sub-int/2addr p1, v0

    iput p1, p0, Lsmartisan/widget/letters/QuickBarEx;->g:I

    .line 3
    iget p1, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    iget p1, p0, Lsmartisan/widget/letters/QuickBarEx;->f:I

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 5
    iget p1, p0, Lsmartisan/widget/letters/QuickBarEx;->g:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result p1

    .line 7
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    .line 8
    sget-boolean p1, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mStartX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickBarEx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private setLettersBarBg(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->b:Lsmartisan/widget/letters/LettersBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/letters/LettersBar;->setShowBg(Z)V

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->setShadowVisible(Z)V

    return-void
.end method

.method private setShadowVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setState(I)V
    .locals 2

    .line 1
    iput p1, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    .line 2
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->b:Lsmartisan/widget/letters/LettersBar;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lsmartisan/widget/letters/LettersBar;->setSettled(Z)V

    return-void
.end method


# virtual methods
.method public final a(D)I
    .locals 2

    .line 74
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method public final a(I)I
    .locals 0

    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 2

    .line 171
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 173
    iput-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    .line 174
    iput-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    .line 175
    iput-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    .line 176
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 178
    iput-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    .line 179
    iput-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->M:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method public final a(FF)V
    .locals 1

    sub-float/2addr p1, p2

    .line 66
    iget p2, p0, Lsmartisan/widget/letters/QuickBarEx;->f:I

    int-to-float v0, p2

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    int-to-float p1, p2

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    const/4 p1, 0x1

    .line 68
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->setState(I)V

    goto :goto_0

    .line 69
    :cond_0
    iget p2, p0, Lsmartisan/widget/letters/QuickBarEx;->g:I

    int-to-float v0, p2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    int-to-float p1, p2

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    const/4 p1, 0x3

    .line 71
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->setState(I)V

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setX(F)V

    const/4 p1, 0x2

    .line 73
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->setState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 9
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    .line 10
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 12
    sget v1, Lsmartisan/widget/R$layout;->quickbar_ex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$drawable;->letters_bar_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Li/r/c;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/letters/QuickBarEx;->i:I

    .line 14
    sget v0, Lsmartisan/widget/R$dimen;->smartisan_quickbar_grid_item_space:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 15
    sget v1, Lsmartisan/widget/R$dimen;->quickbar_ex_grid_column_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 16
    sget v2, Lsmartisan/widget/R$dimen;->smartisan_quickbar_min_distance:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/letters/QuickBarEx;->O:I

    .line 17
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lsmartisan/widget/R$drawable;->letters_bar_background_shadow:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Li/r/c;->b(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/letters/QuickBarEx;->j:I

    mul-int/lit8 v0, v0, 0x2

    .line 18
    iget p1, p0, Lsmartisan/widget/letters/QuickBarEx;->i:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lsmartisan/widget/R$integer;->smartisan_letterbar_gridview_column_num:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iget p1, p0, Lsmartisan/widget/letters/QuickBarEx;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lsmartisan/widget/letters/QuickBarEx;->h:I

    .line 19
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->f()V

    .line 20
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->d()V

    .line 21
    sget p1, Lsmartisan/widget/R$id;->iv_letter_bar_shadow:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->d:Landroid/view/View;

    const/4 p1, 0x0

    .line 22
    invoke-direct {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->setLettersBarBg(Z)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 10

    .line 24
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li/t/f/a;->j(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_6

    .line 28
    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    if-eqz v1, :cond_a

    new-array v2, v2, [I

    .line 29
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v1, -0x1

    move v6, v5

    .line 30
    :goto_0
    iget-object v7, p0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 31
    iget-object v7, p0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 32
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 33
    invoke-virtual {v7, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 34
    aget v7, v2, v5

    sub-int v7, v0, v7

    aget v9, v2, v4

    sub-int v9, p1, v9

    invoke-virtual {v8, v7, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v1, :cond_4

    .line 35
    iget p1, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    if-eq p1, v1, :cond_5

    .line 36
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 38
    invoke-virtual {p0, v3}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/view/View;)V

    .line 39
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 40
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/view/View;)V

    goto :goto_2

    .line 44
    :cond_4
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 45
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 46
    invoke-virtual {p0, v3}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/view/View;)V

    .line 47
    :cond_5
    :goto_2
    iput v1, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    goto :goto_4

    .line 48
    :cond_6
    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    if-eqz v1, :cond_a

    new-array v2, v2, [I

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->getLocationOnScreen([I)V

    .line 50
    aget v1, v2, v5

    sub-int/2addr v0, v1

    .line 51
    aget v1, v2, v4

    sub-int/2addr p1, v1

    .line 52
    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v1, v0, p1}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result p1

    if-ltz p1, :cond_8

    .line 53
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    if-eq v0, p1, :cond_9

    .line 54
    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 55
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 56
    invoke-virtual {p0, v3}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/view/View;)V

    .line 57
    :cond_7
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 58
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 59
    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0, v0}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/view/View;)V

    goto :goto_3

    .line 62
    :cond_8
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 63
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 64
    invoke-virtual {p0, v3}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/view/View;)V

    .line 65
    :cond_9
    :goto_3
    iput p1, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    :cond_a
    :goto_4
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 11

    if-nez p1, :cond_1

    .line 180
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 183
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    .line 184
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 185
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lsmartisan/widget/R$layout;->surname_second_popup_ex:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->S:Landroid/view/ViewGroup;

    .line 188
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->S:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->T:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->S:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->M:Landroid/widget/TextView;

    .line 190
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lsmartisan/widget/letters/QuickBarEx;->S:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 191
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original anchorViewLocation[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", anchorViewLocation[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QuickBarEx"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 194
    iget-object v6, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-static {v6}, Li/g;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-ge v6, v7, :cond_3

    .line 195
    invoke-static {v4}, Li/l;->a(Landroid/view/View;)[I

    move-result-object v4

    goto :goto_0

    :cond_3
    new-array v6, v0, [I

    .line 196
    invoke-virtual {v4, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object v4, v6

    .line 197
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rootViewLocation[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", rootViewLocation[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 199
    iget-object v7, p0, Lsmartisan/widget/letters/QuickBarEx;->M:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v7, p0, Lsmartisan/widget/letters/QuickBarEx;->M:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 201
    iget-object v7, p0, Lsmartisan/widget/letters/QuickBarEx;->M:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    invoke-virtual {p0, v7, v8}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v7

    add-int/2addr v6, v7

    const-wide/high16 v7, 0x4074000000000000L    # 320.0

    .line 202
    invoke-virtual {p0, v7, v8}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v7

    if-le v6, v7, :cond_4

    move v6, v7

    .line 203
    :cond_4
    iget-object v7, p0, Lsmartisan/widget/letters/QuickBarEx;->M:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 206
    aget v10, v3, v2

    aget v2, v4, v2

    sub-int/2addr v10, v2

    div-int/2addr v8, v0

    add-int/2addr v10, v8

    .line 207
    aget v2, v3, v1

    aget v1, v4, v1

    sub-int/2addr v2, v1

    div-int/2addr v9, v0

    add-int/2addr v2, v9

    .line 208
    div-int/lit8 v1, v6, 0x2

    sub-int v3, v10, v1

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x14

    new-array v0, v0, [I

    .line 209
    iget-object v4, p0, Lsmartisan/widget/letters/QuickBarEx;->T:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 210
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->T:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    if-gez v3, :cond_5

    .line 211
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->T:Landroid/view/View;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_5
    add-int/2addr v10, v1

    .line 212
    invoke-direct {p0}, Lsmartisan/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v0

    if-le v10, v0, :cond_6

    .line 213
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->T:Landroid/view/View;

    invoke-direct {p0}, Lsmartisan/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v1

    sub-int/2addr v10, v1

    int-to-float v1, v10

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 214
    :cond_6
    :goto_1
    sget-boolean v0, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v0, :cond_7

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anchorView.getWidth() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", anchorView.getHeight() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_7
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->L:Landroid/widget/PopupWindow;

    const/16 v0, 0x33

    invoke-virtual {p1, p0, v0, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 75
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->q:Lsmartisan/widget/letters/QuickBarEx$SurnameListener;

    if-eqz v2, :cond_18

    .line 76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lsmartisan/widget/letters/QuickBarEx;->e:Lsmartisan/widget/letters/QuickBarEx$l;

    invoke-virtual {v3, v1}, Lsmartisan/widget/letters/QuickBarEx$l;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Li/t/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->q:Lsmartisan/widget/letters/QuickBarEx$SurnameListener;

    iget-object v3, v0, Lsmartisan/widget/letters/QuickBarEx;->e:Lsmartisan/widget/letters/QuickBarEx$l;

    invoke-virtual {v3, v1}, Lsmartisan/widget/letters/QuickBarEx$l;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lsmartisan/widget/letters/QuickBarEx$SurnameListener;->getMatchedSurnames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 78
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_a

    .line 79
    :cond_1
    iget-object v3, v0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lsmartisan/widget/R$layout;->surname_flow_popup:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 80
    sget v4, Lsmartisan/widget/R$id;->surname_content:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lsmartisan/widget/letters/SurnameFlowLayout;

    iput-object v4, v0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    .line 81
    invoke-virtual {v0, v6, v7}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v4

    iput v4, v0, Lsmartisan/widget/letters/QuickBarEx;->D:I

    const-wide v6, 0x4071b00000000000L    # 283.0

    .line 82
    invoke-virtual {v0, v6, v7}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v4

    iput v4, v0, Lsmartisan/widget/letters/QuickBarEx;->E:I

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    .line 83
    invoke-virtual {v0, v6, v7}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v4

    iput v4, v0, Lsmartisan/widget/letters/QuickBarEx;->B:I

    const-wide v6, 0x4040800000000000L    # 33.0

    .line 84
    invoke-virtual {v0, v6, v7}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v4

    iput v4, v0, Lsmartisan/widget/letters/QuickBarEx;->C:I

    const/16 v4, 0x8

    .line 85
    iput v4, v0, Lsmartisan/widget/letters/QuickBarEx;->J:I

    const-wide v6, 0x4058800000000000L    # 98.0

    .line 86
    invoke-virtual {v0, v6, v7}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v4

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lsmartisan/widget/R$drawable;->surname_popup_item_left:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 88
    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->J:I

    iget v8, v0, Lsmartisan/widget/letters/QuickBarEx;->B:I

    mul-int/2addr v7, v8

    .line 89
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const/4 v15, -0x2

    if-eqz v14, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 90
    iget-object v9, v0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Lsmartisan/widget/R$layout;->surname_popup_item_ex:I

    invoke-virtual {v9, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 91
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v10, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v10, v15, v15}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 93
    iget v15, v0, Lsmartisan/widget/letters/QuickBarEx;->C:I

    iput v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 94
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v17, v6

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 95
    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v15

    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v9, v15, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 97
    sget v6, Lsmartisan/widget/R$drawable;->surname_popup_item_special:I

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 98
    :cond_2
    sget v6, Lsmartisan/widget/R$drawable;->surname_popup_item_left:I

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    :goto_1
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 100
    invoke-virtual {v6, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v6, v14

    if-eqz v17, :cond_3

    .line 101
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    if-lez v14, :cond_3

    move/from16 v16, v11

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    .line 102
    invoke-virtual {v0, v10, v11}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v15

    add-int/2addr v15, v6

    if-le v14, v15, :cond_4

    .line 103
    invoke-virtual {v0, v10, v11}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v6

    sub-int/2addr v14, v6

    goto :goto_2

    :cond_3
    move/from16 v16, v11

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    :cond_4
    move v14, v6

    :goto_2
    if-le v14, v4, :cond_5

    move v14, v4

    .line 104
    :cond_5
    invoke-virtual {v0, v10, v11}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v6

    add-int/2addr v14, v6

    add-int v6, v13, v14

    if-le v6, v7, :cond_6

    add-int/lit8 v11, v16, 0x1

    const/4 v13, 0x0

    goto :goto_3

    :cond_6
    move/from16 v11, v16

    :goto_3
    add-int/2addr v13, v14

    if-le v12, v13, :cond_7

    goto :goto_4

    :cond_7
    move v12, v13

    .line 105
    :goto_4
    new-instance v6, Lsmartisan/widget/letters/QuickBarEx$j;

    invoke-direct {v6, v0}, Lsmartisan/widget/letters/QuickBarEx$j;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v6, Lsmartisan/widget/letters/QuickBarEx$k;

    invoke-direct {v6, v0, v9}, Lsmartisan/widget/letters/QuickBarEx$k;-><init>(Lsmartisan/widget/letters/QuickBarEx;Landroid/widget/TextView;)V

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v6, v0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v6, v17

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_8
    move v9, v11

    .line 108
    iput v9, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    .line 109
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 110
    sget-boolean v2, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    const-string v4, "QuickBarEx"

    if-eqz v2, :cond_9

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "surname FlowLayout, width = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "surname FlowLayout, measuredHeight = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_9
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 115
    iget-object v6, v0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    if-nez v2, :cond_a

    .line 117
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    .line 118
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v15, v15}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 119
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 121
    :cond_a
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x2

    new-array v5, v2, [I

    new-array v6, v2, [I

    .line 122
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 123
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    new-array v5, v2, [I

    move-object/from16 v6, p1

    .line 124
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v7, 0x0

    .line 125
    aget v8, v5, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v2

    add-int/2addr v8, v7

    const/4 v7, 0x1

    .line 126
    aget v9, v5, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v2

    add-int/2addr v9, v6

    .line 127
    sget-boolean v6, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v6, :cond_b

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alphabet anchorX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget v10, v5, v7

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", anchorY = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget v5, v5, v10

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    .line 129
    :goto_5
    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    .line 130
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 132
    sget-boolean v7, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v7, :cond_c

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "popMeasureWidth = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", popMeasureHeight = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_c
    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->K:I

    if-ge v1, v7, :cond_d

    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    const/4 v10, 0x1

    if-gt v7, v10, :cond_11

    goto :goto_6

    :cond_d
    const/4 v10, 0x1

    :goto_6
    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->K:I

    const/4 v11, 0x3

    if-lt v1, v7, :cond_e

    mul-int/2addr v7, v2

    if-ge v1, v7, :cond_e

    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    if-gt v7, v11, :cond_11

    :cond_e
    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->K:I

    mul-int/lit8 v13, v7, 0x2

    if-lt v1, v13, :cond_f

    mul-int/2addr v7, v11

    if-ge v1, v7, :cond_f

    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    const/4 v11, 0x5

    if-gt v7, v11, :cond_11

    :cond_f
    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->K:I

    mul-int/lit8 v11, v7, 0x3

    if-lt v1, v11, :cond_10

    mul-int/lit8 v7, v7, 0x4

    if-ge v1, v7, :cond_10

    iget v1, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    const/4 v7, 0x7

    if-le v1, v7, :cond_10

    goto :goto_7

    :cond_10
    const/4 v10, 0x0

    :cond_11
    :goto_7
    if-eqz v10, :cond_12

    .line 135
    sget v1, Lsmartisan/widget/R$id;->surname_popup_top_arrow:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 136
    iget v6, v0, Lsmartisan/widget/letters/QuickBarEx;->D:I

    add-int/2addr v9, v6

    goto :goto_8

    .line 137
    :cond_12
    sget v1, Lsmartisan/widget/R$id;->surname_popup_bottom_arrow:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sub-int/2addr v9, v6

    .line 138
    iget v6, v0, Lsmartisan/widget/letters/QuickBarEx;->D:I

    sub-int/2addr v9, v6

    :goto_8
    const/4 v6, 0x0

    .line 139
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    invoke-virtual {v1, v6, v6}, Landroid/widget/ImageView;->measure(II)V

    .line 141
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    .line 142
    sget-boolean v7, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v7, :cond_13

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowWidth = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_13
    invoke-direct/range {p0 .. p0}, Lsmartisan/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v7

    sub-int/2addr v7, v8

    div-int/lit8 v10, v5, 0x2

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v8, v10

    sub-int/2addr v5, v7

    .line 145
    div-int/2addr v6, v2

    sub-int/2addr v5, v6

    .line 146
    sget v2, Lsmartisan/widget/R$id;->surname_top_mask:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 147
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 149
    sget v7, Lsmartisan/widget/R$id;->surname_bottom_mask:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 150
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 151
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 152
    sget v11, Lsmartisan/widget/R$id;->surname_container:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 153
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    iget-object v13, v0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    iget v14, v0, Lsmartisan/widget/letters/QuickBarEx;->E:I

    if-le v13, v14, :cond_14

    .line 155
    iput v14, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 156
    :cond_14
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget v11, v0, Lsmartisan/widget/letters/QuickBarEx;->J:I

    iget v13, v0, Lsmartisan/widget/letters/QuickBarEx;->B:I

    mul-int/2addr v11, v13

    if-ne v12, v11, :cond_15

    const-wide/high16 v11, 0x402c000000000000L    # 14.0

    .line 158
    invoke-virtual {v0, v11, v12}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v11

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v0, v12, v13}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v12

    const-wide/high16 v13, 0x4031000000000000L    # 17.0

    invoke-virtual {v0, v13, v14}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v13

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    invoke-virtual {v0, v14, v15}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v14

    invoke-virtual {v3, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v11, Lsmartisan/widget/R$dimen;->surname_arrow_offset_x:I

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v5, v3

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    .line 160
    invoke-virtual {v0, v11, v12}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v3

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 161
    invoke-virtual {v0, v11, v12}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v3

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 162
    iget v3, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    invoke-virtual {v0, v11, v12}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v13

    sub-int/2addr v3, v13

    iput v3, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 163
    iget v3, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v11, v12}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v11

    sub-int/2addr v3, v11

    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_9

    :cond_15
    add-int/lit8 v8, v8, -0x1

    .line 164
    :goto_9
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v2, v5

    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    iget v2, v0, Lsmartisan/widget/letters/QuickBarEx;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_16

    const-string v1, "GridView is hiding now..."

    .line 168
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_16
    iget-object v1, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_17
    :goto_a
    return-void

    .line 170
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must implements SurnameListener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Z)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->a()V

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->g()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->c()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lsmartisan/widget/letters/QuickBarEx;->a(Z)V

    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 5
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->q:Lsmartisan/widget/letters/QuickBarEx$SurnameListener;

    if-eqz v2, :cond_15

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lsmartisan/widget/letters/QuickBarEx;->e:Lsmartisan/widget/letters/QuickBarEx$l;

    invoke-virtual {v3, v1}, Lsmartisan/widget/letters/QuickBarEx$l;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Li/t/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->q:Lsmartisan/widget/letters/QuickBarEx$SurnameListener;

    iget-object v3, v0, Lsmartisan/widget/letters/QuickBarEx;->e:Lsmartisan/widget/letters/QuickBarEx$l;

    invoke-virtual {v3, v1}, Lsmartisan/widget/letters/QuickBarEx$l;->getItem(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lsmartisan/widget/letters/QuickBarEx$SurnameListener;->getMatchedSurnames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 9
    :cond_1
    new-instance v3, Lsmartisan/widget/letters/QuickBarEx$m;

    iget-object v4, v0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-direct {v3, v0, v4, v2}, Lsmartisan/widget/letters/QuickBarEx$m;-><init>(Lsmartisan/widget/letters/QuickBarEx;Landroid/content/Context;Ljava/util/List;)V

    .line 10
    iget-object v4, v0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$layout;->surname_popup:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 11
    sget v5, Lsmartisan/widget/R$id;->surname_content:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lsmartisan/widget/SurnameGridView;

    iput-object v5, v0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    .line 12
    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v5

    iput v5, v0, Lsmartisan/widget/letters/QuickBarEx;->D:I

    const-wide v5, 0x4040800000000000L    # 33.0

    .line 13
    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v5

    iput v5, v0, Lsmartisan/widget/letters/QuickBarEx;->C:I

    const-wide v5, 0x4071b00000000000L    # 283.0

    .line 14
    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v5

    iput v5, v0, Lsmartisan/widget/letters/QuickBarEx;->E:I

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    .line 15
    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v5

    iput v5, v0, Lsmartisan/widget/letters/QuickBarEx;->F:I

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    .line 16
    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v5

    iput v5, v0, Lsmartisan/widget/letters/QuickBarEx;->G:I

    const/16 v5, 0x8

    .line 17
    iput v5, v0, Lsmartisan/widget/letters/QuickBarEx;->J:I

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    .line 18
    invoke-virtual {v0, v6, v7}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v8

    iput v8, v0, Lsmartisan/widget/letters/QuickBarEx;->B:I

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    iget v9, v0, Lsmartisan/widget/letters/QuickBarEx;->J:I

    if-lt v8, v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    iput v9, v0, Lsmartisan/widget/letters/QuickBarEx;->H:I

    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    iget v2, v0, Lsmartisan/widget/letters/QuickBarEx;->H:I

    int-to-double v12, v2

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    iput v2, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    .line 21
    iget v2, v0, Lsmartisan/widget/letters/QuickBarEx;->H:I

    iget v8, v0, Lsmartisan/widget/letters/QuickBarEx;->B:I

    mul-int/2addr v2, v8

    iget v8, v0, Lsmartisan/widget/letters/QuickBarEx;->G:I

    const/4 v9, 0x2

    mul-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 22
    iget v8, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    if-le v8, v5, :cond_3

    iget v8, v0, Lsmartisan/widget/letters/QuickBarEx;->E:I

    goto :goto_1

    :cond_3
    iget v12, v0, Lsmartisan/widget/letters/QuickBarEx;->C:I

    mul-int/2addr v8, v12

    :goto_1
    iget v12, v0, Lsmartisan/widget/letters/QuickBarEx;->F:I

    mul-int/2addr v12, v9

    add-int/2addr v8, v12

    .line 23
    sget-boolean v12, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    const-string v13, "QuickBarEx"

    if-eqz v12, :cond_4

    .line 24
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "surname GridView, width = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", height = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_4
    iget-object v12, v0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    iget v14, v0, Lsmartisan/widget/letters/QuickBarEx;->H:I

    invoke-virtual {v12, v14}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 26
    iget-object v12, v0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v14}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Landroid/widget/GridView;->setGravity(I)V

    .line 28
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    new-instance v3, Lsmartisan/widget/letters/QuickBarEx$a;

    invoke-direct {v3, v0}, Lsmartisan/widget/letters/QuickBarEx$a;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v2, v3}, Lsmartisan/widget/SurnameGridView;->setOnPressChangeListener(Lsmartisan/widget/SurnameGridView$OnPressChangeListener;)V

    .line 30
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    new-instance v3, Lsmartisan/widget/letters/QuickBarEx$b;

    invoke-direct {v3, v0}, Lsmartisan/widget/letters/QuickBarEx$b;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 32
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    .line 33
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    const/4 v8, -0x2

    invoke-virtual {v2, v8, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 34
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x106000d

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 36
    :cond_5
    iget-object v2, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    new-array v2, v9, [I

    new-array v8, v9, [I

    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 38
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    new-array v2, v9, [I

    move-object/from16 v8, p1

    .line 39
    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 40
    sget-boolean v12, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v12, :cond_6

    .line 41
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "alphabetView.getWidth = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", alphabetView.getHeight = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v12, 0x0

    .line 42
    aget v14, v2, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/2addr v15, v9

    add-int/2addr v14, v15

    .line 43
    aget v15, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v9

    add-int/2addr v15, v8

    .line 44
    sget-boolean v8, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v8, :cond_7

    .line 45
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alphabet anchorX = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v2, v12

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", anchorY = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v3

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_7
    invoke-virtual {v4, v12, v12}, Landroid/view/View;->measure(II)V

    .line 47
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 49
    sget-boolean v10, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v10, :cond_8

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "popMeasureWidth = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", popMeasureHeight = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_8
    iget v10, v0, Lsmartisan/widget/letters/QuickBarEx;->K:I

    if-ge v1, v10, :cond_9

    iget v10, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    if-gt v10, v3, :cond_c

    :cond_9
    iget v10, v0, Lsmartisan/widget/letters/QuickBarEx;->K:I

    const/4 v11, 0x3

    if-lt v1, v10, :cond_a

    mul-int/2addr v10, v9

    if-ge v1, v10, :cond_a

    iget v10, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    if-gt v10, v11, :cond_c

    :cond_a
    iget v10, v0, Lsmartisan/widget/letters/QuickBarEx;->K:I

    mul-int/lit8 v3, v10, 0x2

    if-lt v1, v3, :cond_b

    mul-int/2addr v10, v11

    if-ge v1, v10, :cond_b

    iget v3, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    const/4 v10, 0x5

    if-gt v3, v10, :cond_c

    :cond_b
    iget v3, v0, Lsmartisan/widget/letters/QuickBarEx;->K:I

    mul-int/lit8 v10, v3, 0x3

    if-lt v1, v10, :cond_d

    mul-int/lit8 v3, v3, 0x4

    if-ge v1, v3, :cond_d

    iget v1, v0, Lsmartisan/widget/letters/QuickBarEx;->I:I

    const/4 v3, 0x7

    if-le v1, v3, :cond_d

    :cond_c
    const/16 v16, 0x1

    goto :goto_2

    :cond_d
    move/from16 v16, v12

    :goto_2
    if-eqz v16, :cond_e

    .line 52
    sget v1, Lsmartisan/widget/R$id;->surname_popup_top_arrow:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 53
    iget v3, v0, Lsmartisan/widget/letters/QuickBarEx;->D:I

    add-int/2addr v15, v3

    goto :goto_3

    .line 54
    :cond_e
    sget v1, Lsmartisan/widget/R$id;->surname_popup_bottom_arrow:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sub-int/2addr v15, v8

    .line 55
    iget v3, v0, Lsmartisan/widget/letters/QuickBarEx;->D:I

    sub-int/2addr v15, v3

    .line 56
    :goto_3
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {v1, v12, v12}, Landroid/widget/ImageView;->measure(II)V

    .line 58
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    .line 59
    sget-boolean v8, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v8, :cond_f

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowWidth = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_f
    invoke-direct/range {p0 .. p0}, Lsmartisan/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v8

    sub-int/2addr v8, v14

    div-int/lit8 v10, v2, 0x2

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v10, v14, v10

    sub-int/2addr v2, v8

    .line 62
    div-int/2addr v3, v9

    sub-int/2addr v2, v3

    .line 63
    sget v8, Lsmartisan/widget/R$id;->surname_top_mask:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    iget v12, v0, Lsmartisan/widget/letters/QuickBarEx;->H:I

    iget v9, v0, Lsmartisan/widget/letters/QuickBarEx;->B:I

    mul-int/2addr v12, v9

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 66
    sget v9, Lsmartisan/widget/R$id;->surname_bottom_mask:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    iget v6, v0, Lsmartisan/widget/letters/QuickBarEx;->H:I

    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->B:I

    mul-int/2addr v6, v7

    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 69
    sget v6, Lsmartisan/widget/R$id;->surname_container:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 70
    iget v6, v0, Lsmartisan/widget/letters/QuickBarEx;->H:I

    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->J:I

    if-ne v6, v7, :cond_11

    const-wide/high16 v5, 0x402c000000000000L    # 14.0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const/16 v8, 0x8

    if-ne v7, v8, :cond_10

    .line 71
    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v5

    const-wide/high16 v6, 0x4031000000000000L    # 17.0

    invoke-virtual {v0, v6, v7}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v6

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    invoke-virtual {v0, v7, v8}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v7

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lsmartisan/widget/R$dimen;->surname_arrow_offset_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    .line 73
    invoke-virtual {v0, v3, v4}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v5

    iput v5, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 74
    invoke-virtual {v0, v3, v4}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v3

    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_10
    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    .line 75
    invoke-virtual {v0, v7, v8}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v2

    const/16 v7, 0x8

    mul-int/2addr v2, v7

    iget v7, v0, Lsmartisan/widget/letters/QuickBarEx;->H:I

    iget v8, v0, Lsmartisan/widget/letters/QuickBarEx;->B:I

    mul-int/2addr v7, v8

    sub-int/2addr v2, v7

    const/4 v7, 0x2

    div-int/2addr v2, v7

    .line 76
    invoke-virtual {v0, v5, v6}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v5

    add-int/2addr v5, v2

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-virtual {v0, v6, v7}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v6

    const-wide/high16 v7, 0x4031000000000000L    # 17.0

    invoke-virtual {v0, v7, v8}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v7

    add-int/2addr v7, v2

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-virtual {v0, v8, v9}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sub-int v3, v14, v3

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 77
    invoke-virtual {v0, v4, v5}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v6

    add-int/2addr v6, v2

    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 78
    invoke-virtual {v0, v4, v5}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move v2, v3

    goto :goto_4

    :cond_11
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    add-int/lit8 v10, v10, -0x1

    .line 79
    :goto_4
    sget-boolean v3, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v3, :cond_12

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrowTranslationX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    int-to-float v2, v2

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v8, v17

    .line 82
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v9, v18

    .line 83
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    iget v2, v0, Lsmartisan/widget/letters/QuickBarEx;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lsmartisan/widget/letters/QuickBarEx;->a(D)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    const-string v1, "GridView is hiding now..."

    .line 85
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_13
    iget-object v1, v0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v10, v15}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_14
    :goto_5
    return-void

    .line 87
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must implements SurnameListener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()V
    .locals 5

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->a()V

    .line 4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lsmartisan/widget/letters/QuickBarEx;->f:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "x"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    .line 6
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0xc8

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 9
    new-instance v1, Lsmartisan/widget/letters/QuickBarEx$i;

    invoke-direct {v1, p0}, Lsmartisan/widget/letters/QuickBarEx$i;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 3
    sget v0, Lsmartisan/widget/R$id;->quickbar_right_grid_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->c:Landroid/widget/GridView;

    .line 4
    new-instance v0, Lsmartisan/widget/letters/QuickBarEx$l;

    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lsmartisan/widget/letters/QuickBarEx$l;-><init>(Lsmartisan/widget/letters/QuickBarEx;Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->e:Lsmartisan/widget/letters/QuickBarEx$l;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->e:Lsmartisan/widget/letters/QuickBarEx$l;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li/t/f/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/letters/QuickBarEx$l;->a([Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->c:Landroid/widget/GridView;

    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->e:Lsmartisan/widget/letters/QuickBarEx$l;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->c:Landroid/widget/GridView;

    new-instance v1, Lsmartisan/widget/letters/QuickBarEx$e;

    invoke-direct {v1, p0}, Lsmartisan/widget/letters/QuickBarEx$e;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->c:Landroid/widget/GridView;

    new-instance v1, Lsmartisan/widget/letters/QuickBarEx$f;

    invoke-direct {v1, p0}, Lsmartisan/widget/letters/QuickBarEx$f;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->c:Landroid/widget/GridView;

    new-instance v1, Lsmartisan/widget/letters/QuickBarEx$g;

    invoke-direct {v1, p0}, Lsmartisan/widget/letters/QuickBarEx$g;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li/t/f/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/letters/QuickBarEx;->getParentxPos()V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lsmartisan/widget/letters/QuickBarEx;->N:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_d

    const/4 v6, 0x2

    if-eq v0, v5, :cond_6

    if-eq v0, v6, :cond_1

    if-eq v0, v3, :cond_6

    goto/16 :goto_1

    .line 8
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/letters/QuickBarEx;->P:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lsmartisan/widget/letters/QuickBarEx;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 10
    :cond_2
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->o:F

    iput v0, p0, Lsmartisan/widget/letters/QuickBarEx;->n:F

    .line 11
    iput v1, p0, Lsmartisan/widget/letters/QuickBarEx;->o:F

    .line 12
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    if-ne v0, v5, :cond_3

    .line 13
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->f:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_10

    .line 14
    invoke-direct {p0, v6}, Lsmartisan/widget/letters/QuickBarEx;->setState(I)V

    .line 15
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->m:F

    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/letters/QuickBarEx;->a(FF)V

    .line 16
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->p:Lsmartisan/widget/letters/QuickBarEx$QBListener;

    if-eqz v0, :cond_4

    .line 17
    invoke-interface {v0}, Lsmartisan/widget/letters/QuickBarEx$QBListener;->onLetterGridShow()V

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_5

    .line 18
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->m:F

    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/letters/QuickBarEx;->a(FF)V

    .line 19
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    if-ne v0, v5, :cond_4

    .line 20
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->p:Lsmartisan/widget/letters/QuickBarEx$QBListener;

    if-eqz v0, :cond_4

    .line 21
    invoke-interface {v0}, Lsmartisan/widget/letters/QuickBarEx$QBListener;->onLetterGridHidden()V

    :cond_4
    :goto_0
    move v0, v5

    goto/16 :goto_2

    :cond_5
    if-ne v0, v3, :cond_10

    .line 22
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->o:F

    iget v2, p0, Lsmartisan/widget/letters/QuickBarEx;->n:F

    sub-float/2addr v0, v2

    iget v3, p0, Lsmartisan/widget/letters/QuickBarEx;->O:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_10

    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->g:I

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_10

    .line 23
    invoke-direct {p0, v6}, Lsmartisan/widget/letters/QuickBarEx;->setState(I)V

    .line 24
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->m:F

    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/letters/QuickBarEx;->a(FF)V

    goto :goto_0

    .line 25
    :cond_6
    iget-boolean v0, p0, Lsmartisan/widget/letters/QuickBarEx;->P:Z

    if-eqz v0, :cond_a

    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li/t/f/a;->j(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v5, :cond_8

    .line 27
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    if-ltz v0, :cond_7

    iget-object v2, p0, Lsmartisan/widget/letters/QuickBarEx;->A:Lsmartisan/widget/letters/SurnameFlowLayout;

    if-eqz v2, :cond_7

    .line 28
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 31
    :cond_7
    iput v1, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    goto/16 :goto_1

    .line 32
    :cond_8
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    if-ltz v0, :cond_9

    iget-object v2, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    if-eqz v2, :cond_9

    .line 33
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 34
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 35
    iget-object v2, p0, Lsmartisan/widget/letters/QuickBarEx;->z:Lsmartisan/widget/SurnameGridView;

    iget v3, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    const-wide/16 v6, -0x1

    invoke-virtual {v2, v0, v3, v6, v7}, Landroid/widget/GridView;->performItemClick(Landroid/view/View;IJ)Z

    .line 36
    :cond_9
    iput v1, p0, Lsmartisan/widget/letters/QuickBarEx;->Q:I

    goto :goto_1

    .line 37
    :cond_a
    iput v2, p0, Lsmartisan/widget/letters/QuickBarEx;->m:F

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx;->f:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    .line 39
    invoke-direct {p0, v4}, Lsmartisan/widget/letters/QuickBarEx;->setLettersBarBg(Z)V

    goto :goto_1

    .line 40
    :cond_b
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    if-ne v0, v6, :cond_10

    .line 41
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->o:F

    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx;->n:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    invoke-direct {p0}, Lsmartisan/widget/letters/QuickBarEx;->getScreenWidth()I

    move-result v1

    add-int/lit16 v1, v1, -0x96

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 42
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->j()V

    goto/16 :goto_0

    .line 43
    :cond_c
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->c()V

    goto/16 :goto_0

    .line 44
    :cond_d
    iput-boolean v4, p0, Lsmartisan/widget/letters/QuickBarEx;->P:Z

    .line 45
    iput v1, p0, Lsmartisan/widget/letters/QuickBarEx;->o:F

    iput v1, p0, Lsmartisan/widget/letters/QuickBarEx;->n:F

    .line 46
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    if-ne v0, v5, :cond_e

    .line 47
    iput v2, p0, Lsmartisan/widget/letters/QuickBarEx;->m:F

    .line 48
    :cond_e
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    if-ne v0, v3, :cond_f

    .line 49
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->g:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lsmartisan/widget/letters/QuickBarEx;->m:F

    .line 50
    :cond_f
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    if-ne v0, v3, :cond_10

    .line 51
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_10
    :goto_1
    move v0, v4

    :goto_2
    if-nez v0, :cond_11

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_11
    move v4, v5

    :cond_12
    return v4
.end method

.method public e()V
    .locals 5

    .line 3
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->u:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 5
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/letters/QuickBarEx;->u:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 6
    iget-object v3, p0, Lsmartisan/widget/letters/QuickBarEx;->t:Ljava/util/List;

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lsmartisan/widget/letters/QuickBarEx;->v:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    invoke-static {v2, v4}, Li/t/f/b;->a(Ljava/lang/String;[Landroid/graphics/Bitmap;)Li/t/f/b;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    array-length v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 8
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Li/t/f/c;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 9
    :goto_2
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_3

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Li/t/f/c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-object v3, p0, Lsmartisan/widget/letters/QuickBarEx;->t:Ljava/util/List;

    aget-object v4, v2, v1

    invoke-static {v4}, Li/t/f/b;->b(Ljava/lang/String;)Li/t/f/b;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 12
    :cond_2
    iget-object v3, p0, Lsmartisan/widget/letters/QuickBarEx;->t:Ljava/util/List;

    aget-object v4, v2, v1

    invoke-static {v4}, Li/t/f/b;->a(Ljava/lang/String;)Li/t/f/b;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_3
    iget-boolean v1, p0, Lsmartisan/widget/letters/QuickBarEx;->w:Z

    if-eqz v1, :cond_5

    .line 14
    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx;->x:I

    if-ne v1, v4, :cond_4

    .line 15
    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->t:Ljava/util/List;

    sget-object v2, Li/t/f/b;->d:Li/t/f/b;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 16
    :cond_4
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->t:Ljava/util/List;

    sget-object v1, Li/t/f/b;->d:Li/t/f/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 2
    sget v0, Lsmartisan/widget/R$id;->quickbar_left_letters_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/letters/LettersBar;

    iput-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->b:Lsmartisan/widget/letters/LettersBar;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->b:Lsmartisan/widget/letters/LettersBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    iget v1, p0, Lsmartisan/widget/letters/QuickBarEx;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->b:Lsmartisan/widget/letters/LettersBar;

    iget-object v1, p0, Lsmartisan/widget/letters/QuickBarEx;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Lsmartisan/widget/letters/LettersBar;->setLetters(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->b:Lsmartisan/widget/letters/LettersBar;

    new-instance v1, Lsmartisan/widget/letters/QuickBarEx$c;

    invoke-direct {v1, p0}, Lsmartisan/widget/letters/QuickBarEx$c;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/letters/LettersBar;->setListener(Lsmartisan/widget/letters/LettersBar$LBListener;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->b:Lsmartisan/widget/letters/LettersBar;

    new-instance v1, Lsmartisan/widget/letters/QuickBarEx$d;

    invoke-direct {v1, p0}, Lsmartisan/widget/letters/QuickBarEx$d;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/letters/LettersBar;->setOnBackgroundVisibleChangedListener(Lsmartisan/widget/letters/LettersBar$OnBackgroundVisibleChangedListener;)V

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/letters/QuickBarEx;->e()V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/letters/QuickBarEx;->r:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->l:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getLetterBar()Lsmartisan/widget/letters/LettersBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->b:Lsmartisan/widget/letters/LettersBar;

    return-object v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lsmartisan/widget/letters/QuickBarEx;->setState(I)V

    .line 3
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->f:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setX(F)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lsmartisan/widget/letters/QuickBarEx;->setLettersBarBg(Z)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 2
    iget v0, p0, Lsmartisan/widget/letters/QuickBarEx;->g:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setX(F)V

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lsmartisan/widget/letters/QuickBarEx;->setState(I)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lsmartisan/widget/letters/QuickBarEx;->setLettersBarBg(Z)V

    return-void
.end method

.method public final j()V
    .locals 5

    .line 2
    iget-object v0, p0, Lsmartisan/widget/letters/QuickBarEx;->p:Lsmartisan/widget/letters/QuickBarEx$QBListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lsmartisan/widget/letters/QuickBarEx$QBListener;->onLetterGridShow()V

    .line 4
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lsmartisan/widget/letters/QuickBarEx;->g:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "x"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    .line 6
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0xc8

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 9
    new-instance v1, Lsmartisan/widget/letters/QuickBarEx$h;

    invoke-direct {v1, p0}, Lsmartisan/widget/letters/QuickBarEx$h;-><init>(Lsmartisan/widget/letters/QuickBarEx;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0, p2}, Lsmartisan/widget/letters/QuickBarEx;->a(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/letters/QuickBarEx;->k:I

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    if-lez p2, :cond_1

    .line 6
    invoke-direct {p0, p2}, Lsmartisan/widget/letters/QuickBarEx;->setHostWidth(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    :cond_1
    :goto_0
    sget-boolean v0, Lsmartisan/widget/letters/QuickBarEx;->U:Z

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "measure width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  parentWidth:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickBarEx"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    if-ne p1, p0, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->y:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/letters/QuickBarEx;->R:Z

    return-void
.end method

.method public setPoundPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/letters/QuickBarEx;->x:I

    return-void
.end method

.method public setPoundVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/letters/QuickBarEx;->w:Z

    return-void
.end method

.method public setQBListener(Lsmartisan/widget/letters/QuickBarEx$QBListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->p:Lsmartisan/widget/letters/QuickBarEx$QBListener;

    return-void
.end method

.method public setSurnameListener(Lsmartisan/widget/letters/QuickBarEx$SurnameListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/letters/QuickBarEx;->q:Lsmartisan/widget/letters/QuickBarEx$SurnameListener;

    return-void
.end method
