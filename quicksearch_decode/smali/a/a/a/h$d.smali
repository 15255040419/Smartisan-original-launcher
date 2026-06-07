.class public La/a/a/h$d;
.super Landroidx/appcompat/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroidx/appcompat/view/menu/MenuBuilder;

.field public e:Landroidx/appcompat/view/ActionMode$Callback;

.field public f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:La/a/a/h;


# direct methods
.method public constructor <init>(La/a/a/h;Landroid/content/Context;Landroidx/appcompat/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/a/h$d;->g:La/a/a/h;

    invoke-direct {p0}, Landroidx/appcompat/view/ActionMode;-><init>()V

    .line 2
    iput-object p2, p0, La/a/a/h$d;->c:Landroid/content/Context;

    .line 3
    iput-object p3, p0, La/a/a/h$d;->e:Landroidx/appcompat/view/ActionMode$Callback;

    .line 4
    new-instance p1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->c(I)Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object p1, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 6
    iget-object p1, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->a(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v1, v0, La/a/a/h;->j:La/a/a/h$d;

    if-eq v1, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, La/a/a/h;->r:Z

    iget-boolean v0, v0, La/a/a/h;->s:Z

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, La/a/a/h;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iput-object p0, v0, La/a/a/h;->k:Landroidx/appcompat/view/ActionMode;

    .line 4
    iget-object v1, p0, La/a/a/h$d;->e:Landroidx/appcompat/view/ActionMode$Callback;

    iput-object v1, v0, La/a/a/h;->l:Landroidx/appcompat/view/ActionMode$Callback;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, La/a/a/h$d;->e:Landroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, La/a/a/h$d;->e:Landroidx/appcompat/view/ActionMode$Callback;

    .line 7
    iget-object v1, p0, La/a/a/h$d;->g:La/a/a/h;

    invoke-virtual {v1, v2}, La/a/a/h;->d(Z)V

    .line 8
    iget-object v1, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v1, v1, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->a()V

    .line 9
    iget-object v1, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v1, v1, La/a/a/h;->e:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 10
    iget-object v1, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v2, v1, La/a/a/h;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, La/a/a/h;->x:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 11
    iget-object v1, p0, La/a/a/h$d;->g:La/a/a/h;

    iput-object v0, v1, La/a/a/h;->j:La/a/a/h$d;

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 15
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/a/a/h$d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 12
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, La/a/a/h$d;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 14
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/view/ActionMode;->a(Z)V

    .line 17
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 3
    iget-object v0, p0, La/a/a/h$d;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, La/a/a/h$d;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public d()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, La/a/e/e;

    iget-object v1, p0, La/a/a/h$d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, La/a/e/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->j:La/a/a/h$d;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->s()V

    .line 3
    :try_start_0
    iget-object v0, p0, La/a/a/h$d;->e:Landroidx/appcompat/view/ActionMode$Callback;

    iget-object v1, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/ActionMode$Callback;->onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->r()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->r()V

    throw v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object v0, v0, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->s()V

    .line 2
    :try_start_0
    iget-object v0, p0, La/a/a/h$d;->e:Landroidx/appcompat/view/ActionMode$Callback;

    iget-object v1, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/ActionMode$Callback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->r()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, La/a/a/h$d;->d:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->r()V

    throw v0
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, La/a/a/h$d;->e:Landroidx/appcompat/view/ActionMode$Callback;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2}, Landroidx/appcompat/view/ActionMode$Callback;->onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iget-object p1, p0, La/a/a/h$d;->e:Landroidx/appcompat/view/ActionMode$Callback;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, La/a/a/h$d;->i()V

    .line 3
    iget-object p1, p0, La/a/a/h$d;->g:La/a/a/h;

    iget-object p1, p1, La/a/a/h;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->e()Z

    return-void
.end method
