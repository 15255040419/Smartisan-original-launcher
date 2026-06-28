.class Lcom/amap/api/mapcore2d/bc$a;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amap/api/mapcore2d/ai;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/ai;Lcom/amap/api/mapcore2d/ai;)I
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 62
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ai;->r()F

    move-result p0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ai;->r()F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 64
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ai;->r()F

    move-result p0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/ai;->r()F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p0

    const-string p1, "MapOverlayImageView"

    const-string p2, "compare"

    .line 69
    invoke-static {p0, p1, p2}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 53
    check-cast p1, Lcom/amap/api/mapcore2d/ai;

    check-cast p2, Lcom/amap/api/mapcore2d/ai;

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore2d/bc$a;->a(Lcom/amap/api/mapcore2d/ai;Lcom/amap/api/mapcore2d/ai;)I

    move-result p0

    return p0
.end method
