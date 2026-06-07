.class public Li/p/a;
.super Landroid/app/Dialog;
.source "MenuDialog.java"

# interfaces
.implements Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public a:Lsmartisan/widget/ShadowButton;

.field public b:Landroid/widget/ListView;

.field public c:Landroid/content/Context;

.field public d:Lsmartisan/widget/MenuDialogTitleBar;

.field public e:I

.field public f:I

.field public final g:Z

.field public h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Li/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1030134

    goto :goto_0

    :cond_0
    sget v0, Lsmartisan/widget/R$style;->MenuDialogTheme:I

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Li/p/a;->b:Landroid/widget/ListView;

    .line 3
    new-instance v0, Li/p/a$a;

    invoke-direct {v0, p0}, Li/p/a$a;-><init>(Li/p/a;)V

    iput-object v0, p0, Li/p/a;->h:Landroid/view/View$OnClickListener;

    .line 4
    iput-object p1, p0, Li/p/a;->c:Landroid/content/Context;

    .line 5
    iget-object p1, p0, Li/p/a;->c:Landroid/content/Context;

    invoke-static {p1}, Li/g;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Li/p/a;->g:Z

    .line 6
    invoke-virtual {p0}, Li/p/a;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 14
    iget-object v0, p0, Li/p/a;->a:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    iget-object v1, p0, Li/p/a;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Li/p/a;->a:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    iget v2, p0, Li/p/a;->e:I

    :goto_1
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 17
    iget-object v2, p0, Li/p/a;->a:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_2

    .line 18
    iget v0, p0, Li/p/a;->e:I

    goto :goto_2

    :cond_2
    iget v0, p0, Li/p/a;->f:I

    .line 19
    :goto_2
    iget-object v1, p0, Li/p/a;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Li/p/a;->b:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Li/p/a;->b:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method public a(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 9
    iget-object v0, p0, Li/p/a;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Li/p/a;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Li/p/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li/p/a;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Li/p/a;->a()V

    .line 3
    iget-object v0, p0, Li/p/a;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    invoke-virtual {p1}, Li/p/b;->getCount()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 5
    :cond_0
    iget-object v0, p0, Li/p/a;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/p/a;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->multi_menu_dialog_list_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p1, p0}, Li/p/b;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 10
    iget-object v0, p0, Li/p/a;->a:Lsmartisan/widget/ShadowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Li/p/a;->a()V

    .line 12
    iget-object v0, p0, Li/p/a;->a:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Li/p/a;->a:Lsmartisan/widget/ShadowButton;

    new-instance v0, Li/p/a$b;

    invoke-direct {v0, p0, p2}, Li/p/a$b;-><init>(Li/p/a;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lsmartisan/widget/ShadowButton$b;)V
    .locals 1

    .line 8
    iget-object v0, p0, Li/p/a;->a:Lsmartisan/widget/ShadowButton;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowButton;->a(Lsmartisan/widget/ShadowButton$b;)V

    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 23
    invoke-static {p0}, Li/d;->a(Landroid/app/Dialog;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    .line 24
    :cond_0
    invoke-virtual {p0}, Li/p/a;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final a(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Li/p/a;->b()[Landroid/view/View;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {p0, v4}, Li/p/a;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v4, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public b()[Landroid/view/View;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 1
    iget-object v1, p0, Li/p/a;->a:Lsmartisan/widget/ShadowButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v1}, Lsmartisan/widget/MenuDialogTitleBar;->getLeftImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v1}, Lsmartisan/widget/MenuDialogTitleBar;->getRightImageView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Li/p/a;->b()[Landroid/view/View;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {p0, v3}, Li/p/a;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Li/p/a;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lsmartisan/widget/R$layout;->revone_menu_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    sget v0, Lsmartisan/widget/R$id;->menu_dialog_title_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/MenuDialogTitleBar;

    .line 4
    sget v2, Lsmartisan/widget/R$id;->menu_dialog_title_bar_container:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    sget v2, Lsmartisan/widget/R$id;->shadow_divider:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    .line 6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_0
    sget v2, Lsmartisan/widget/R$drawable;->revone_dialog_bg_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    sget v0, Lsmartisan/widget/R$layout;->menu_dialog:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 10
    :goto_0
    sget v0, Lsmartisan/widget/R$id;->menu_dialog_title_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/MenuDialogTitleBar;

    iput-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    .line 11
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->c(Z)V

    .line 12
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    iget-object v2, p0, Li/p/a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lsmartisan/widget/MenuDialogTitleBar;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    iget-object v2, p0, Li/p/a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lsmartisan/widget/MenuDialogTitleBar;->setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->setShadowVisible(Z)V

    .line 15
    invoke-virtual {p0}, Li/p/a;->e()V

    .line 16
    sget v0, Lsmartisan/widget/R$id;->btn_ok:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ShadowButton;

    iput-object v0, p0, Li/p/a;->a:Lsmartisan/widget/ShadowButton;

    .line 17
    sget v0, Lsmartisan/widget/R$id;->content_list:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Li/p/a;->b:Landroid/widget/ListView;

    .line 18
    iget-object v0, p0, Li/p/a;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 19
    iget-boolean v0, p0, Li/p/a;->g:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 24
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "PRIVATE_FLAG_NO_MOVE_ANIMATION"

    invoke-static {v0, v1}, Li/m;->a(Landroid/view/Window;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Li/p/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->menu_dialog_btn_margin_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Li/p/a;->e:I

    .line 28
    iget-object v0, p0, Li/p/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->menu_dialog_btn_margin_edge:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Li/p/a;->f:I

    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lsmartisan/util/NavigationBarHelper;->a(Landroid/view/View;Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;Z)V

    .line 30
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/p/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    .line 3
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v2}, Lsmartisan/widget/MenuDialogTitleBar;->setRightButtonVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v2}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonVisibility(I)V

    .line 5
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightButtonVisibility(I)V

    :goto_0
    return-void
.end method

.method public onApplyNavigationBarStatusChange(Z)V
    .locals 4

    .line 1
    sget v0, Lsmartisan/widget/R$id;->contentPanel:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Li/p/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lsmartisan/widget/R$dimen;->bar_and_bottom_sheet_extra_space:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 5
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2, p3}, Li/p/a;->b(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p2, p3}, Li/p/a;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Li/p/a;->e()V

    :cond_0
    return-void
.end method

.method public setNegativeButton(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    iget-object v1, p0, Li/p/a;->c:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    iget-object v0, p0, Li/p/a;->d:Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
