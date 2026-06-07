.class public La/a/e/h/m;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuHelper;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final c:Z

.field public final d:I

.field public final e:I

.field public f:Landroid/view/View;

.field public g:I

.field public h:Z

.field public i:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public j:La/a/e/h/l;

.field public k:Landroid/widget/PopupWindow$OnDismissListener;

.field public final l:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, La/a/e/h/m;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    .line 3
    iput v0, p0, La/a/e/h/m;->g:I

    .line 4
    new-instance v0, La/a/e/h/m$a;

    invoke-direct {v0, p0}, La/a/e/h/m$a;-><init>(La/a/e/h/m;)V

    iput-object v0, p0, La/a/e/h/m;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 5
    iput-object p1, p0, La/a/e/h/m;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, La/a/e/h/m;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 7
    iput-object p3, p0, La/a/e/h/m;->f:Landroid/view/View;

    .line 8
    iput-boolean p4, p0, La/a/e/h/m;->c:Z

    .line 9
    iput p5, p0, La/a/e/h/m;->d:I

    .line 10
    iput p6, p0, La/a/e/h/m;->e:I

    return-void
.end method


# virtual methods
.method public final a()La/a/e/h/l;
    .locals 14

    .line 9
    iget-object v0, p0, La/a/e/h/m;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 10
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 11
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 15
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 16
    iget-object v1, p0, La/a/e/h/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 17
    new-instance v0, La/a/e/h/e;

    iget-object v2, p0, La/a/e/h/m;->a:Landroid/content/Context;

    iget-object v3, p0, La/a/e/h/m;->f:Landroid/view/View;

    iget v4, p0, La/a/e/h/m;->d:I

    iget v5, p0, La/a/e/h/m;->e:I

    iget-boolean v6, p0, La/a/e/h/m;->c:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, La/a/e/h/e;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_2

    .line 18
    :cond_2
    new-instance v0, La/a/e/h/p;

    iget-object v8, p0, La/a/e/h/m;->a:Landroid/content/Context;

    iget-object v9, p0, La/a/e/h/m;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v10, p0, La/a/e/h/m;->f:Landroid/view/View;

    iget v11, p0, La/a/e/h/m;->d:I

    iget v12, p0, La/a/e/h/m;->e:I

    iget-boolean v13, p0, La/a/e/h/m;->c:Z

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, La/a/e/h/p;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    .line 19
    :goto_2
    iget-object v1, p0, La/a/e/h/m;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, La/a/e/h/l;->a(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 20
    iget-object v1, p0, La/a/e/h/m;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, La/a/e/h/l;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 21
    iget-object v1, p0, La/a/e/h/m;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, La/a/e/h/l;->a(Landroid/view/View;)V

    .line 22
    iget-object v1, p0, La/a/e/h/m;->i:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/MenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 23
    iget-boolean v1, p0, La/a/e/h/m;->h:Z

    invoke-virtual {v0, v1}, La/a/e/h/l;->a(Z)V

    .line 24
    iget v1, p0, La/a/e/h/m;->g:I

    invoke-virtual {v0, v1}, La/a/e/h/l;->a(I)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 5
    iput p1, p0, La/a/e/h/m;->g:I

    return-void
.end method

.method public final a(IIZZ)V
    .locals 3

    .line 25
    invoke-virtual {p0}, La/a/e/h/m;->b()La/a/e/h/l;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p4}, La/a/e/h/l;->b(Z)V

    if-eqz p3, :cond_1

    .line 27
    iget p3, p0, La/a/e/h/m;->g:I

    iget-object p4, p0, La/a/e/h/m;->f:Landroid/view/View;

    .line 28
    invoke-static {p4}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result p4

    .line 29
    invoke-static {p3, p4}, La/g/h/b;->a(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    .line 30
    iget-object p3, p0, La/a/e/h/m;->f:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 31
    :cond_0
    invoke-virtual {v0, p1}, La/a/e/h/l;->b(I)V

    .line 32
    invoke-virtual {v0, p2}, La/a/e/h/l;->c(I)V

    .line 33
    iget-object p3, p0, La/a/e/h/m;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42400000    # 48.0f

    mul-float/2addr p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    .line 34
    new-instance p4, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 35
    invoke-virtual {v0, p4}, La/a/e/h/l;->a(Landroid/graphics/Rect;)V

    .line 36
    :cond_1
    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->show()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/m;->f:Landroid/view/View;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 2
    iput-boolean p1, p0, La/a/e/h/m;->h:Z

    .line 3
    iget-object v0, p0, La/a/e/h/m;->j:La/a/e/h/l;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, La/a/e/h/l;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(II)Z
    .locals 2

    .line 6
    invoke-virtual {p0}, La/a/e/h/m;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 7
    :cond_0
    iget-object v0, p0, La/a/e/h/m;->f:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2, v1, v1}, La/a/e/h/m;->a(IIZZ)V

    return v1
.end method

.method public b()La/a/e/h/l;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/m;->j:La/a/e/h/l;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, La/a/e/h/m;->a()La/a/e/h/l;

    move-result-object v0

    iput-object v0, p0, La/a/e/h/m;->j:La/a/e/h/l;

    .line 3
    :cond_0
    iget-object v0, p0, La/a/e/h/m;->j:La/a/e/h/l;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/m;->j:La/a/e/h/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, La/a/e/h/m;->j:La/a/e/h/l;

    .line 2
    iget-object v0, p0, La/a/e/h/m;->k:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, La/a/e/h/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, La/a/e/h/m;->j:La/a/e/h/l;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, La/a/e/h/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, La/a/e/h/m;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, La/a/e/h/m;->f:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0, v2, v2, v2, v2}, La/a/e/h/m;->a(IIZZ)V

    return v1
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/m;->k:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 1

    .line 1
    iput-object p1, p0, La/a/e/h/m;->i:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2
    iget-object v0, p0, La/a/e/h/m;->j:La/a/e/h/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    :cond_0
    return-void
.end method
