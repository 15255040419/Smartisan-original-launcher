.class public Lb/a/a/m1/c;
.super Ljava/lang/Object;
.source "AsyncDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/m1/c$b;
    }
.end annotation


# instance fields
.field public a:Li/p/c;

.field public final b:Landroid/app/Activity;

.field public final c:Landroid/os/Handler;

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/a/a/m1/c$a;

    invoke-direct {v0, p0}, Lb/a/a/m1/c$a;-><init>(Lb/a/a/m1/c;)V

    iput-object v0, p0, Lb/a/a/m1/c;->d:Ljava/lang/Runnable;

    .line 3
    iput-object p1, p0, Lb/a/a/m1/c;->b:Landroid/app/Activity;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lb/a/a/m1/c;->c:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lb/a/a/m1/c;)Li/p/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/m1/c;->a:Li/p/c;

    return-object p0
.end method

.method public static synthetic a(Lb/a/a/m1/c;Li/p/c;)Li/p/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lb/a/a/m1/c;->a:Li/p/c;

    return-object p1
.end method

.method public static synthetic b(Lb/a/a/m1/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/m1/c;->b:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic c(Lb/a/a/m1/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/m1/c;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic d(Lb/a/a/m1/c;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/m1/c;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lb/a/a/m1/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lb/a/a/m1/c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lb/a/a/m1/c;->a:Li/p/c;

    return-void
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 1

    .line 3
    new-instance v0, Lb/a/a/m1/c$b;

    invoke-direct {v0, p0, p3, p2}, Lb/a/a/m1/c$b;-><init>(Lb/a/a/m1/c;ILjava/lang/Runnable;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Runnable;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/m1/c;->a:Li/p/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
