.class public Lcom/android/quicksearchbox/animation/view/ForegroundContentView$a;
.super Landroid/os/Handler;
.source "ForegroundContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/animation/view/ForegroundContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/android/quicksearchbox/animation/view/ForegroundContentView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/animation/view/ForegroundContentView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView$a;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView$a;->a:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView$a;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;

    .line 4
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/android/quicksearchbox/animation/view/ForegroundContentView$b;

    invoke-direct {p1}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView$b;-><init>()V

    .line 6
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Lb/a/a/e1/b;

    if-eqz v1, :cond_3

    .line 8
    check-cast p1, Lb/a/a/e1/b;

    .line 9
    invoke-static {v0, p1}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->a(Lcom/android/quicksearchbox/animation/view/ForegroundContentView;Lb/a/a/e1/b;)V

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->setHistoryInfo(Lb/a/a/e1/b;)V

    .line 11
    invoke-virtual {v0}, Lcom/android/quicksearchbox/animation/view/ForegroundContentView;->e()V

    :cond_3
    :goto_0
    return-void
.end method
