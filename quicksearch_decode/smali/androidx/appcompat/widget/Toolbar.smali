.class public Landroidx/appcompat/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/Toolbar$d;,
        Landroidx/appcompat/widget/Toolbar$SavedState;,
        Landroidx/appcompat/widget/Toolbar$LayoutParams;,
        Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public final D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final F:[I

.field public G:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field public final H:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field public I:La/a/f/u;

.field public J:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public K:Landroidx/appcompat/widget/Toolbar$d;

.field public L:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public M:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public N:Z

.field public final O:Ljava/lang/Runnable;

.field public a:Landroidx/appcompat/widget/ActionMenuView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageButton;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Ljava/lang/CharSequence;

.field public h:Landroid/widget/ImageButton;

.field public i:Landroid/view/View;

.field public j:Landroid/content/Context;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:La/a/f/n;

.field public u:I

.field public v:I

.field public w:I

.field public x:Ljava/lang/CharSequence;

.field public y:Ljava/lang/CharSequence;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x800013

    .line 4
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->F:[I

    .line 8
    new-instance p1, Landroidx/appcompat/widget/Toolbar$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/Toolbar$a;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->H:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 9
    new-instance p1, Landroidx/appcompat/widget/Toolbar$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/Toolbar$b;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/R$styleable;->Toolbar:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, La/a/f/t;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)La/a/f/t;

    move-result-object p1

    .line 11
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {p1, p2, v1}, La/a/f/t;->g(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    .line 12
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {p1, p2, v1}, La/a/f/t;->g(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    .line 13
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_android_gravity:I

    iget p3, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    invoke-virtual {p1, p2, p3}, La/a/f/t;->e(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    .line 14
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_buttonGravity:I

    const/16 p3, 0x30

    invoke-virtual {p1, p2, p3}, La/a/f/t;->e(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    .line 15
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleMargin:I

    invoke-virtual {p1, p2, v1}, La/a/f/t;->b(II)I

    move-result p2

    .line 16
    sget p3, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {p1, p3}, La/a/f/t;->g(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 17
    sget p3, Landroidx/appcompat/R$styleable;->Toolbar_titleMargins:I

    invoke-virtual {p1, p3, p2}, La/a/f/t;->b(II)I

    move-result p2

    .line 18
    :cond_0
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    .line 19
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginStart:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, La/a/f/t;->b(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 20
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    .line 21
    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {p1, p2, p3}, La/a/f/t;->b(II)I

    move-result p2

    if-ltz p2, :cond_2

    .line 22
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    .line 23
    :cond_2
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {p1, p2, p3}, La/a/f/t;->b(II)I

    move-result p2

    if-ltz p2, :cond_3

    .line 24
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    .line 25
    :cond_3
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {p1, p2, p3}, La/a/f/t;->b(II)I

    move-result p2

    if-ltz p2, :cond_4

    .line 26
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    .line 27
    :cond_4
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {p1, p2, p3}, La/a/f/t;->c(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->o:I

    .line 28
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStart:I

    const/high16 v0, -0x80000000

    .line 29
    invoke-virtual {p1, p2, v0}, La/a/f/t;->b(II)I

    move-result p2

    .line 30
    sget v2, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEnd:I

    .line 31
    invoke-virtual {p1, v2, v0}, La/a/f/t;->b(II)I

    move-result v2

    .line 32
    sget v3, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetLeft:I

    .line 33
    invoke-virtual {p1, v3, v1}, La/a/f/t;->c(II)I

    move-result v3

    .line 34
    sget v4, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetRight:I

    .line 35
    invoke-virtual {p1, v4, v1}, La/a/f/t;->c(II)I

    move-result v4

    .line 36
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->f()V

    .line 37
    iget-object v5, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    invoke-virtual {v5, v3, v4}, La/a/f/n;->a(II)V

    if-ne p2, v0, :cond_5

    if-eq v2, v0, :cond_6

    .line 38
    :cond_5
    iget-object v3, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    invoke-virtual {v3, p2, v2}, La/a/f/n;->b(II)V

    .line 39
    :cond_6
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    invoke-virtual {p1, p2, v0}, La/a/f/t;->b(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    .line 40
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {p1, p2, v0}, La/a/f/t;->b(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    .line 41
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {p1, p2}, La/a/f/t;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/graphics/drawable/Drawable;

    .line 42
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {p1, p2}, La/a/f/t;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->g:Ljava/lang/CharSequence;

    .line 43
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_title:I

    invoke-virtual {p1, p2}, La/a/f/t;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 45
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    :cond_7
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {p1, p2}, La/a/f/t;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 48
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 49
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    .line 50
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_popupTheme:I

    invoke-virtual {p1, p2, v1}, La/a/f/t;->g(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    .line 51
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {p1, p2}, La/a/f/t;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 52
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_9
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {p1, p2}, La/a/f/t;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 55
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    :cond_a
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_logo:I

    invoke-virtual {p1, p2}, La/a/f/t;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 57
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 58
    :cond_b
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual {p1, p2}, La/a/f/t;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 60
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 61
    :cond_c
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {p1, p2}, La/a/f/t;->g(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 62
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {p1, p2, p3}, La/a/f/t;->a(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 63
    :cond_d
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {p1, p2}, La/a/f/t;->g(I)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 64
    sget p2, Landroidx/appcompat/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {p1, p2, p3}, La/a/f/t;->a(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 65
    :cond_e
    invoke-virtual {p1}, La/a/f/t;->a()V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, La/a/e/e;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/e/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 103
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    .line 104
    invoke-static {p1, v0}, La/g/h/b;->a(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-ne v0, v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    return p1
.end method

.method public final a(Landroid/view/View;)I
    .locals 1

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    invoke-static {p1}, La/g/h/d;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    .line 107
    invoke-static {p1}, La/g/h/d;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final a(Landroid/view/View;I)I
    .locals 6

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    .line 77
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 78
    :goto_0
    iget v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->b(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    .line 79
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    .line 81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    .line 82
    div-int/lit8 v4, v4, 0x2

    .line 83
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    .line 84
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_2

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    .line 85
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_2
    :goto_1
    add-int/2addr p2, v4

    return p2

    .line 86
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    .line 87
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method public final a(Landroid/view/View;IIII[I)I
    .locals 7

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 44
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 45
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    .line 47
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    .line 48
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 50
    invoke-static {p2, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p6

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p6

    iget p6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p6

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 52
    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v5

    return p1
.end method

.method public final a(Landroid/view/View;I[II)I
    .locals 4

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 68
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 69
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    .line 70
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 71
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p3

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int v1, p2, p4

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 74
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p4, p1

    add-int/2addr p2, p4

    return p2
.end method

.method public final a(Ljava/util/List;[I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    aget v1, p2, v0

    const/4 v2, 0x1

    .line 56
    aget p2, p2, v2

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, p2

    move p2, v0

    move v3, v1

    move v1, p2

    :goto_0
    if-ge p2, v2, :cond_0

    .line 58
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 59
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 60
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v7, v3

    .line 61
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    .line 62
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 63
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v7, v7

    .line 64
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    neg-int v3, v3

    .line 65
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 66
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    add-int/2addr v1, v4

    add-int/lit8 p2, p2, 0x1

    move v4, v3

    move v3, v7

    goto :goto_0

    :cond_0
    return v1
.end method

.method public a()V
    .locals 2

    .line 108
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 109
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->f()V

    .line 22
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    invoke-virtual {v0, p1, p2}, La/a/f/n;->b(II)V

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .line 18
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;IIIII)V
    .locals 3

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 35
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/2addr p3, p5

    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 37
    invoke-static {p4, p3, p5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 38
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 p5, 0x40000000    # 2.0f

    if-eq p4, p5, :cond_1

    if-ltz p6, :cond_1

    if-eqz p4, :cond_0

    .line 39
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 40
    :cond_0
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 41
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 2

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_1
    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    :goto_0
    const/4 v1, 0x1

    .line 28
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-eqz p2, :cond_2

    .line 29
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p2, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->i()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->g()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->b(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->b(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Landroidx/appcompat/widget/Toolbar$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    :cond_3
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Z)V

    if-eqz p1, :cond_4

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/Toolbar$d;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 13
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 14
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar$d;->updateMenuView(Z)V

    .line 15
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->k:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 16
    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    .line 17
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/ActionMenuPresenter;

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .locals 1

    .line 111
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 112
    iput-object p2, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 88
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 89
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 90
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v4

    .line 91
    invoke-static {p2, v4}, La/g/h/b;->a(II)I

    move-result p2

    .line 92
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    .line 93
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 95
    iget v2, v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    .line 96
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/Toolbar;->a(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    .line 98
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 100
    iget v4, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-nez v4, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    .line 101
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/Toolbar;->a(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 102
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final b(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 13
    iget p1, p0, Landroidx/appcompat/widget/Toolbar;->w:I

    and-int/lit8 p1, p1, 0x70

    :cond_0
    return p1
.end method

.method public final b(Landroid/view/View;)I
    .locals 1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final b(Landroid/view/View;I[II)I
    .locals 5

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 6
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 7
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    .line 8
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 9
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p3

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v1, p2, p4

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 12
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    return p2
.end method

.method public b(Landroid/content/Context;I)V
    .locals 1

    .line 2
    iput p2, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->b:La/a/e/h/i;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, La/a/e/h/i;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public final c(Landroid/view/View;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->a()V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->g:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 6
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    const/4 v1, 0x2

    .line 7
    iput v1, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$c;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/a/f/n;

    invoke-direct {v0}, La/a/f/n;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .locals 1

    .line 4
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 6
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 8
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/a/f/n;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/a/f/n;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/a/f/n;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/a/f/n;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->g()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->h()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOuterActionMenuPresenter()Landroidx/appcompat/widget/ActionMenuPresenter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->J:Landroidx/appcompat/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->h()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->k:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->x:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    return v0
.end method

.method public getWrapper()Landroidx/appcompat/widget/DecorToolbar;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:La/a/f/u;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/a/f/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La/a/f/u;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:La/a/f/u;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->I:La/a/f/u;

    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->i()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->g()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 4
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->k:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->H:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->L:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800005

    .line 7
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    .line 8
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroidx/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    .line 4
    iget v2, p0, Landroidx/appcompat/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->a:I

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->b:La/a/e/h/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 4
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    .line 3
    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v4, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->C:Z

    :cond_3
    return v4
.end method

.method public onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    .line 8
    iget-object v11, v0, Landroidx/appcompat/widget/Toolbar;->F:[I

    .line 9
    aput v3, v11, v2

    aput v3, v11, v3

    .line 10
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;)I

    move-result v12

    if-ltz v12, :cond_1

    sub-int v13, p5, p3

    .line 11
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1

    :cond_1
    move v12, v3

    .line 12
    :goto_1
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    .line 13
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    .line 14
    :cond_2
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13, v6, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    move v14, v10

    .line 15
    :goto_3
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v1, :cond_4

    .line 16
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    .line 17
    :cond_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    .line 18
    :cond_5
    :goto_4
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v1, :cond_6

    .line 19
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v13, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    .line 20
    :cond_6
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v14, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    .line 21
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    sub-int v2, v15, v13

    .line 23
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v3

    sub-int v2, v10, v14

    sub-int v2, v16, v2

    .line 24
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v17, 0x1

    aput v2, v11, v17

    .line 25
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v10, v10, v16

    .line 26
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 27
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    if-eqz v1, :cond_8

    .line 28
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_6

    .line 29
    :cond_8
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, v13, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v2

    .line 30
    :cond_9
    :goto_6
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v1, :cond_a

    .line 31
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v13, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_7

    .line 32
    :cond_a
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v13, v2, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v2

    .line 33
    :cond_b
    :goto_7
    iget-object v13, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v13

    .line 34
    iget-object v14, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v14

    if-eqz v13, :cond_c

    .line 35
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 36
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p4, v7

    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v3, v7

    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v7

    const/4 v7, 0x0

    add-int/2addr v3, v7

    goto :goto_8

    :cond_c
    move/from16 p4, v7

    const/4 v3, 0x0

    :goto_8
    if-eqz v14, :cond_d

    .line 37
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 38
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v4

    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v15, v4

    iget v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v4

    add-int/2addr v3, v15

    goto :goto_9

    :cond_d
    move/from16 v16, v4

    :goto_9
    if-nez v13, :cond_f

    if-eqz v14, :cond_e

    goto :goto_b

    :cond_e
    move/from16 v17, v6

    move/from16 p3, v12

    :goto_a
    const/4 v7, 0x0

    goto/16 :goto_17

    :cond_f
    :goto_b
    if-eqz v13, :cond_10

    .line 39
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    goto :goto_c

    :cond_10
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    :goto_c
    if-eqz v14, :cond_11

    .line 40
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    goto :goto_d

    :cond_11
    iget-object v7, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 41
    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 42
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    if-eqz v13, :cond_12

    .line 43
    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_13

    :cond_12
    if-eqz v14, :cond_14

    iget-object v15, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 44
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_14

    :cond_13
    move/from16 v17, v6

    const/4 v15, 0x1

    goto :goto_e

    :cond_14
    move/from16 v17, v6

    const/4 v15, 0x0

    .line 45
    :goto_e
    iget v6, v0, Landroidx/appcompat/widget/Toolbar;->w:I

    and-int/lit8 v6, v6, 0x70

    move/from16 p3, v12

    const/16 v12, 0x30

    if-eq v6, v12, :cond_18

    const/16 v12, 0x50

    if-eq v6, v12, :cond_17

    sub-int v6, v5, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v3

    .line 46
    div-int/lit8 v6, v6, 0x2

    .line 47
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p5, v2

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    move/from16 v18, v14

    add-int v14, v12, v2

    if-ge v6, v14, :cond_15

    add-int v6, v12, v2

    goto :goto_f

    :cond_15
    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    .line 48
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_16

    .line 49
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_16
    :goto_f
    add-int/2addr v8, v6

    goto :goto_10

    :cond_17
    move/from16 p5, v2

    move/from16 v18, v14

    sub-int/2addr v5, v9

    .line 50
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Landroidx/appcompat/widget/Toolbar;->s:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v3

    goto :goto_10

    :cond_18
    move/from16 p5, v2

    move/from16 v18, v14

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->r:I

    add-int v8, v2, v3

    :goto_10
    if-eqz v1, :cond_1d

    if-eqz v15, :cond_19

    .line 52
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->p:I

    const/4 v1, 0x1

    goto :goto_11

    :cond_19
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_11
    aget v2, v11, v1

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v10, v4

    neg-int v3, v3

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v11, v1

    if-eqz v13, :cond_1a

    .line 55
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 56
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v10, v2

    .line 57
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    .line 58
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v8, v10, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 59
    iget v4, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    sub-int/2addr v2, v4

    .line 60
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_12

    :cond_1a
    move v2, v10

    :goto_12
    if-eqz v18, :cond_1b

    .line 61
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 62
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v3

    .line 63
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v10, v3

    .line 64
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 65
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v8, v10, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 66
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    sub-int v3, v10, v3

    .line 67
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_13

    :cond_1b
    move v3, v10

    :goto_13
    if-eqz v15, :cond_1c

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    :cond_1c
    move/from16 v2, p5

    goto/16 :goto_a

    :cond_1d
    if-eqz v15, :cond_1e

    .line 69
    iget v3, v0, Landroidx/appcompat/widget/Toolbar;->p:I

    goto :goto_14

    :cond_1e
    const/4 v3, 0x0

    :goto_14
    const/4 v7, 0x0

    aget v1, v11, v7

    sub-int/2addr v3, v1

    .line 70
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v2, p5, v1

    neg-int v1, v3

    .line 71
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v7

    if-eqz v13, :cond_1f

    .line 72
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 73
    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 74
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 75
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 76
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    add-int/2addr v3, v5

    .line 77
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v4, v1

    goto :goto_15

    :cond_1f
    move v3, v2

    :goto_15
    if-eqz v18, :cond_20

    .line 78
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 79
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v4

    .line 80
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 81
    iget-object v5, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 82
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v8, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 83
    iget v5, v0, Landroidx/appcompat/widget/Toolbar;->q:I

    add-int/2addr v4, v5

    .line 84
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_16

    :cond_20
    move v4, v2

    :goto_16
    if-eqz v15, :cond_21

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 86
    :cond_21
    :goto_17
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 87
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    move v2, v7

    :goto_18
    if-ge v2, v1, :cond_22

    .line 88
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move/from16 v12, p3

    invoke-virtual {v0, v4, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    move/from16 v12, p3

    .line 89
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 90
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v7

    :goto_19
    if-ge v2, v1, :cond_23

    .line 91
    iget-object v4, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4, v10, v11, v12}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 92
    :cond_23
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 93
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v11}, Landroidx/appcompat/widget/Toolbar;->a(Ljava/util/List;[I)I

    move-result v1

    sub-int v4, v16, v17

    sub-int v4, v4, p4

    .line 94
    div-int/lit8 v4, v4, 0x2

    add-int v6, v17, v4

    .line 95
    div-int/lit8 v2, v1, 0x2

    sub-int v2, v6, v2

    add-int/2addr v1, v2

    if-ge v2, v3, :cond_24

    goto :goto_1a

    :cond_24
    if-le v1, v10, :cond_25

    sub-int/2addr v1, v10

    sub-int v3, v2, v1

    goto :goto_1a

    :cond_25
    move v3, v2

    .line 96
    :goto_1a
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1b
    if-ge v7, v1, :cond_26

    .line 97
    iget-object v2, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, v3, v11, v12}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 98
    :cond_26
    iget-object v1, v0, Landroidx/appcompat/widget/Toolbar;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Landroidx/appcompat/widget/Toolbar;->F:[I

    .line 2
    invoke-static/range {p0 .. p0}, La/a/f/z;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    move v10, v1

    move v11, v9

    goto :goto_0

    :cond_0
    move v11, v1

    move v10, v9

    .line 3
    :goto_0
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->o:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 5
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 7
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 8
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    .line 10
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    .line 11
    invoke-static {v9, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v12, v1

    move v13, v2

    goto :goto_1

    :cond_1
    move v0, v9

    move v12, v0

    move v13, v12

    .line 12
    :goto_1
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->o:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 14
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 15
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 17
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 18
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 19
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->h:Landroid/widget/ImageButton;

    .line 20
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 21
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 22
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v14, v9, v2

    sub-int/2addr v1, v0

    .line 24
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v10

    .line 25
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Landroidx/appcompat/widget/Toolbar;->o:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v14

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 27
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 29
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 30
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 31
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 32
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredState()I

    move-result v1

    .line 33
    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    goto :goto_2

    :cond_3
    move v0, v9

    .line 34
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    .line 35
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v10, v14, v2

    sub-int/2addr v1, v0

    .line 36
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v11

    .line 37
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v10, v0

    .line 39
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    .line 40
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 42
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->i:Landroid/view/View;

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 44
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 45
    :cond_4
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v10, v0

    .line 47
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 50
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 52
    invoke-static {v13, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    .line 53
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move v14, v12

    move v12, v10

    move v10, v9

    :goto_3
    if-ge v10, v11, :cond_8

    .line 54
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 55
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 56
    iget v0, v0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    if-nez v0, :cond_7

    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move v3, v12

    move/from16 v4, p2

    move-object v6, v8

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v12, v0

    .line 58
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 59
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v13, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v14, v0

    move v13, v1

    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 60
    :cond_8
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->r:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->s:I

    add-int v10, v0, v1

    .line 61
    iget v0, v7, Landroidx/appcompat/widget/Toolbar;->p:I

    iget v1, v7, Landroidx/appcompat/widget/Toolbar;->q:I

    add-int v11, v0, v1

    .line 62
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    add-int v3, v12, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v10

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    .line 64
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 66
    iget-object v2, v7, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    invoke-static {v13, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    move v15, v1

    move v6, v13

    move v13, v0

    goto :goto_5

    :cond_9
    move v15, v9

    move v6, v13

    move v13, v15

    .line 67
    :goto_5
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    add-int v3, v12, v11

    add-int v5, v15, v10

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v10, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 69
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 70
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 71
    iget-object v0, v7, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 72
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 73
    invoke-static {v10, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_6

    :cond_a
    move v10, v6

    :goto_6
    add-int/2addr v12, v13

    .line 74
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    move/from16 v3, p1

    .line 78
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    .line 80
    invoke-static {v0, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/Toolbar;->r()Z

    move-result v2

    if-eqz v2, :cond_b

    move v0, v9

    :cond_b
    invoke-virtual {v7, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/Toolbar$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->g()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->c:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 9
    :cond_2
    iget-boolean p1, p1, Landroidx/appcompat/widget/Toolbar$SavedState;->d:Z

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->p()V

    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->f()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->t:La/a/f/n;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, La/a/f/n;->a(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->K:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/appcompat/widget/Toolbar$d;->b:La/a/e/h/i;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, La/a/e/h/i;->getItemId()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->c:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->n()Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/widget/Toolbar$SavedState;->d:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->B:Z

    .line 3
    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/Toolbar;->B:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v3, p0, Landroidx/appcompat/widget/Toolbar;->B:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/widget/Toolbar;->B:Z

    :cond_3
    return v3
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public q()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;

    .line 4
    iget v2, v2, Landroidx/appcompat/widget/Toolbar$LayoutParams;->b:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/Toolbar;->N:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/Toolbar;->N:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    .line 1
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    if-eq p1, v0, :cond_1

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->v:I

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    .line 1
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    if-eq p1, v0, :cond_1

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->u:I

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/a/b/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->g()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/a/b/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->j()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->G:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->h()V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->k:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->k:I

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/Toolbar;->j:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 8
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->m:I

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->A:I

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->y:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->A:I

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 8
    iget v1, p0, Landroidx/appcompat/widget/Toolbar;->l:I

    if-eqz v1, :cond_0

    .line 9
    iget-object v2, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 10
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/Toolbar;->z:I

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->E:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_4
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar;->x:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->s:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->q:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->p:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->r:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/Toolbar;->z:I

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
