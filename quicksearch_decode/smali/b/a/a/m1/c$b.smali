.class public Lb/a/a/m1/c$b;
.super Landroid/os/AsyncTask;
.source "AsyncDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/m1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final synthetic b:Lb/a/a/m1/c;


# direct methods
.method public constructor <init>(Lb/a/a/m1/c;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p3, p0, Lb/a/a/m1/c$b;->a:Ljava/lang/Runnable;

    .line 3
    invoke-static {p1}, Lb/a/a/m1/c;->a(Lb/a/a/m1/c;)Li/p/c;

    move-result-object p3

    if-nez p3, :cond_0

    .line 4
    invoke-virtual {p0}, Lb/a/a/m1/c$b;->a()Li/p/c;

    move-result-object p3

    invoke-static {p1, p3}, Lb/a/a/m1/c;->a(Lb/a/a/m1/c;Li/p/c;)Li/p/c;

    :cond_0
    if-lez p2, :cond_1

    .line 5
    invoke-static {p1}, Lb/a/a/m1/c;->a(Lb/a/a/m1/c;)Li/p/c;

    move-result-object p3

    invoke-static {p1}, Lb/a/a/m1/c;->b(Lb/a/a/m1/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Li/p/c;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lb/a/a/m1/c;->a(Lb/a/a/m1/c;)Li/p/c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Li/p/c;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Li/p/c;
    .locals 2

    .line 1
    new-instance v0, Li/p/c;

    iget-object v1, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {v1}, Lb/a/a/m1/c;->b(Lb/a/a/m1/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Li/p/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v0
.end method

.method public varargs a([Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 5
    aget-object v1, p1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {p1}, Lb/a/a/m1/c;->d(Lb/a/a/m1/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {v0}, Lb/a/a/m1/c;->c(Lb/a/a/m1/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {v0}, Lb/a/a/m1/c;->d(Lb/a/a/m1/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {v1}, Lb/a/a/m1/c;->c(Lb/a/a/m1/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Void;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {p1}, Lb/a/a/m1/c;->b(Lb/a/a/m1/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {p1}, Lb/a/a/m1/c;->a(Lb/a/a/m1/c;)Li/p/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {p1}, Lb/a/a/m1/c;->a(Lb/a/a/m1/c;)Li/p/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {p1}, Lb/a/a/m1/c;->a(Lb/a/a/m1/c;)Li/p/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    :cond_1
    iget-object p1, p0, Lb/a/a/m1/c$b;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lb/a/a/m1/c$b;->a([Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lb/a/a/m1/c$b;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {v0}, Lb/a/a/m1/c;->d(Lb/a/a/m1/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/m1/c$b;->b:Lb/a/a/m1/c;

    invoke-static {v1}, Lb/a/a/m1/c;->c(Lb/a/a/m1/c;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
