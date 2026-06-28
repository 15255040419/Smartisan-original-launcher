.class Lcom/amap/api/mapcore2d/ay$a;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ay;

.field private b:Lcom/amap/api/mapcore2d/cj;

.field private c:Landroid/os/Message;

.field private d:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ay;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 424
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a;->b:Lcom/amap/api/mapcore2d/cj;

    .line 425
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a;->c:Landroid/os/Message;

    .line 426
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a;->d:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/az;)V
    .locals 0

    .line 423
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$a;-><init>(Lcom/amap/api/mapcore2d/ay;)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/ab;I)Lcom/amap/api/mapcore2d/cj;
    .locals 8

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p2

    .line 446
    :goto_0
    new-instance v0, Lcom/amap/api/mapcore2d/cj;

    const/16 v3, 0xa

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    .line 447
    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v4, v1, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    move-object v1, v0

    move-object v5, p1

    move v6, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/mapcore2d/cj;-><init>(IILcom/amap/api/mapcore2d/ab;Lcom/amap/api/mapcore2d/ab;ILcom/amap/api/mapcore2d/ck;)V

    return-object v0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->b:Lcom/amap/api/mapcore2d/cj;

    .line 453
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->c:Landroid/os/Message;

    .line 454
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$a;->b:Lcom/amap/api/mapcore2d/cj;

    if-eqz p0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cj;->d()V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 475
    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;)V

    return-void

    .line 470
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 471
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bf;->b(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object p1

    .line 472
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ab;)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ab;Landroid/os/Message;Ljava/lang/Runnable;I)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/bk$b;->a:Z

    .line 431
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ab;->g()Lcom/amap/api/mapcore2d/ab;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/bf;->m:Lcom/amap/api/mapcore2d/ab;

    .line 432
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ay$a;->a()V

    .line 433
    invoke-direct {p0, p1, p4}, Lcom/amap/api/mapcore2d/ay$a;->a(Lcom/amap/api/mapcore2d/ab;I)Lcom/amap/api/mapcore2d/cj;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$a;->b:Lcom/amap/api/mapcore2d/cj;

    .line 434
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ay$a;->c:Landroid/os/Message;

    .line 435
    iput-object p3, p0, Lcom/amap/api/mapcore2d/ay$a;->d:Ljava/lang/Runnable;

    .line 436
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$a;->b:Lcom/amap/api/mapcore2d/cj;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cj;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->c:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$a;->c:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 485
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 487
    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ay$a;->c()V

    .line 488
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    if-eqz v0, :cond_2

    .line 489
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$a;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->d:Lcom/amap/api/mapcore2d/bk$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bk$b;->a:Z

    :cond_2
    return-void
.end method
