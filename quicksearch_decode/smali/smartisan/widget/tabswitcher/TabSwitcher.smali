.class public Lsmartisan/widget/tabswitcher/TabSwitcher;
.super Landroid/widget/RelativeLayout;
.source "TabSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Landroid/widget/RadioGroup;

.field public final d:Landroid/widget/RadioGroup;

.field public final e:Landroid/view/LayoutInflater;

.field public final f:Landroid/view/View;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/Button;

.field public final i:Landroid/widget/Button;

.field public j:Lsmartisan/widget/tabswitcher/AnimationPanel;

.field public k:Li/t/h/b;

.field public l:Li/t/h/b;

.field public m:Z

.field public n:Lsmartisan/widget/tabswitcher/model/ITabManager;

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/tabswitcher/model/Tab;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/tabswitcher/model/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lsmartisan/widget/tabswitcher/TabSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/tabswitcher/TabSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->m:Z

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->r:I

    .line 6
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->e:Landroid/view/LayoutInflater;

    .line 8
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->e:Landroid/view/LayoutInflater;

    sget p3, Lsmartisan/widget/R$layout;->sb_switch_bar:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    sget p1, Lsmartisan/widget/R$id;->sb_edit:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->b:Landroid/view/ViewGroup;

    .line 10
    sget p1, Lsmartisan/widget/R$id;->sb_editableTabContainer:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->d:Landroid/widget/RadioGroup;

    .line 11
    sget p1, Lsmartisan/widget/R$id;->smartisan_sb_txt_title:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->g:Landroid/widget/TextView;

    .line 12
    sget p1, Lsmartisan/widget/R$id;->sb_btn_cancel:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->h:Landroid/widget/Button;

    .line 13
    sget p1, Lsmartisan/widget/R$id;->sb_btn_submit:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->i:Landroid/widget/Button;

    .line 14
    sget p1, Lsmartisan/widget/R$id;->sb_rg_tabwidget:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    .line 15
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 16
    sget p1, Lsmartisan/widget/R$id;->sb_btn_cancel:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget p1, Lsmartisan/widget/R$id;->sb_btn_submit:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget p1, Lsmartisan/widget/R$id;->sb_edit_layout_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->f:Landroid/view/View;

    .line 19
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lsmartisan/widget/tabswitcher/TabSwitcher$a;

    invoke-direct {p2, p0}, Lsmartisan/widget/tabswitcher/TabSwitcher$a;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/tabswitcher/TabSwitcher;I)I
    .locals 0

    .line 2
    iput p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->p:I

    return p1
.end method

.method public static synthetic a(Lsmartisan/widget/tabswitcher/TabSwitcher;)Landroid/widget/RadioGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->d:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method public static synthetic a(Lsmartisan/widget/tabswitcher/TabSwitcher;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->t:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic b(Lsmartisan/widget/tabswitcher/TabSwitcher;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic b(Lsmartisan/widget/tabswitcher/TabSwitcher;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->u:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic c(Lsmartisan/widget/tabswitcher/TabSwitcher;)Lsmartisan/widget/tabswitcher/model/ITabManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->n:Lsmartisan/widget/tabswitcher/model/ITabManager;

    return-object p0
.end method

.method public static synthetic d(Lsmartisan/widget/tabswitcher/TabSwitcher;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->d()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 3

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 56
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 57
    new-instance v2, Lsmartisan/widget/tabswitcher/TabSwitcher$b;

    invoke-direct {v2, p0, v0, p1, p2}, Lsmartisan/widget/tabswitcher/TabSwitcher$b;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    new-instance p2, Lsmartisan/widget/tabswitcher/TabSwitcher$c;

    invoke-direct {p2, p0, v0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher$c;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1
.end method

.method public final a(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 9

    .line 59
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lsmartisan/widget/tabswitcher/AnimationPanel;->d()V

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v5, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 63
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 64
    new-instance v8, Lsmartisan/widget/tabswitcher/TabSwitcher$d;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lsmartisan/widget/tabswitcher/TabSwitcher$d;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;IZ)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    new-instance p2, Lsmartisan/widget/tabswitcher/TabSwitcher$e;

    invoke-direct {p2, p0, v0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher$e;-><init>(Lsmartisan/widget/tabswitcher/TabSwitcher;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v7, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v7
.end method

.method public a()V
    .locals 3

    .line 29
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->c()V

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 32
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 33
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    :cond_1
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->k:Li/t/h/b;

    invoke-virtual {v0}, Li/t/h/b;->a()V

    .line 36
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->l:Li/t/h/b;

    invoke-virtual {v0}, Li/t/h/b;->a()V

    .line 37
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    return-void
.end method

.method public a(Landroid/view/View;IZ)V
    .locals 2

    const/16 v0, 0x8

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    .line 40
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 43
    iget-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    :cond_1
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->setEditBarShadowVisibility(Z)V

    .line 46
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez p3, :cond_5

    .line 47
    iget p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->r:I

    if-ltz p1, :cond_5

    iget-object p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    if-lt p1, p2, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    iget p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->r:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 49
    iget p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->q:I

    if-eq p1, p2, :cond_3

    .line 50
    iput p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->q:I

    .line 51
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    iget p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->q:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    .line 52
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->q:I

    .line 53
    :cond_4
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    iget p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->q:I

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    nop

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Landroid/widget/RadioGroup;Ljava/util/List;Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RadioGroup;",
            "Ljava/util/List<",
            "Lsmartisan/widget/tabswitcher/model/Tab;",
            ">;Z)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->removeAllViews()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setWeightSum(F)V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/tabswitcher/model/Tab;

    .line 7
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->e:Landroid/view/LayoutInflater;

    sget v2, Lsmartisan/widget/R$layout;->sb_tab_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 8
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(I)V

    if-eqz p3, :cond_0

    .line 9
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getMoreTabDrawableResId()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getDrawableResId()I

    move-result v2

    .line 10
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 12
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 13
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getTextColorResId()I

    move-result v2

    if-nez v2, :cond_1

    .line 16
    sget v2, Lsmartisan/widget/R$color;->tab_bar_text_color:I

    :cond_1
    if-eqz p3, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$dimen;->smartisan_switch_bar_top_drawablePadding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$drawable;->sb_tabbar_item_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 19
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$dimen;->smartisan_switch_bar_drawablePadding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$drawable;->smartisan_tab_bar_rb_bg_selector:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 22
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v2, 0x31

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 25
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 26
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 27
    invoke-interface {v0}, Lsmartisan/widget/tabswitcher/model/Tab;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 28
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->a(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 5

    .line 2
    new-instance v0, Lsmartisan/widget/tabswitcher/AnimationPanel;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->a:Landroid/content/Context;

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->k:Li/t/h/b;

    iget-object v3, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->l:Li/t/h/b;

    iget v4, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->o:F

    invoke-direct {v0, v1, v2, v3, v4}, Lsmartisan/widget/tabswitcher/AnimationPanel;-><init>(Landroid/content/Context;Li/t/h/b;Li/t/h/b;F)V

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->d:Landroid/widget/RadioGroup;

    .line 4
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 5
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->j:Lsmartisan/widget/tabswitcher/AnimationPanel;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d()V
    .locals 5

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->t:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsmartisan/widget/tabswitcher/TabSwitcher;->a(Landroid/widget/RadioGroup;Ljava/util/List;Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    iget v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->q:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->d:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->u:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lsmartisan/widget/tabswitcher/TabSwitcher;->a(Landroid/widget/RadioGroup;Ljava/util/List;Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->sb_tab_bar_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->o:F

    .line 6
    new-instance v0, Li/t/h/a;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->d:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->n:Lsmartisan/widget/tabswitcher/model/ITabManager;

    invoke-direct {v0, v1, v4, v3}, Li/t/h/a;-><init>(Landroid/view/ViewGroup;Lsmartisan/widget/tabswitcher/model/ITabManager;Z)V

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->k:Li/t/h/b;

    .line 7
    new-instance v0, Li/t/h/a;

    iget-object v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->c:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->n:Lsmartisan/widget/tabswitcher/model/ITabManager;

    invoke-direct {v0, v1, v3, v2}, Li/t/h/a;-><init>(Landroid/view/ViewGroup;Lsmartisan/widget/tabswitcher/model/ITabManager;Z)V

    iput-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->l:Li/t/h/b;

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->b:Landroid/view/ViewGroup;

    iget v1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->p:I

    invoke-virtual {p0, v0, v1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->a(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 1
    iget v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->q:I

    if-eq v0, p2, :cond_5

    if-gez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iput p2, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->q:I

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p2, :cond_3

    .line 9
    iput v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->r:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_4
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->s:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_5

    .line 11
    invoke-interface {v0, p1, p2}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lsmartisan/widget/R$id;->sb_btn_cancel:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->a(Z)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lsmartisan/widget/R$id;->sb_btn_submit:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->m:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->e()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEditBarShadowVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->f:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->m:Z

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/tabswitcher/TabSwitcher;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/tabswitcher/TabSwitcher;->a(Z)V

    :cond_0
    return-void
.end method

.method public setLeftButtonText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->h:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->s:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setRightButtonText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public setTitleText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/tabswitcher/TabSwitcher;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
