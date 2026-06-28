.class abstract Lcom/amap/api/mapcore2d/bu;
.super Lcom/amap/api/mapcore2d/fb;
.source "ProtocalHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore2d/fb;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/fb;-><init>()V

    const/4 v0, 0x1

    .line 188
    iput v0, p0, Lcom/amap/api/mapcore2d/bu;->e:I

    const/4 v1, 0x0

    .line 190
    iput v1, p0, Lcom/amap/api/mapcore2d/bu;->f:I

    .line 29
    iput v0, p0, Lcom/amap/api/mapcore2d/bu;->e:I

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/amap/api/mapcore2d/bu;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bu;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/lang/Object;

    return-void
.end method

.method private b([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bu;->a([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bu;->e()[B

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/bu;->b([B)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bu;->f()Ljava/lang/Object;

    .line 103
    new-instance p0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMapException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bu;->g()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected abstract a([B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method protected e()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 69
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/bu;->e:I

    if-ge v1, v2, :cond_1

    .line 71
    :try_start_0
    invoke-static {v0}, Lcom/amap/api/mapcore2d/fa;->a(Z)Lcom/amap/api/mapcore2d/fa;

    move-result-object v2

    .line 72
    invoke-virtual {v2, p0}, Lcom/amap/api/mapcore2d/fa;->c(Lcom/amap/api/mapcore2d/fb;)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/da; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    .line 77
    iget v3, p0, Lcom/amap/api/mapcore2d/bu;->e:I

    if-ge v1, v3, :cond_0

    .line 79
    :try_start_1
    iget v3, p0, Lcom/amap/api/mapcore2d/bu;->f:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "getData"

    const-string v4, "ProtocalHandler"

    .line 87
    invoke-static {v2, v4, v3}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :catch_1
    new-instance p0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/da;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_0
    new-instance p0, Lcom/amap/api/maps2d/AMapException;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/da;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected f()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
