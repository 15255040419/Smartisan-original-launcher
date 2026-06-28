.class public Lcom/amap/api/mapcore2d/bk$a;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/amap/api/mapcore2d/bx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bx<",
            "Lcom/amap/api/mapcore2d/at;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field final synthetic k:Lcom/amap/api/mapcore2d/bk;

.field private l:Z

.field private m:Z

.field private n:Landroid/content/Context;

.field private o:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;)V
    .locals 5

    .line 570
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bk$a;->l:Z

    const/4 v1, 0x1

    .line 556
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bk$a;->m:Z

    const/4 v2, 0x0

    .line 560
    iput-object v2, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    .line 565
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bk$a;->b:Z

    .line 566
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bk$a;->c:Z

    const-string v2, "zh_cn"

    .line 567
    iput-object v2, p0, Lcom/amap/api/mapcore2d/bk$a;->d:Ljava/lang/String;

    .line 682
    iput v0, p0, Lcom/amap/api/mapcore2d/bk$a;->e:I

    .line 683
    iput v0, p0, Lcom/amap/api/mapcore2d/bk$a;->f:I

    const-string v3, "SatelliteMap3"

    .line 685
    iput-object v3, p0, Lcom/amap/api/mapcore2d/bk$a;->h:Ljava/lang/String;

    const-string v3, "GridTmc3"

    .line 686
    iput-object v3, p0, Lcom/amap/api/mapcore2d/bk$a;->i:Ljava/lang/String;

    const-string v3, "SateliteTmc3"

    .line 687
    iput-object v3, p0, Lcom/amap/api/mapcore2d/bk$a;->j:Ljava/lang/String;

    .line 1094
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bk$a;->o:Z

    if-nez p2, :cond_0

    return-void

    .line 574
    :cond_0
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->n:Landroid/content/Context;

    .line 575
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    .line 577
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 578
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 580
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget v4, v4, Lcom/amap/api/mapcore2d/bf;->a:I

    div-int/2addr v3, v4

    .line 581
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bk$a;->c()I

    move-result v4

    add-int/2addr v3, v4

    .line 582
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object p1, p1, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    iget p1, p1, Lcom/amap/api/mapcore2d/bf;->a:I

    div-int/2addr v0, p1

    .line 583
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bk$a;->c()I

    move-result p1

    add-int/2addr v0, p1

    mul-int p1, v3, v0

    add-int/2addr p1, v3

    add-int/2addr p1, v0

    .line 584
    iput p1, p0, Lcom/amap/api/mapcore2d/bk$a;->e:I

    .line 586
    iget p1, p0, Lcom/amap/api/mapcore2d/bk$a;->e:I

    div-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v1

    iput p1, p0, Lcom/amap/api/mapcore2d/bk$a;->f:I

    .line 587
    iget p1, p0, Lcom/amap/api/mapcore2d/bk$a;->f:I

    if-nez p1, :cond_1

    .line 588
    iput v1, p0, Lcom/amap/api/mapcore2d/bk$a;->f:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-le p1, v0, :cond_2

    .line 590
    iput v0, p0, Lcom/amap/api/mapcore2d/bk$a;->f:I

    .line 593
    :cond_2
    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/amap/api/mapcore2d/bk$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;Lcom/amap/api/mapcore2d/bl;)V
    .locals 0

    .line 554
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/bk$a;-><init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 694
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Lcom/amap/api/mapcore2d/bx;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bx;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    .line 698
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/v;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amap/api/mapcore2d/v;->g:Ljava/lang/String;

    const-string v1, ""

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 706
    :cond_1
    sget-object p2, Lcom/amap/api/mapcore2d/v;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "zh_cn"

    .line 700
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "GridMapV3"

    .line 701
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "en"

    .line 702
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "GridMapEnV3"

    .line 703
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    .line 717
    :cond_4
    :goto_1
    new-instance p2, Lcom/amap/api/mapcore2d/at;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    invoke-direct {p2, v0}, Lcom/amap/api/mapcore2d/at;-><init>(Lcom/amap/api/mapcore2d/bf;)V

    .line 719
    new-instance v0, Lcom/amap/api/mapcore2d/bk$a$2;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore2d/bk$a$2;-><init>(Lcom/amap/api/mapcore2d/bk$a;Lcom/amap/api/mapcore2d/at;)V

    iput-object v0, p2, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/cn;

    .line 743
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    iput-object v0, p2, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 745
    iput-boolean v0, p2, Lcom/amap/api/mapcore2d/at;->e:Z

    .line 748
    iput-boolean v0, p2, Lcom/amap/api/mapcore2d/at;->f:Z

    .line 750
    sget v1, Lcom/amap/api/mapcore2d/v;->c:I

    iput v1, p2, Lcom/amap/api/mapcore2d/at;->c:I

    .line 751
    sget v1, Lcom/amap/api/mapcore2d/v;->d:I

    iput v1, p2, Lcom/amap/api/mapcore2d/at;->d:I

    .line 752
    new-instance v1, Lcom/amap/api/mapcore2d/cg;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bk$a;->n:Landroid/content/Context;

    invoke-direct {v1, v2, v3, p2}, Lcom/amap/api/mapcore2d/cg;-><init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;Lcom/amap/api/mapcore2d/at;)V

    .line 755
    iput-object v1, p2, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    .line 756
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore2d/at;->a(Z)V

    .line 758
    invoke-virtual {p0, p2, p1}, Lcom/amap/api/mapcore2d/bk$a;->a(Lcom/amap/api/mapcore2d/at;Landroid/content/Context;)Z

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1232
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1235
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/at;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1239
    :cond_0
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/at;->a()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1242
    :cond_1
    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bk$a;)Z
    .locals 0

    .line 554
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/bk$a;->o:Z

    return p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1253
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk$a;->m:Z

    if-eqz v0, :cond_0

    .line 1254
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->g:Lcom/amap/api/mapcore2d/z;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/z;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private c()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1259
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/b;->j:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bc;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 865
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 871
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v4, v3}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/at;

    if-nez v4, :cond_1

    goto :goto_1

    .line 876
    :cond_1
    iget-object v5, v4, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, v4, Lcom/amap/api/mapcore2d/at;->e:Z

    if-ne v5, v1, :cond_2

    .line 878
    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/at;->a()Z

    move-result v5

    if-ne v5, v1, :cond_2

    .line 880
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore2d/at;->a(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d()V
    .locals 3

    .line 993
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 995
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/at;

    if-nez v2, :cond_0

    goto :goto_1

    .line 999
    :cond_0
    iput v1, v2, Lcom/amap/api/mapcore2d/at;->l:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    .line 892
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 895
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 898
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/at;

    if-nez v3, :cond_1

    goto :goto_1

    .line 902
    :cond_1
    iget-object v3, v3, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    return v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1032
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-nez v0, :cond_0

    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/at;

    if-eqz v1, :cond_1

    .line 1037
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/at;->b()V

    goto :goto_0

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->clear()V

    .line 1041
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->e:Lcom/amap/api/mapcore2d/bk$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V
    .locals 1

    .line 1189
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bk$a;->l:Z

    if-eqz v0, :cond_2

    .line 1191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1192
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1193
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1194
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;->a(Landroid/graphics/Canvas;)V

    .line 1195
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/ce;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1196
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;->b(Landroid/graphics/Canvas;)V

    .line 1198
    :cond_0
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/ce;->a(Landroid/graphics/Canvas;)V

    .line 1199
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1200
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/ce;->a()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1201
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;->b(Landroid/graphics/Canvas;)V

    .line 1204
    :cond_1
    iget-boolean p2, p0, Lcom/amap/api/mapcore2d/bk$a;->b:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/amap/api/mapcore2d/bk$a;->c:Z

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 1205
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore2d/bk$a;->a(Z)V

    .line 1206
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/bk$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object p2

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/Matrix;)Z

    .line 1207
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/bk$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Lcom/amap/api/mapcore2d/b;->d(F)Z

    .line 1208
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/bk$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/b;->J()V

    goto :goto_0

    .line 1212
    :cond_2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;->a(Landroid/graphics/Canvas;)V

    .line 1213
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;->b(Landroid/graphics/Canvas;)V

    .line 1214
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->h:Lcom/amap/api/mapcore2d/b;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/ce;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/ce;->a(Landroid/graphics/Canvas;)V

    .line 1216
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_8

    const-string v0, ""

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$a;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "zh_cn"

    .line 616
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "en"

    if-nez v2, :cond_2

    .line 617
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 625
    :cond_2
    sget-object v2, Lcom/amap/api/mapcore2d/v;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/amap/api/mapcore2d/v;->g:Ljava/lang/String;

    .line 626
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 633
    :cond_3
    sget-object v0, Lcom/amap/api/mapcore2d/v;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 627
    :cond_4
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "GridMapV3"

    .line 628
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 629
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GridMapEnV3"

    .line 630
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    .line 636
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/bk$a;->b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/at;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/at;)Lcom/amap/api/mapcore2d/at;

    .line 637
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 638
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    new-instance v2, Lcom/amap/api/mapcore2d/at;

    iget-object v3, v0, Lcom/amap/api/mapcore2d/bk;->i:Lcom/amap/api/mapcore2d/bf;

    invoke-direct {v2, v3}, Lcom/amap/api/mapcore2d/at;-><init>(Lcom/amap/api/mapcore2d/bf;)V

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;Lcom/amap/api/mapcore2d/at;)Lcom/amap/api/mapcore2d/at;

    .line 639
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore2d/cg;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bk$a;->n:Landroid/content/Context;

    .line 640
    invoke-static {v3}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/amap/api/mapcore2d/cg;-><init>(Lcom/amap/api/mapcore2d/bk;Landroid/content/Context;Lcom/amap/api/mapcore2d/at;)V

    iput-object v2, v0, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    .line 641
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore2d/bk$a$1;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/bk$a$1;-><init>(Lcom/amap/api/mapcore2d/bk$a;)V

    iput-object v2, v0, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/cn;

    .line 665
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    iput-object v2, v0, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/at;->e:Z

    .line 669
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/at;->a(Z)V

    .line 670
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/at;->f:Z

    .line 672
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    sget v2, Lcom/amap/api/mapcore2d/v;->c:I

    iput v2, v0, Lcom/amap/api/mapcore2d/at;->c:I

    .line 673
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    sget v2, Lcom/amap/api/mapcore2d/v;->d:I

    iput v2, v0, Lcom/amap/api/mapcore2d/at;->d:I

    .line 675
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bk$a;->n:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore2d/bk$a;->a(Lcom/amap/api/mapcore2d/at;Landroid/content/Context;)Z

    .line 677
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;Z)Z

    .line 679
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk$a;->d:Ljava/lang/String;

    :cond_8
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1155
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bk$a;->l:Z

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method a(Lcom/amap/api/mapcore2d/at;Landroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 915
    :cond_0
    iget-object v1, p1, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 919
    :cond_1
    iget-object v1, p1, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/bk$a;->d(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    return v0

    .line 924
    :cond_2
    new-instance v1, Lcom/amap/api/mapcore2d/bx;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/bx;-><init>()V

    iput-object v1, p1, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    .line 926
    new-instance v1, Lcom/amap/api/mapcore2d/bm;

    iget v4, p0, Lcom/amap/api/mapcore2d/bk$a;->e:I

    iget v5, p0, Lcom/amap/api/mapcore2d/bk$a;->f:I

    iget-boolean v6, p1, Lcom/amap/api/mapcore2d/at;->g:Z

    iget-wide v7, p1, Lcom/amap/api/mapcore2d/at;->i:J

    move-object v3, v1

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/mapcore2d/bm;-><init>(IIZJLcom/amap/api/mapcore2d/at;)V

    iput-object v1, p1, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    .line 930
    new-instance v1, Lcom/amap/api/mapcore2d/y;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    .line 931
    invoke-static {v3}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/bk$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v3

    iget-boolean v3, v3, Lcom/amap/api/mapcore2d/b;->d:Z

    invoke-direct {v1, p2, v3, p1}, Lcom/amap/api/mapcore2d/y;-><init>(Landroid/content/Context;ZLcom/amap/api/mapcore2d/at;)V

    iput-object v1, p1, Lcom/amap/api/mapcore2d/at;->o:Lcom/amap/api/mapcore2d/y;

    .line 933
    iget-object p2, p1, Lcom/amap/api/mapcore2d/at;->o:Lcom/amap/api/mapcore2d/y;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    .line 934
    invoke-virtual {p2, v1}, Lcom/amap/api/mapcore2d/y;->a(Lcom/amap/api/mapcore2d/bm;)V

    .line 937
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result p2

    .line 939
    iget-boolean v1, p1, Lcom/amap/api/mapcore2d/at;->e:Z

    if-eqz v1, :cond_6

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr p2, v2

    :goto_0
    if-ltz p2, :cond_7

    .line 948
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v1, p2}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/at;

    if-nez v1, :cond_4

    goto :goto_1

    .line 953
    :cond_4
    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/at;->e:Z

    if-ne v1, v2, :cond_5

    .line 954
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v1, p2, p1}, Lcom/amap/api/mapcore2d/bx;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 941
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore2d/bx;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 960
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bk$a;->d()V

    .line 961
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/at;->a()Z

    move-result p2

    if-ne p2, v2, :cond_8

    .line 962
    iget-object p1, p1, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;Z)Z

    :cond_8
    return v0
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 6

    const-string v0, ""

    .line 763
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_5

    .line 770
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v4, v3}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/at;

    if-nez v4, :cond_1

    goto :goto_1

    .line 775
    :cond_1
    iget-object v5, v4, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_4

    .line 776
    invoke-virtual {v4, p2}, Lcom/amap/api/mapcore2d/at;->a(Z)V

    .line 778
    iget-boolean v5, v4, Lcom/amap/api/mapcore2d/at;->e:Z

    if-nez v5, :cond_2

    return v2

    :cond_2
    if-ne p2, v2, :cond_4

    .line 787
    iget p2, v4, Lcom/amap/api/mapcore2d/at;->c:I

    iget v0, v4, Lcom/amap/api/mapcore2d/at;->d:I

    if-le p2, v0, :cond_3

    .line 788
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    iget v0, v4, Lcom/amap/api/mapcore2d/at;->c:I

    .line 789
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore2d/bk$d;->a(I)V

    .line 790
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p2, p2, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    iget v0, v4, Lcom/amap/api/mapcore2d/at;->d:I

    .line 791
    invoke-virtual {p2, v0}, Lcom/amap/api/mapcore2d/bk$d;->b(I)V

    .line 793
    :cond_3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bk$a;->c(Ljava/lang/String;)V

    .line 794
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-virtual {p0, v1, v1}, Lcom/amap/api/mapcore2d/bk$d;->a(ZZ)V

    return v2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/at;
    .locals 6

    const-string v0, ""

    .line 1004
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    if-eqz v0, :cond_3

    .line 1005
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1011
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bk$a;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v4, v3}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/at;

    if-nez v4, :cond_1

    goto :goto_1

    .line 1015
    :cond_1
    iget-object v5, v4, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_2

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public b()V
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/bk$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk;->c:Lcom/amap/api/mapcore2d/bk$d;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/bk$d;->a(Lcom/amap/api/mapcore2d/bk$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1222
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bk$a;->m:Z

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
