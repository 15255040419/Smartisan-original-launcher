.class public final La/a/e/h/e;
.super La/a/e/h/l;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/e/h/e$d;
    }
.end annotation


# static fields
.field public static final B:I


# instance fields
.field public A:Z

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/a/e/h/e$d;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final k:Landroid/view/View$OnAttachStateChangeListener;

.field public final l:Landroidx/appcompat/widget/MenuItemHoverListener;

.field public m:I

.field public n:I

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public y:Landroid/view/ViewTreeObserver;

.field public z:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    sput v0, La/a/e/h/e;->B:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, La/a/e/h/l;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/e/h/e;->h:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    .line 4
    new-instance v0, La/a/e/h/e$a;

    invoke-direct {v0, p0}, La/a/e/h/e$a;-><init>(La/a/e/h/e;)V

    iput-object v0, p0, La/a/e/h/e;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    new-instance v0, La/a/e/h/e$b;

    invoke-direct {v0, p0}, La/a/e/h/e$b;-><init>(La/a/e/h/e;)V

    iput-object v0, p0, La/a/e/h/e;->k:Landroid/view/View$OnAttachStateChangeListener;

    .line 6
    new-instance v0, La/a/e/h/e$c;

    invoke-direct {v0, p0}, La/a/e/h/e$c;-><init>(La/a/e/h/e;)V

    iput-object v0, p0, La/a/e/h/e;->l:Landroidx/appcompat/widget/MenuItemHoverListener;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, La/a/e/h/e;->m:I

    .line 8
    iput v0, p0, La/a/e/h/e;->n:I

    .line 9
    iput-object p1, p0, La/a/e/h/e;->b:Landroid/content/Context;

    .line 10
    iput-object p2, p0, La/a/e/h/e;->o:Landroid/view/View;

    .line 11
    iput p3, p0, La/a/e/h/e;->d:I

    .line 12
    iput p4, p0, La/a/e/h/e;->e:I

    .line 13
    iput-boolean p5, p0, La/a/e/h/e;->f:Z

    .line 14
    iput-boolean v0, p0, La/a/e/h/e;->v:Z

    .line 15
    invoke-virtual {p0}, La/a/e/h/e;->d()I

    move-result p2

    iput p2, p0, La/a/e/h/e;->q:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 18
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 19
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, La/a/e/h/e;->c:I

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, La/a/e/h/e;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(La/a/e/h/e$d;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 7

    .line 9
    iget-object v0, p1, La/a/e/h/e$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, v0, p2}, La/a/e/h/e;->a(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p1}, La/a/e/h/e$d;->a()Landroid/widget/ListView;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 12
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 13
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 14
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 15
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, La/a/e/h/g;

    goto :goto_0

    .line 16
    :cond_1
    check-cast v1, La/a/e/h/g;

    move v2, v3

    .line 17
    :goto_0
    invoke-virtual {v1}, La/a/e/h/g;->getCount()I

    move-result v4

    :goto_1
    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    .line 18
    invoke-virtual {v1, v3}, La/a/e/h/g;->getItem(I)La/a/e/h/i;

    move-result-object v6

    if-ne p2, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_2
    if-ne v3, v5, :cond_4

    return-object v0

    :cond_4
    add-int/2addr v3, v2

    .line 19
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr v3, p2

    if-ltz v3, :cond_6

    .line 20
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    if-lt v3, p2, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 22
    iget v0, p0, La/a/e/h/e;->m:I

    if-eq v0, p1, :cond_0

    .line 23
    iput p1, p0, La/a/e/h/e;->m:I

    .line 24
    iget-object v0, p0, La/a/e/h/e;->o:Landroid/view/View;

    .line 25
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    .line 26
    invoke-static {p1, v0}, La/g/h/b;->a(II)I

    move-result p1

    iput p1, p0, La/a/e/h/e;->n:I

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 27
    iget-object v0, p0, La/a/e/h/e;->o:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 28
    iput-object p1, p0, La/a/e/h/e;->o:Landroid/view/View;

    .line 29
    iget p1, p0, La/a/e/h/e;->m:I

    iget-object v0, p0, La/a/e/h/e;->o:Landroid/view/View;

    .line 30
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    .line 31
    invoke-static {p1, v0}, La/g/h/b;->a(II)I

    move-result p1

    iput p1, p0, La/a/e/h/e;->n:I

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 2
    iget-object v0, p0, La/a/e/h/e;->b:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, La/a/e/h/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, La/a/e/h/e;->d(Landroidx/appcompat/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, La/a/e/h/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, La/a/e/h/e;->v:Z

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, La/a/e/h/e;->r:Z

    .line 2
    iput p1, p0, La/a/e/h/e;->t:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, La/a/e/h/e;->w:Z

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/MenuBuilder;)I
    .locals 3

    .line 9
    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    iget-object v2, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/a/e/h/e$d;

    .line 11
    iget-object v2, v2, La/a/e/h/e$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final c()Landroidx/appcompat/widget/MenuPopupWindow;
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v1, p0, La/a/e/h/e;->b:Landroid/content/Context;

    iget v2, p0, La/a/e/h/e;->d:I

    iget v3, p0, La/a/e/h/e;->e:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    iget-object v1, p0, La/a/e/h/e;->l:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->a(Landroidx/appcompat/widget/MenuItemHoverListener;)V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object v1, p0, La/a/e/h/e;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/view/View;)V

    .line 6
    iget v1, p0, La/a/e/h/e;->n:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->c(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->a(Z)V

    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->e(I)V

    return-object v0
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, La/a/e/h/e;->s:Z

    .line 13
    iput p1, p0, La/a/e/h/e;->u:I

    return-void
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, La/a/e/h/e;->o:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public final d(I)I
    .locals 6

    .line 2
    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/e/h/e$d;

    invoke-virtual {v0}, La/a/e/h/e$d;->a()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v4, p0, La/a/e/h/e;->p:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6
    iget v4, p0, La/a/e/h/e;->q:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 7
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    .line 8
    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le v1, p1, :cond_0

    return v5

    :cond_0
    return v2

    .line 9
    :cond_1
    aget v0, v1, v5

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    return v2

    :cond_2
    return v5
.end method

.method public final d(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 14

    .line 10
    iget-object v0, p0, La/a/e/h/e;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 11
    new-instance v1, La/a/e/h/g;

    iget-boolean v2, p0, La/a/e/h/e;->f:Z

    sget v3, La/a/e/h/e;->B:I

    invoke-direct {v1, p1, v0, v2, v3}, La/a/e/h/g;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    .line 12
    invoke-virtual {p0}, La/a/e/h/e;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, La/a/e/h/e;->v:Z

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v1, v3}, La/a/e/h/g;->a(Z)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, La/a/e/h/e;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-static {p1}, La/a/e/h/l;->b(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, La/a/e/h/g;->a(Z)V

    .line 16
    :cond_1
    :goto_0
    iget-object v2, p0, La/a/e/h/e;->b:Landroid/content/Context;

    iget v4, p0, La/a/e/h/e;->c:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, La/a/e/h/l;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 17
    invoke-virtual {p0}, La/a/e/h/e;->c()Landroidx/appcompat/widget/MenuPopupWindow;

    move-result-object v4

    .line 18
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 19
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/ListPopupWindow;->b(I)V

    .line 20
    iget v1, p0, La/a/e/h/e;->n:I

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/ListPopupWindow;->c(I)V

    .line 21
    iget-object v1, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 22
    iget-object v1, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/e/h/e$d;

    .line 23
    invoke-virtual {p0, v1, p1}, La/a/e/h/e;->a(La/a/e/h/e$d;Landroidx/appcompat/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v1, v5

    move-object v6, v1

    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_9

    .line 24
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->d(Z)V

    .line 25
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/MenuPopupWindow;->a(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0, v2}, La/a/e/h/e;->d(I)I

    move-result v8

    if-ne v8, v3, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    move v9, v7

    .line 27
    :goto_2
    iput v8, p0, La/a/e/h/e;->q:I

    .line 28
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x5

    if-lt v8, v10, :cond_4

    .line 29
    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/view/View;)V

    move v8, v7

    move v12, v8

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    new-array v10, v8, [I

    .line 30
    iget-object v12, p0, La/a/e/h/e;->o:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v8, v8, [I

    .line 31
    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 32
    iget v12, p0, La/a/e/h/e;->n:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_5

    .line 33
    aget v12, v10, v7

    iget-object v13, p0, La/a/e/h/e;->o:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v10, v7

    .line 34
    aget v12, v8, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v8, v7

    .line 35
    :cond_5
    aget v12, v8, v7

    aget v13, v10, v7

    sub-int/2addr v12, v13

    .line 36
    aget v8, v8, v3

    aget v10, v10, v3

    sub-int/2addr v8, v10

    .line 37
    :goto_3
    iget v10, p0, La/a/e/h/e;->n:I

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_7

    if-eqz v9, :cond_6

    goto :goto_4

    .line 38
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_5

    :cond_7
    if-eqz v9, :cond_8

    .line 39
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_4
    add-int/2addr v12, v2

    goto :goto_6

    :cond_8
    :goto_5
    sub-int/2addr v12, v2

    .line 40
    :goto_6
    invoke-virtual {v4, v12}, Landroidx/appcompat/widget/ListPopupWindow;->d(I)V

    .line 41
    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/ListPopupWindow;->b(Z)V

    .line 42
    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/ListPopupWindow;->h(I)V

    goto :goto_7

    .line 43
    :cond_9
    iget-boolean v2, p0, La/a/e/h/e;->r:Z

    if-eqz v2, :cond_a

    .line 44
    iget v2, p0, La/a/e/h/e;->t:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/ListPopupWindow;->d(I)V

    .line 45
    :cond_a
    iget-boolean v2, p0, La/a/e/h/e;->s:Z

    if-eqz v2, :cond_b

    .line 46
    iget v2, p0, La/a/e/h/e;->u:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/ListPopupWindow;->h(I)V

    .line 47
    :cond_b
    invoke-virtual {p0}, La/a/e/h/l;->b()Landroid/graphics/Rect;

    move-result-object v2

    .line 48
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/graphics/Rect;)V

    .line 49
    :goto_7
    new-instance v2, La/a/e/h/e$d;

    iget v3, p0, La/a/e/h/e;->q:I

    invoke-direct {v2, v4, p1, v3}, La/a/e/h/e$d;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/MenuBuilder;I)V

    .line 50
    iget-object v3, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 52
    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 53
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_c

    .line 54
    iget-boolean v1, p0, La/a/e/h/e;->w:Z

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 55
    sget v1, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x1020016

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 58
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->h()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v2, v0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 60
    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_c
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, La/a/e/h/e;->i:Ljava/util/List;

    new-array v2, v0, [La/a/e/h/e$d;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [La/a/e/h/e$d;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v2, v1, v0

    .line 5
    iget-object v3, v2, La/a/e/h/e$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v2, La/a/e/h/e$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/e/h/e$d;

    invoke-virtual {v0}, La/a/e/h/e$d;->a()Landroid/widget/ListView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .line 1
    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/e/h/e$d;

    iget-object v0, v0, La/a/e/h/e$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, La/a/e/h/e;->c(Landroidx/appcompat/view/menu/MenuBuilder;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 2
    iget-object v2, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/e/h/e$d;

    .line 4
    iget-object v1, v1, La/a/e/h/e$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Z)V

    .line 5
    :cond_1
    iget-object v1, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/e/h/e$d;

    .line 6
    iget-object v1, v0, La/a/e/h/e$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->b(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 7
    iget-boolean v1, p0, La/a/e/h/e;->A:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, v0, La/a/e/h/e$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->b(Ljava/lang/Object;)V

    .line 9
    iget-object v1, v0, La/a/e/h/e$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/ListPopupWindow;->a(I)V

    .line 10
    :cond_2
    iget-object v0, v0, La/a/e/h/e$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 11
    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 12
    iget-object v1, p0, La/a/e/h/e;->i:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/e/h/e$d;

    iget v1, v1, La/a/e/h/e$d;->c:I

    iput v1, p0, La/a/e/h/e;->q:I

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, La/a/e/h/e;->d()I

    move-result v1

    iput v1, p0, La/a/e/h/e;->q:I

    :goto_0
    if-nez v0, :cond_7

    .line 14
    invoke-virtual {p0}, La/a/e/h/e;->dismiss()V

    .line 15
    iget-object p2, p0, La/a/e/h/e;->x:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 16
    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 17
    :cond_4
    iget-object p1, p0, La/a/e/h/e;->y:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, La/a/e/h/e;->y:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, La/a/e/h/e;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    :cond_5
    iput-object v2, p0, La/a/e/h/e;->y:Landroid/view/ViewTreeObserver;

    .line 21
    :cond_6
    iget-object p1, p0, La/a/e/h/e;->p:Landroid/view/View;

    iget-object p2, p0, La/a/e/h/e;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 22
    iget-object p1, p0, La/a/e/h/e;->z:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 23
    iget-object p1, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/e/h/e$d;

    .line 24
    iget-object p1, p1, La/a/e/h/e$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/a/e/h/e$d;

    .line 3
    iget-object v4, v3, La/a/e/h/e$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    iget-object v0, v3, La/a/e/h/e$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, La/a/e/h/e;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(La/a/e/h/q;)Z
    .locals 4

    .line 1
    iget-object v0, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/e/h/e$d;

    .line 2
    iget-object v3, v1, La/a/e/h/e$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 3
    invoke-virtual {v1}, La/a/e/h/e$d;->a()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0, p1}, La/a/e/h/e;->a(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 6
    iget-object v0, p0, La/a/e/h/e;->x:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/e;->x:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/e;->z:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, La/a/e/h/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La/a/e/h/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 3
    invoke-virtual {p0, v1}, La/a/e/h/e;->d(Landroidx/appcompat/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, La/a/e/h/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, La/a/e/h/e;->o:Landroid/view/View;

    iput-object v0, p0, La/a/e/h/e;->p:Landroid/view/View;

    .line 6
    iget-object v0, p0, La/a/e/h/e;->p:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, La/a/e/h/e;->y:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v1, p0, La/a/e/h/e;->p:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, La/a/e/h/e;->y:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, La/a/e/h/e;->y:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, La/a/e/h/e;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    :cond_3
    iget-object v0, p0, La/a/e/h/e;->p:Landroid/view/View;

    iget-object v1, p0, La/a/e/h/e;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, La/a/e/h/e;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/e/h/e$d;

    .line 2
    invoke-virtual {v0}, La/a/e/h/e$d;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, La/a/e/h/l;->a(Landroid/widget/ListAdapter;)La/a/e/h/g;

    move-result-object v0

    invoke-virtual {v0}, La/a/e/h/g;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
