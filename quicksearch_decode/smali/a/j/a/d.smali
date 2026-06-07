.class public abstract La/j/a/d;
.super La/j/a/b;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "La/j/a/b;"
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, La/j/a/b;-><init>()V

    .line 3
    new-instance p4, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p4}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object p4, p0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    .line 4
    iput-object p1, p0, La/j/a/d;->a:Landroid/app/Activity;

    const-string p1, "context == null"

    .line 5
    invoke-static {p2, p1}, La/g/g/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, La/j/a/d;->b:Landroid/content/Context;

    const-string p1, "handler == null"

    .line 6
    invoke-static {p3, p1}, La/g/g/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    iput-object p3, p0, La/j/a/d;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/FragmentActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, La/j/a/d;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/d;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract b(Landroidx/fragment/app/Fragment;)Z
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method public d()Landroidx/fragment/app/FragmentManagerImpl;
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/d;->d:Landroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public e()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, La/j/a/d;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract f()Landroid/view/LayoutInflater;
.end method

.method public abstract g()I
.end method

.method public abstract h()Z
.end method

.method public abstract i()V
.end method
