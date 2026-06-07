.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$d;,
        Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;,
        Landroidx/fragment/app/Fragment$e;,
        Landroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field public static final W:La/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final X:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Landroid/view/ViewGroup;

.field public I:Landroid/view/View;

.field public J:Landroid/view/View;

.field public K:Z

.field public L:Z

.field public M:Landroidx/fragment/app/Fragment$d;

.field public N:Z

.field public O:Z

.field public P:F

.field public Q:Landroid/view/LayoutInflater;

.field public R:Z

.field public S:La/l/c;

.field public T:La/l/c;

.field public U:Landroidx/lifecycle/LifecycleOwner;

.field public V:La/l/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/l/f<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field public a:I

.field public b:Landroid/os/Bundle;

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Boolean;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Landroid/os/Bundle;

.field public h:Landroidx/fragment/app/Fragment;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Landroidx/fragment/app/FragmentManagerImpl;

.field public s:La/j/a/d;

.field public t:Landroidx/fragment/app/FragmentManagerImpl;

.field public u:La/j/a/e;

.field public v:La/l/i;

.field public w:Landroidx/fragment/app/Fragment;

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/d/g;

    invoke-direct {v0}, La/d/g;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->W:La/d/g;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->X:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    .line 4
    iput v0, p0, Landroidx/fragment/app/Fragment;->i:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    .line 7
    new-instance v0, La/l/c;

    invoke-direct {v0, p0}, La/l/c;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->S:La/l/c;

    .line 8
    new-instance v0, La/l/f;

    invoke-direct {v0}, La/l/f;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->V:La/l/f;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 5

    const-string v0, " empty constructor that is public"

    const-string v1, ": make sure class name exists, is public, and has an"

    const-string v2, "Unable to instantiate fragment "

    .line 1
    :try_start_0
    sget-object v3, Landroidx/fragment/app/Fragment;->W:La/d/g;

    invoke-virtual {v3, p1}, La/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3
    sget-object p0, Landroidx/fragment/app/Fragment;->W:La/d/g;

    invoke-virtual {p0, p1, v3}, La/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    new-array v4, p0, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance p2, Landroidx/fragment/app/Fragment$e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 8
    new-instance p2, Landroidx/fragment/app/Fragment$e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 9
    new-instance p2, Landroidx/fragment/app/Fragment$e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 10
    new-instance p2, Landroidx/fragment/app/Fragment$e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p0

    .line 11
    new-instance p2, Landroidx/fragment/app/Fragment$e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 12
    :try_start_0
    sget-object v0, Landroidx/fragment/app/Fragment;->W:La/d/g;

    invoke-virtual {v0, p1}, La/d/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    sget-object p0, Landroidx/fragment/app/Fragment;->W:La/d/g;

    invoke-virtual {p0, p1, v0}, La/d/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    const-class p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->B:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$d;->s:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->q:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$d;->q:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->d()Z

    move-result v0

    return v0
.end method

.method public F()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->x()V

    :cond_0
    return-void
.end method

.method public G()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->v:La/l/i;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {v1}, La/l/i;->a()V

    :cond_1
    return-void
.end method

.method public H()V
    .locals 0

    return-void
.end method

.method public I()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public K()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public L()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public M()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public N()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public O()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public P()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:La/l/c;

    sget-object v1, La/l/b$a;->ON_DESTROY:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->k()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/fragment/app/Fragment;->a:I

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->R:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->G()V

    .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    return-void

    .line 10
    :cond_1
    new-instance v0, La/j/a/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    sget-object v1, La/l/b$a;->ON_DESTROY:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->l()V

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()V

    .line 8
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v1, :cond_2

    .line 9
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManager;->a()V

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    return-void

    .line 11
    :cond_2
    new-instance v0, La/j/a/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public R()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->Q:Landroid/view/LayoutInflater;

    .line 4
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 6
    iget-boolean v2, p0, Landroidx/fragment/app/Fragment;->D:Z

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->k()V

    .line 8
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 10
    :cond_2
    new-instance v0, La/j/a/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public S()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->m()V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    sget-object v1, La/l/b$a;->ON_PAUSE:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:La/l/c;

    sget-object v1, La/l/b$a;->ON_PAUSE:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->n()V

    :cond_1
    const/4 v0, 0x3

    .line 6
    iput v0, p0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 9
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    new-instance v0, La/j/a/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public U()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->x()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->t()Z

    :cond_0
    const/4 v0, 0x4

    .line 4
    iput v0, p0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->L()V

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->o()V

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->t()Z

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:La/l/c;

    sget-object v1, La/l/b$a;->ON_RESUME:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    sget-object v1, La/l/b$a;->ON_RESUME:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    :cond_2
    return-void

    .line 14
    :cond_3
    new-instance v0, La/j/a/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public V()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->x()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->t()Z

    :cond_0
    const/4 v0, 0x3

    .line 4
    iput v0, p0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()V

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->p()V

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:La/l/c;

    sget-object v1, La/l/b$a;->ON_START:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    sget-object v1, La/l/b$a;->ON_START:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    :cond_2
    return-void

    .line 13
    :cond_3
    new-instance v0, La/j/a/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public W()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    sget-object v1, La/l/b$a;->ON_STOP:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:La/l/c;

    sget-object v1, La/l/b$a;->ON_STOP:La/l/b$a;

    invoke-virtual {v0, v1}, La/l/c;->a(La/l/b$a;)V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->q()V

    :cond_1
    const/4 v0, 0x2

    .line 6
    iput v0, p0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N()V

    .line 9
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    new-instance v0, La/j/a/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final X()Landroid/content/Context;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Y()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->m:La/j/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl;->m:La/j/a/d;

    invoke-virtual {v1}, La/j/a/d;->e()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->m:La/j/a/d;

    invoke-virtual {v0}, La/j/a/d;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/Fragment$a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$a;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->a()V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->b()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$d;->q:Z

    :goto_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, La/j/a/d;->f()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Landroidx/fragment/app/FragmentManager;

    .line 22
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->v()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-static {p1, v0}, La/g/h/c;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 101
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 34
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 35
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment$d;->q:Z

    .line 36
    iget-object v2, v0, Landroidx/fragment/app/Fragment$d;->r:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 37
    iput-object v1, v0, Landroidx/fragment/app/Fragment$d;->r:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 38
    invoke-interface {v1}, Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->b()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$d;->d:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->b()Landroidx/fragment/app/Fragment$d;

    .line 110
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    iput p1, v0, Landroidx/fragment/app/Fragment$d;->e:I

    .line 111
    iput p2, v0, Landroidx/fragment/app/Fragment$d;->f:I

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 16
    iput p1, p0, Landroidx/fragment/app/Fragment;->e:I

    if-eqz p2, :cond_0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:fragment:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/animation/Animator;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->b()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$d;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 30
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La/j/a/d;->b()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 32
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 25
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La/j/a/d;->b()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 103
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->b()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$d;->a:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 39
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Landroidx/fragment/app/Fragment;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 41
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Landroidx/fragment/app/Fragment;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 43
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    .line 45
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 46
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 47
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->q:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 48
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 49
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 50
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 51
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 52
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 53
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->B:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 54
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 55
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 56
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    .line 57
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    .line 58
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 59
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 62
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 65
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->w:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 68
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 70
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 73
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 76
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->h:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    .line 78
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Landroidx/fragment/app/Fragment;->j:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 80
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->o()I

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->o()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 82
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 83
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->H:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 84
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 85
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 86
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->J:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 87
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 89
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    .line 90
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    .line 93
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->w()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 95
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 96
    invoke-static {p0}, Landroidx/loader/app/LoaderManager;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/loader/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/loader/app/LoaderManager;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 97
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_d

    .line 98
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManagerImpl;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Landroidx/fragment/app/Fragment$d;
    .locals 1

    .line 19
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Landroidx/fragment/app/Fragment$d;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$d;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->b()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$d;->c:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->x()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->p:Z

    .line 5
    new-instance v0, Landroidx/fragment/app/Fragment$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$c;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/LifecycleOwner;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()La/l/b;

    .line 10
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->V:La/l/f;

    iget-object p2, p0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p2}, La/l/f;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    if-nez p1, :cond_2

    .line 12
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->U:Landroidx/lifecycle/LifecycleOwner;

    :goto_0
    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .line 14
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 15
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    move v1, v0

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La/j/a/d;->b()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    :goto_0
    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->k(Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->d(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerImpl;->j()V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/Menu;)V
    .locals 1

    .line 11
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v0, :cond_1

    .line 12
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;)V

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public c(Landroid/view/MenuItem;)Z
    .locals 2

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public d(Z)V
    .locals 1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Z)V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->a(Z)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(Landroid/view/Menu;)Z
    .locals 2

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/Menu;)V

    move v1, v0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->b(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public d(Landroid/view/MenuItem;)Z
    .locals 2

    .line 12
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->A:Z

    if-nez v0, :cond_1

    .line 13
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->E:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->F:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->b(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->c(Z)V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->b(Z)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Landroid/view/View;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->a:Landroid/view/View;

    return-object v0
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->b()Landroidx/fragment/app/Fragment$d;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$d;->s:Z

    return-void
.end method

.method public g()Landroid/animation/Animator;
    .locals 1

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 11
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->x()V

    :cond_0
    const/4 v0, 0x2

    .line 3
    iput v0, p0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 6
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerImpl;->i()V

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance p1, La/j/a/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLifecycle()La/l/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:La/l/c;

    return-object v0
.end method

.method public getViewModelStore()La/l/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:La/l/i;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, La/l/i;

    invoke-direct {v0}, La/l/i;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->v:La/l/i;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->v:La/l/i;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Landroidx/fragment/app/FragmentManager;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z()V

    .line 3
    iget v0, p0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->o()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->p()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->i()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->j()V

    .line 8
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 2

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->x()V

    :cond_0
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Landroidx/fragment/app/Fragment;->a:I

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 14
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->R:Z

    .line 15
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->S:La/l/c;

    sget-object v0, La/l/b$a;->ON_CREATE:La/l/b$a;

    invoke-virtual {p1, v0}, La/l/c;->a(La/l/b$a;)V

    return-void

    .line 17
    :cond_1
    new-instance p1, La/j/a/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La/j/a/d;->c()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->Q:Landroid/view/LayoutInflater;

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->Q:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 2

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->A()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public k()Landroidx/core/app/SharedElementCallback;
    .locals 1

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->o:Landroidx/core/app/SharedElementCallback;

    return-object v0
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->u:La/j/a/e;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->a(Landroid/os/Parcelable;La/j/a/e;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->u:La/j/a/e;

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerImpl;->j()V

    :cond_1
    return-void
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 11
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final l(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->J:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->c:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->f(Landroid/os/Bundle;)V

    .line 6
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->T:La/l/c;

    sget-object v0, La/l/b$a;->ON_CREATE:La/l/b$a;

    invoke-virtual {p1, v0}, La/l/c;->a(La/l/b$a;)V

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance p1, La/j/a/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La/j/a/k;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Landroidx/core/app/SharedElementCallback;
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->p:Landroidx/core/app/SharedElementCallback;

    return-object v0
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/Fragment;->e:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    return-void
.end method

.method public final n()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$d;->d:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->c()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->G:Z

    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$d;->e:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$d;->f:I

    return v0
.end method

.method public r()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->X:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->l()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final s()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->b()Landroidx/fragment/app/Fragment$d;

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->r:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment$d;->q:Z

    if-eqz v1, :cond_3

    .line 5
    iput-object p1, v0, Landroidx/fragment/app/Fragment$d;->r:Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    :cond_3
    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p1}, Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    :cond_4
    return-void
.end method

.method public t()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->h:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->X:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-static {p0, v0}, La/g/g/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 3
    iget v1, p0, Landroidx/fragment/app/Fragment;->e:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget v1, p0, Landroidx/fragment/app/Fragment;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget v1, p0, Landroidx/fragment/app/Fragment;->x:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Landroidx/fragment/app/Fragment;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public v()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$d;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->X:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->M:Landroidx/fragment/app/Fragment$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$d;->c:I

    return v0
.end method

.method public x()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public y()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/fragment/app/Fragment;->e:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->f:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->k:Z

    .line 4
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->l:Z

    .line 5
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->m:Z

    .line 6
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->n:Z

    .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->o:Z

    .line 8
    iput v1, p0, Landroidx/fragment/app/Fragment;->q:I

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/FragmentManagerImpl;

    .line 10
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    .line 11
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    .line 12
    iput v1, p0, Landroidx/fragment/app/Fragment;->x:I

    .line 13
    iput v1, p0, Landroidx/fragment/app/Fragment;->y:I

    .line 14
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->z:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->A:Z

    .line 16
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->B:Z

    .line 17
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->D:Z

    return-void
.end method

.method public z()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->s:La/j/a/d;

    new-instance v2, Landroidx/fragment/app/Fragment$b;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/FragmentManagerImpl;->a(La/j/a/d;La/j/a/b;Landroidx/fragment/app/Fragment;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
