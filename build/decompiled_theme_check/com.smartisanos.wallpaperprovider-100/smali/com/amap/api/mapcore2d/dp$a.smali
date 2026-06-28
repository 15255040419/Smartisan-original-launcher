.class Lcom/amap/api/mapcore2d/dp$a;
.super Ljava/lang/Object;
.source "ANRLogWriter.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/eu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/dp;

.field private b:Lcom/amap/api/mapcore2d/ei;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/dp;Lcom/amap/api/mapcore2d/ei;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dp$a;->a:Lcom/amap/api/mapcore2d/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/amap/api/mapcore2d/dp$a;->b:Lcom/amap/api/mapcore2d/ei;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/dp;Lcom/amap/api/mapcore2d/ei;Lcom/amap/api/mapcore2d/dp$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/dp$a;-><init>(Lcom/amap/api/mapcore2d/dp;Lcom/amap/api/mapcore2d/ei;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dp$a;->b:Lcom/amap/api/mapcore2d/ei;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/dp$a;->a:Lcom/amap/api/mapcore2d/dp;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/dp;->a()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/amap/api/mapcore2d/ei;->b(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
