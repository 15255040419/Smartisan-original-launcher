.class Lcom/amap/api/mapcore2d/ci;
.super Ljava/lang/Object;
.source "TrafSegment.java"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ci;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ci;->b:Ljava/util/List;

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/amap/api/mapcore2d/ci;->a:I

    return p0
.end method
