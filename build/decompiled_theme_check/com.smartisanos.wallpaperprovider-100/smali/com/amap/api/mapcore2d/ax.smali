.class Lcom/amap/api/mapcore2d/ax;
.super Ljava/lang/Object;
.source "ManifestResult.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ax;->b:Z

    .line 8
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ax;->a:Z

    .line 9
    iput-boolean p2, p0, Lcom/amap/api/mapcore2d/ax;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/ax;->b:Z

    return p0
.end method
