.class Lcom/amap/api/mapcore2d/bk$a$1;
.super Lcom/amap/api/mapcore2d/cn;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/bk$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bk$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/bk$a;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bk$a$1;->a:Lcom/amap/api/mapcore2d/bk$a;

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)Ljava/lang/String;
    .locals 6

    .line 646
    sget-object v0, Lcom/amap/api/mapcore2d/v;->h:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/mapcore2d/v;->h:Ljava/lang/String;

    const-string v5, ""

    .line 647
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a$1;->a:Lcom/amap/api/mapcore2d/bk$a;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object p0

    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/at;->h:Z

    .line 659
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v0, Lcom/amap/api/mapcore2d/v;->h:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    .line 660
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    .line 661
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 659
    invoke-static {p0, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 648
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bk$a$1;->a:Lcom/amap/api/mapcore2d/bk$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bk$a;->k:Lcom/amap/api/mapcore2d/bk;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bk;->a(Lcom/amap/api/mapcore2d/bk;)Lcom/amap/api/mapcore2d/at;

    move-result-object v0

    iput-boolean v4, v0, Lcom/amap/api/mapcore2d/at;->h:Z

    .line 650
    invoke-static {}, Lcom/amap/api/mapcore2d/bh;->a()Lcom/amap/api/mapcore2d/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bh;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 651
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, v3

    .line 652
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    .line 653
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    sget p1, Lcom/amap/api/mapcore2d/v;->l:I

    if-ne p1, v2, :cond_2

    const-string p1, "wprd"

    goto :goto_1

    :cond_2
    const-string p1, "webrd"

    :goto_1
    aput-object p1, v5, v1

    const/4 p1, 0x4

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a$1;->a:Lcom/amap/api/mapcore2d/bk$a;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bk$a;->d:Ljava/lang/String;

    aput-object p0, v5, p1

    .line 650
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
