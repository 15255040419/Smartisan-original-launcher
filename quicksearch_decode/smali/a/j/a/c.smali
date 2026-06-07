.class public La/j/a/c;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field public final a:La/j/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j/a/d<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/j/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j/a/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/j/a/c;->a:La/j/a/d;

    return-void
.end method

.method public static a(La/j/a/d;)La/j/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j/a/d<",
            "*>;)",
            "La/j/a/c;"
        }
    .end annotation

    .line 1
    new-instance v0, La/j/a/c;

    invoke-direct {v0, p0}, La/j/a/c;-><init>(La/j/a/d;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 4
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 2
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 6
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->i()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 8
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;La/j/a/e;)V
    .locals 1

    .line 5
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/os/Parcelable;La/j/a/e;)V

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1

    .line 11
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 3
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v1, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->a(La/j/a/d;La/j/a/b;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 7
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    .line 9
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .line 10
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->j()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 1

    .line 3
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->b(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    .line 4
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->k()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->m()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->n()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->o()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->p()V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->q()V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->t()Z

    move-result v0

    return v0
.end method

.method public j()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    invoke-virtual {v0}, La/j/a/d;->d()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->x()V

    return-void
.end method

.method public l()La/j/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->z()La/j/a/e;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/c;->a:La/j/a/d;

    iget-object v0, v0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->A()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
