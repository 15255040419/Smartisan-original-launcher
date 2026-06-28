.class Lcom/amap/api/mapcore2d/bi$a;
.super Ljava/lang/Thread;
.source "MarkerDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bi;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/bi;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/bi;Lcom/amap/api/mapcore2d/bj;)V
    .locals 0

    .line 601
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bi$a;-><init>(Lcom/amap/api/mapcore2d/bi;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MarkerThread"

    .line 606
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bi$a;->setName(Ljava/lang/String;)V

    .line 607
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    .line 608
    invoke-static {v0}, Lcom/amap/api/mapcore2d/bi;->a(Lcom/amap/api/mapcore2d/bi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    .line 609
    invoke-static {v0}, Lcom/amap/api/mapcore2d/bi;->a(Lcom/amap/api/mapcore2d/bi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 610
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bi;->b(Lcom/amap/api/mapcore2d/bi;)I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/bi;->a(Lcom/amap/api/mapcore2d/bi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    .line 611
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/bi;->a(Lcom/amap/api/mapcore2d/bi;I)I

    goto :goto_1

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bi;->c(Lcom/amap/api/mapcore2d/bi;)I

    .line 615
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bi;->d(Lcom/amap/api/mapcore2d/bi;)Lcom/amap/api/mapcore2d/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bi;->e(Lcom/amap/api/mapcore2d/bi;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xfa

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "run"

    const-string v2, "MarkerDelegateImp"

    .line 619
    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bi$a;->a:Lcom/amap/api/mapcore2d/bi;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bi;->a(Lcom/amap/api/mapcore2d/bi;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 622
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_2
    return-void
.end method
