.class Lcom/amap/api/mapcore2d/ce$a;
.super Ljava/lang/Object;
.source "TileOverlayView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/ce;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/ce;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ce$a;->a:Lcom/amap/api/mapcore2d/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/ce;Lcom/amap/api/mapcore2d/cf;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ce$a;-><init>(Lcom/amap/api/mapcore2d/ce;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 24
    check-cast p1, Lcom/amap/api/mapcore2d/aq;

    .line 25
    check-cast p2, Lcom/amap/api/mapcore2d/aq;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 28
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aq;->d()F

    move-result p0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/aq;->d()F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 30
    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aq;->d()F

    move-result p0

    invoke-interface {p2}, Lcom/amap/api/mapcore2d/aq;->d()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "compare"

    const-string p2, "TileOverlayView"

    .line 35
    invoke-static {p0, p2, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
