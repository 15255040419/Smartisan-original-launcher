.class public La/a/e/h/f;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/e/h/f$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:Landroidx/appcompat/view/menu/MenuBuilder;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public i:La/a/e/h/f$a;

.field public j:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, La/a/e/h/f;->g:I

    .line 6
    iput p2, p0, La/a/e/h/f;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, La/a/e/h/f;-><init>(II)V

    .line 2
    iput-object p1, p0, La/a/e/h/f;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p0, La/a/e/h/f;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, La/a/e/h/f;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/f;->i:La/a/e/h/f$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/a/e/h/f$a;

    invoke-direct {v0, p0}, La/a/e/h/f$a;-><init>(La/a/e/h/f;)V

    iput-object v0, p0, La/a/e/h/f;->i:La/a/e/h/f$a;

    .line 3
    :cond_0
    iget-object v0, p0, La/a/e/h/f;->i:La/a/e/h/f$a;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android:menu:list"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, La/a/e/h/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    iget-object v1, p0, La/a/e/h/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v1, "android:menu:list"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;La/a/e/h/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;La/a/e/h/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, La/a/e/h/f;->j:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3

    .line 1
    iget-object v0, p0, La/a/e/h/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, La/a/e/h/f;->b:Landroid/view/LayoutInflater;

    sget v1, Landroidx/appcompat/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p1, p0, La/a/e/h/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 3
    iget-object p1, p0, La/a/e/h/f;->i:La/a/e/h/f$a;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, La/a/e/h/f$a;

    invoke-direct {p1, p0}, La/a/e/h/f$a;-><init>(La/a/e/h/f;)V

    iput-object p1, p0, La/a/e/h/f;->i:La/a/e/h/f$a;

    .line 5
    :cond_0
    iget-object p1, p0, La/a/e/h/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v0, p0, La/a/e/h/f;->i:La/a/e/h/f$a;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object p1, p0, La/a/e/h/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7
    :cond_1
    iget-object p1, p0, La/a/e/h/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 2

    .line 1
    iget v0, p0, La/a/e/h/f;->f:I

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, La/a/e/h/f;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p0, La/a/e/h/f;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, La/a/e/h/f;->b:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, La/a/e/h/f;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 5
    iput-object p1, p0, La/a/e/h/f;->a:Landroid/content/Context;

    .line 6
    iget-object p1, p0, La/a/e/h/f;->b:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, La/a/e/h/f;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, La/a/e/h/f;->b:Landroid/view/LayoutInflater;

    .line 8
    :cond_1
    :goto_0
    iput-object p2, p0, La/a/e/h/f;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 9
    iget-object p1, p0, La/a/e/h/f;->i:La/a/e/h/f$a;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, La/a/e/h/f$a;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/f;->h:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, La/a/e/h/f;->c:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p2, p0, La/a/e/h/f;->i:La/a/e/h/f$a;

    invoke-virtual {p2, p3}, La/a/e/h/f$a;->getItem(I)La/a/e/h/i;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, La/a/e/h/f;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/f;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, La/a/e/h/f;->b(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onSubMenuSelected(La/a/e/h/q;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance v0, La/a/e/h/h;

    invoke-direct {v0, p1}, La/a/e/h/h;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/a/e/h/h;->a(Landroid/os/IBinder;)V

    .line 3
    iget-object v0, p0, La/a/e/h/f;->h:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/f;->h:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, La/a/e/h/f;->i:La/a/e/h/f$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La/a/e/h/f$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
