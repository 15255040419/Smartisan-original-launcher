.class public Lcom/android/quicksearchbox/ui/SearchActivityView$q;
.super Landroid/os/Handler;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "q"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/android/quicksearchbox/ui/SearchActivityView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$q;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public final a(ZLcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->e(Lcom/android/quicksearchbox/ui/SearchActivityView;)Lcom/android/quicksearchbox/ui/SearchActivityView$s;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    const-string v2, "Previous refresh hot words task is not finished"

    .line 3
    invoke-static {v2}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 5
    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/ui/SearchActivityView$s;

    invoke-direct {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$s;-><init>(Z)V

    .line 6
    :try_start_0
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Refresh hot words RejectedExecutionException"

    .line 7
    invoke-static {p1}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$q;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$q;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/SearchActivityView;

    .line 4
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v1, v5, :cond_6

    const/4 v5, 0x4

    if-eq v1, v5, :cond_5

    const/4 v5, 0x5

    if-eq v1, v5, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 p1, 0x9

    if-eq v1, p1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->d(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    goto :goto_2

    .line 6
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v6

    :goto_0
    invoke-virtual {p0, v4, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView$q;->a(ZLcom/android/quicksearchbox/ui/SearchActivityView;)V

    goto :goto_2

    .line 7
    :cond_4
    invoke-static {v0, v2, v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lcom/android/quicksearchbox/ui/SearchActivityView;J)V

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->c()V

    .line 9
    invoke-virtual {v0, v6}, Lcom/android/quicksearchbox/ui/SearchActivityView;->c(Z)V

    .line 10
    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->N()V

    goto :goto_2

    .line 11
    :cond_6
    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/SearchActivity;->z()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 12
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_7

    goto :goto_1

    :cond_7
    move v4, v6

    :goto_1
    invoke-virtual {p0, v4, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView$q;->a(ZLcom/android/quicksearchbox/ui/SearchActivityView;)V

    goto :goto_2

    .line 13
    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v1, Lb/a/a/e1/b;

    if-eqz v5, :cond_b

    .line 14
    check-cast v1, Lb/a/a/e1/b;

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setHistoryInfo(Lb/a/a/e1/b;)V

    .line 16
    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->c(Lcom/android/quicksearchbox/ui/SearchActivityView;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setRecommendInfo(Lb/a/a/e1/b;)V

    .line 18
    :cond_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_a

    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 19
    invoke-static {v0, v2, v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lcom/android/quicksearchbox/ui/SearchActivityView;J)V

    .line 20
    :cond_a
    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->N()V

    :cond_b
    :goto_2
    return-void
.end method
