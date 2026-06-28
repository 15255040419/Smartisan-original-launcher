.class Lcom/amap/api/mapcore2d/ay$b;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ay;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/mapcore2d/cr;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ay;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$b;->b:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 500
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/cr;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ay;Lcom/amap/api/mapcore2d/az;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ay$b;-><init>(Lcom/amap/api/mapcore2d/ay;)V

    return-void
.end method

.method private a(FIIZ)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/cr;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/amap/api/mapcore2d/cr;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Lcom/amap/api/mapcore2d/ay;

    .line 526
    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/cr;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/cr;

    .line 529
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/cr;

    iput-boolean p4, p0, Lcom/amap/api/mapcore2d/cr;->d:Z

    .line 530
    iput p1, p0, Lcom/amap/api/mapcore2d/cr;->c:F

    const/4 p4, 0x0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 531
    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/amap/api/mapcore2d/cr;->a(FZFF)V

    return-void
.end method

.method private b(FIIZ)V
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/cr;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Lcom/amap/api/mapcore2d/cr;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Lcom/amap/api/mapcore2d/ay;

    .line 539
    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/cr;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/cr;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/cr;

    iput p1, v0, Lcom/amap/api/mapcore2d/cr;->c:F

    .line 543
    iput-boolean p4, v0, Lcom/amap/api/mapcore2d/cr;->d:Z

    .line 545
    iget-boolean p4, v0, Lcom/amap/api/mapcore2d/cr;->d:Z

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 546
    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 547
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    .line 548
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/amap/api/mapcore2d/bs;->a(II)Lcom/amap/api/mapcore2d/ab;

    move-result-object v1

    .line 549
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    .line 550
    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/bf;->a(Lcom/amap/api/mapcore2d/ab;)Lcom/amap/api/mapcore2d/ab;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/mapcore2d/bf;->l:Lcom/amap/api/mapcore2d/ab;

    .line 551
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    invoke-virtual {v1, p4}, Lcom/amap/api/mapcore2d/bf;->a(Landroid/graphics/Point;)V

    .line 554
    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$b;->c:Lcom/amap/api/mapcore2d/cr;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amap/api/mapcore2d/cr;->a(FZFF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$b;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public a(IIFZZ)V
    .locals 0

    if-nez p4, :cond_0

    .line 516
    invoke-direct {p0, p3, p1, p2, p5}, Lcom/amap/api/mapcore2d/ay$b;->a(FIIZ)V

    goto :goto_0

    .line 519
    :cond_0
    invoke-direct {p0, p3, p1, p2, p5}, Lcom/amap/api/mapcore2d/ay$b;->b(FIIZ)V

    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 569
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object p1

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 570
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bk$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object p1

    .line 572
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ay$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$b;->a:Lcom/amap/api/mapcore2d/ay;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/ay;->a(Lcom/amap/api/mapcore2d/ay;)Lcom/amap/api/mapcore2d/bk;

    move-result-object p0

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bk$a;->b()V

    goto :goto_0

    .line 576
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ay$b;->b:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation;

    .line 577
    invoke-virtual {p1, p0}, Lcom/amap/api/mapcore2d/b;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
