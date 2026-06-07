.class public Landroidx/appcompat/widget/ActionBarContextView;
.super La/a/f/a;
.source "ActionBarContextView.java"


# instance fields
.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:I

.field public q:I

.field public r:Z

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/appcompat/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, La/a/f/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Landroidx/appcompat/R$styleable;->ActionMode:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, La/a/f/t;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)La/a/f/t;

    move-result-object p1

    .line 5
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_background:I

    invoke-virtual {p1, p2}, La/a/f/t;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 6
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {p1, p2, v1}, La/a/f/t;->g(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:I

    .line 7
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {p1, p2, v1}, La/a/f/t;->g(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    .line 8
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_height:I

    invoke-virtual {p1, p2, v1}, La/a/f/t;->f(II)I

    move-result p2

    iput p2, p0, La/a/f/a;->e:I

    .line 9
    sget p2, Landroidx/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    sget p3, Landroidx/appcompat/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {p1, p2, p3}, La/a/f/t;->g(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:I

    .line 10
    invoke-virtual {p1}, La/a/f/t;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/ActionMode;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    iget v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    sget v1, Landroidx/appcompat/R$id;->action_mode_close_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    new-instance v1, Landroidx/appcompat/widget/ActionBarContextView$a;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/ActionBarContextView$a;-><init>(Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->c()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 10
    iget-object v0, p0, La/a/f/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 12
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/f/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 13
    iget-object v0, p0, La/a/f/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuPresenter;->b(Z)V

    .line 14
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    iget-object v1, p0, La/a/f/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, La/a/f/a;->b:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 16
    iget-object p1, p0, La/a/f/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iput-object p1, p0, La/a/f/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 17
    iget-object p1, p0, La/a/f/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object p1, p0, La/a/f/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    sget v1, Landroidx/appcompat/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    sget v1, Landroidx/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    sget v1, Landroidx/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    .line 7
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:I

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 15
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Z

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 3
    iput-object v0, p0, La/a/f/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/f/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->h()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .line 1
    invoke-super {p0}, La/a/f/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .line 1
    invoke-super {p0}, La/a/f/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, La/a/f/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    .line 4
    iget-object v0, p0, La/a/f/a;->d:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 3
    const-class v0, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 9

    .line 1
    invoke-static {p0}, La/a/f/z;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int/2addr p5, p3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int p3, p5, p3

    .line 5
    iget-object p5, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, v7, :cond_3

    .line 6
    iget-object p5, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    .line 7
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    if-eqz p1, :cond_2

    .line 8
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 9
    :goto_2
    invoke-static {v0, v1, p1}, La/a/f/a;->a(IIZ)I

    move-result v8

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    move-object v0, p0

    move v2, v8

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, La/a/f/a;->a(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v8, v0

    .line 11
    invoke-static {v8, p5, p1}, La/a/f/a;->a(IIZ)I

    move-result p5

    goto :goto_3

    :cond_3
    move p5, v0

    .line 12
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_4

    .line 13
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, p5

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, La/a/f/a;->a(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr p5, v0

    :cond_4
    move v2, p5

    .line 14
    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz v1, :cond_5

    move-object v0, p0

    move v3, v6

    move v4, p3

    move v5, p1

    .line 15
    invoke-virtual/range {v0 .. v5}, La/a/f/a;->a(Landroid/view/View;IIIZ)I

    :cond_5
    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    move v3, p2

    goto :goto_4

    :cond_6
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    move v3, p4

    .line 17
    :goto_4
    iget-object v2, p0, La/a/f/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_7

    xor-int/lit8 p1, p1, 0x1

    move-object v1, p0

    move v4, v6

    move v5, p3

    move v6, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, La/a/f/a;->a(Landroid/view/View;IIIZ)I

    :cond_7
    return-void
.end method

.method public onMeasure(II)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const-string v1, " can only be used "

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_11

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    iget v0, p0, La/a/f/a;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr p2, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v3, v0, p2

    const/high16 v4, -0x80000000

    .line 8
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 9
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {p0, v6, v1, v5, v7}, La/a/f/a;->a(Landroid/view/View;III)I

    move-result v1

    .line 11
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 12
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    sub-int/2addr v1, v8

    .line 13
    :cond_1
    iget-object v6, p0, La/a/f/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_2

    .line 14
    iget-object v6, p0, La/a/f/a;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v6, v1, v5, v7}, La/a/f/a;->a(Landroid/view/View;III)I

    move-result v1

    .line 15
    :cond_2
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_7

    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v8, :cond_7

    .line 16
    iget-boolean v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Z

    if-eqz v8, :cond_6

    .line 17
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 18
    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 19
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    if-gt v5, v1, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v7

    :goto_1
    if-eqz v6, :cond_4

    sub-int/2addr v1, v5

    .line 20
    :cond_4
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 21
    :cond_6
    invoke-virtual {p0, v6, v1, v5, v7}, La/a/f/a;->a(Landroid/view/View;III)I

    move-result v1

    .line 22
    :cond_7
    :goto_3
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz v5, :cond_c

    .line 23
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 24
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-eq v6, v8, :cond_8

    move v6, v2

    goto :goto_4

    :cond_8
    move v6, v4

    .line 25
    :goto_4
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v9, :cond_9

    .line 26
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 27
    :cond_9
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v9, v8, :cond_a

    goto :goto_5

    :cond_a
    move v2, v4

    .line 28
    :goto_5
    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_b

    .line 29
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 30
    :cond_b
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 31
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 32
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 33
    :cond_c
    iget v1, p0, La/a/f/a;->e:I

    if-gtz v1, :cond_f

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_6
    if-ge v7, v0, :cond_e

    .line 35
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    if-le v2, v1, :cond_d

    move v1, v2

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 37
    :cond_e
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_7

    .line 38
    :cond_f
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_7
    return-void

    .line 39
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "with android:layout_height=\"wrap_content\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, La/a/f/a;->e:I

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->b()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->b()V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Z

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->r:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, La/a/f/a;->setVisibility(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
