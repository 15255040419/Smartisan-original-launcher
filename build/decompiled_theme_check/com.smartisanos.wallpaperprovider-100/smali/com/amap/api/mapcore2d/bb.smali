.class Lcom/amap/api/mapcore2d/bb;
.super Ljava/lang/Object;
.source "MapMessageQueue.java"


# instance fields
.field a:Lcom/amap/api/mapcore2d/b;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amap/api/mapcore2d/r;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amap/api/mapcore2d/MapMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bb;->a:Lcom/amap/api/mapcore2d/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/r;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bb;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
