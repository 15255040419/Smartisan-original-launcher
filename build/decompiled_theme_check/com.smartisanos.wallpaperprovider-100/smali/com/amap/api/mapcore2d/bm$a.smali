.class Lcom/amap/api/mapcore2d/bm$a;
.super Ljava/lang/Object;
.source "MemoryTileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Ljava/lang/String;

.field c:Z

.field d:J

.field e:I

.field f:J

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ci;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/amap/api/mapcore2d/bm;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bm;)V
    .locals 3

    .line 321
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bm$a;->h:Lcom/amap/api/mapcore2d/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 324
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bm$a;->a:Landroid/graphics/Bitmap;

    const-string v0, ""

    .line 325
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bm$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bm$a;->c:Z

    const-wide/16 v0, 0x0

    .line 328
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bm$a;->d:J

    const/4 v2, -0x1

    .line 330
    iput v2, p0, Lcom/amap/api/mapcore2d/bm$a;->e:I

    .line 331
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bm$a;->f:J

    .line 332
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bm$a;->g:Ljava/util/List;

    return-void
.end method
