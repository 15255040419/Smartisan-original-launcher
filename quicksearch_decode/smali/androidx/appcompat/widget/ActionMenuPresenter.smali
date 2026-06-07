.class public Landroidx/appcompat/widget/ActionMenuPresenter;
.super La/a/e/h/b;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/core/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$b;,
        Landroidx/appcompat/widget/ActionMenuPresenter$c;,
        Landroidx/appcompat/widget/ActionMenuPresenter$f;,
        Landroidx/appcompat/widget/ActionMenuPresenter$a;,
        Landroidx/appcompat/widget/ActionMenuPresenter$e;,
        Landroidx/appcompat/widget/ActionMenuPresenter$d;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field public A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

.field public B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

.field public final C:Landroidx/appcompat/widget/ActionMenuPresenter$f;

.field public D:I

.field public j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public final w:Landroid/util/SparseBooleanArray;

.field public x:Landroid/view/View;

.field public y:Landroidx/appcompat/widget/ActionMenuPresenter$e;

.field public z:Landroidx/appcompat/widget/ActionMenuPresenter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroidx/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroidx/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, La/a/e/h/b;-><init>(Landroid/content/Context;II)V

    .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$f;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public static synthetic b(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public static synthetic c(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    return-object p0
.end method

.method public static synthetic d(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public static synthetic e(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public static synthetic f(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    .line 1
    iget-object p0, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    return-object p0
.end method


# virtual methods
.method public a(La/a/e/h/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 11
    invoke-virtual {p1}, La/a/e/h/i;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, La/a/e/h/i;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2, p3}, La/a/e/h/b;->a(La/a/e/h/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 14
    :cond_1
    invoke-virtual {p1}, La/a/e/h/i;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 17
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 18
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public final a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 29
    iget-object v0, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 30
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 32
    instance-of v5, v4, Landroidx/appcompat/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 33
    invoke-interface {v5}, Landroidx/appcompat/view/menu/MenuView$ItemView;->getItemData()La/a/e/h/i;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public a(La/a/e/h/i;Landroidx/appcompat/view/menu/MenuView$ItemView;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(La/a/e/h/i;I)V

    .line 20
    iget-object p1, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 21
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 22
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;)V

    .line 23
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$b;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, La/a/e/h/b;->b:Landroid/content/Context;

    invoke-static {p1}, La/a/e/a;->a(Landroid/content/Context;)La/a/e/a;

    move-result-object p1

    invoke-virtual {p1}, La/a/e/a;->c()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 4
    :cond_0
    iget-object p1, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->c(Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public a(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    .line 34
    iput-object p1, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    .line 35
    iget-object v0, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:Z

    return-void
.end method

.method public a(ILa/a/e/h/i;)Z
    .locals 0

    .line 26
    invoke-virtual {p2}, La/a/e/h/i;->g()Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, La/a/e/h/b;->a(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    return-void
.end method

.method public b()Z
    .locals 2

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v2, :cond_0

    .line 3
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, La/a/e/h/m;->dismiss()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, La/a/e/h/m;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public flagActionItems()Z
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->n()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v3, v2

    .line 4
    :goto_0
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 5
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    .line 6
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 7
    iget-object v7, v0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    move v8, v2

    move v9, v8

    move v10, v9

    move v11, v4

    move v4, v10

    :goto_1
    if-ge v4, v3, :cond_4

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, La/a/e/h/i;

    .line 9
    invoke-virtual {v13}, La/a/e/h/i;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v13}, La/a/e/h/i;->i()Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    .line 11
    :goto_2
    iget-boolean v12, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:Z

    if-eqz v12, :cond_3

    invoke-virtual {v13}, La/a/e/h/i;->isActionViewExpanded()Z

    move-result v12

    if-eqz v12, :cond_3

    move v11, v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-boolean v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    if-eqz v4, :cond_6

    if-nez v8, :cond_5

    add-int/2addr v10, v9

    if-le v10, v11, :cond_6

    :cond_5
    add-int/lit8 v11, v11, -0x1

    :cond_6
    sub-int/2addr v11, v9

    .line 13
    iget-object v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroid/util/SparseBooleanArray;

    .line 14
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 15
    iget-boolean v8, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v8, :cond_7

    .line 16
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:I

    div-int v9, v5, v8

    .line 17
    rem-int v10, v5, v8

    .line 18
    div-int/2addr v10, v9

    add-int/2addr v8, v10

    goto :goto_3

    :cond_7
    move v8, v2

    move v9, v8

    :goto_3
    move v13, v2

    move v10, v5

    move v5, v13

    :goto_4
    if-ge v5, v3, :cond_1d

    .line 19
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, La/a/e/h/i;

    .line 20
    invoke-virtual {v14}, La/a/e/h/i;->requiresActionButton()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 21
    iget-object v15, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/view/View;

    invoke-virtual {v0, v14, v15, v7}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(La/a/e/h/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 22
    iget-object v12, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/view/View;

    if-nez v12, :cond_8

    .line 23
    iput-object v15, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/view/View;

    .line 24
    :cond_8
    iget-boolean v12, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v12, :cond_9

    .line 25
    invoke-static {v15, v8, v9, v6, v2}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v12

    sub-int/2addr v9, v12

    goto :goto_5

    .line 26
    :cond_9
    invoke-virtual {v15, v6, v6}, Landroid/view/View;->measure(II)V

    .line 27
    :goto_5
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v10, v12

    if-nez v13, :cond_a

    goto :goto_6

    :cond_a
    move v12, v13

    .line 28
    :goto_6
    invoke-virtual {v14}, La/a/e/h/i;->getGroupId()I

    move-result v13

    const/4 v15, 0x1

    if-eqz v13, :cond_b

    .line 29
    invoke-virtual {v4, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 30
    :cond_b
    invoke-virtual {v14, v15}, La/a/e/h/i;->d(Z)V

    move v0, v2

    move/from16 v17, v3

    move v13, v12

    goto/16 :goto_e

    .line 31
    :cond_c
    invoke-virtual {v14}, La/a/e/h/i;->i()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 32
    invoke-virtual {v14}, La/a/e/h/i;->getGroupId()I

    move-result v12

    .line 33
    invoke-virtual {v4, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v11, :cond_d

    if-eqz v15, :cond_f

    :cond_d
    if-lez v10, :cond_f

    .line 34
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v2, :cond_e

    if-lez v9, :cond_f

    :cond_e
    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    move/from16 v16, v2

    if-eqz v2, :cond_16

    .line 35
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/view/View;

    invoke-virtual {v0, v14, v2, v7}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(La/a/e/h/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v17, v3

    .line 36
    iget-object v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/view/View;

    if-nez v3, :cond_10

    .line 37
    iput-object v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/view/View;

    .line 38
    :cond_10
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    .line 39
    invoke-static {v2, v8, v9, v6, v3}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v18

    sub-int v9, v9, v18

    if-nez v18, :cond_12

    const/16 v16, 0x0

    goto :goto_8

    .line 40
    :cond_11
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 41
    :cond_12
    :goto_8
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v10, v2

    if-nez v13, :cond_13

    move v13, v2

    .line 42
    :cond_13
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v2, :cond_14

    if-ltz v10, :cond_15

    goto :goto_9

    :cond_14
    add-int v2, v10, v13

    if-lez v2, :cond_15

    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    :goto_a
    and-int v2, v16, v2

    goto :goto_b

    :cond_16
    move/from16 v17, v3

    :goto_b
    if-eqz v2, :cond_17

    if-eqz v12, :cond_17

    const/4 v3, 0x1

    .line 43
    invoke-virtual {v4, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_d

    :cond_17
    if-eqz v15, :cond_1a

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v4, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v5, :cond_1a

    .line 45
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, La/a/e/h/i;

    .line 46
    invoke-virtual {v15}, La/a/e/h/i;->getGroupId()I

    move-result v0

    if-ne v0, v12, :cond_19

    .line 47
    invoke-virtual {v15}, La/a/e/h/i;->g()Z

    move-result v0

    if-eqz v0, :cond_18

    add-int/lit8 v11, v11, 0x1

    :cond_18
    const/4 v0, 0x0

    .line 48
    invoke-virtual {v15, v0}, La/a/e/h/i;->d(Z)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_c

    :cond_1a
    :goto_d
    if-eqz v2, :cond_1b

    add-int/lit8 v11, v11, -0x1

    .line 49
    :cond_1b
    invoke-virtual {v14, v2}, La/a/e/h/i;->d(Z)V

    const/4 v0, 0x0

    goto :goto_e

    :cond_1c
    move v0, v2

    move/from16 v17, v3

    .line 50
    invoke-virtual {v14, v0}, La/a/e/h/i;->d(Z)V

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move v2, v0

    move/from16 v3, v17

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_1d
    const/4 v2, 0x1

    return v2
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/a/e/h/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    .line 2
    invoke-super {p0, p1}, La/a/e/h/b;->getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    :cond_0
    return-object p1
.end method

.method public h()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$e;

    iget-object v3, p0, La/a/e/h/b;->b:Landroid/content/Context;

    iget-object v4, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v5, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/ActionMenuPresenter$e;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 4
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$c;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$e;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 5
    iget-object v0, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 6
    invoke-super {p0, v0}, La/a/e/h/b;->onSubMenuSelected(La/a/e/h/q;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, La/a/e/h/b;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 3
    invoke-static {p1}, La/a/e/a;->a(Landroid/content/Context;)La/a/e/a;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, La/a/e/a;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, La/a/e/a;->b()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:I

    .line 8
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, La/a/e/a;->c()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    .line 10
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:I

    .line 11
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v2, p0, La/a/e/h/b;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 14
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    .line 18
    :cond_3
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 19
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v2, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 20
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 21
    :cond_5
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 22
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 23
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:I

    .line 24
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroid/view/View;

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->b()Z

    .line 2
    invoke-super {p0, p1, p2}, La/a/e/h/b;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 3
    iget p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->a:I

    if-lez p1, :cond_1

    .line 4
    iget-object v0, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, La/a/e/h/q;

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->onSubMenuSelected(La/a/e/h/q;)Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 2
    iget v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:I

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->a:I

    return-object v0
.end method

.method public onSubMenuSelected(La/a/e/h/q;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 2
    :goto_0
    invoke-virtual {v0}, La/a/e/h/q;->t()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 3
    invoke-virtual {v0}, La/a/e/h/q;->t()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, La/a/e/h/q;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, La/a/e/h/q;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {p1}, La/a/e/h/q;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:I

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v2

    move v3, v1

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    .line 7
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 8
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_4
    :goto_2
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$a;

    iget-object v3, p0, La/a/e/h/b;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$a;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;La/a/e/h/q;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    invoke-virtual {v0, v1}, La/a/e/h/m;->a(Z)V

    .line 11
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, La/a/e/h/m;->e()V

    .line 12
    invoke-super {p0, p1}, La/a/e/h/b;->onSubMenuSelected(La/a/e/h/q;)Z

    return v4
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, La/a/e/h/b;->onSubMenuSelected(La/a/e/h/q;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, La/a/e/h/b;->updateMenuView(Z)V

    .line 2
    iget-object p1, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 3
    iget-object p1, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/a/e/h/i;

    invoke-virtual {v3}, La/a/e/h/i;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3, p0}, Landroidx/core/view/ActionProvider;->a(Landroidx/core/view/ActionProvider$SubUiVisibilityListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, La/a/e/h/b;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->j()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 10
    :goto_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/e/h/i;

    invoke-virtual {p1}, La/a/e/h/i;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    move v0, v2

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 13
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez p1, :cond_5

    .line 14
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, p0, La/a/e/h/b;->a:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 15
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    iget-object v0, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_6
    iget-object p1, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->b()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 20
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    if-ne p1, v0, :cond_8

    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_8
    :goto_3
    iget-object p1, p0, La/a/e/h/b;->h:Landroidx/appcompat/view/menu/MenuView;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method
