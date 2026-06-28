.class Lcom/amap/api/mapcore2d/ch;
.super Lcom/amap/api/mapcore2d/bu;
.source "TileServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bu<",
        "Ljava/util/ArrayList<",
        "Lcom/amap/api/mapcore2d/cc;",
        ">;",
        "Ljava/util/ArrayList<",
        "Lcom/amap/api/mapcore2d/cc;",
        ">;>;"
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/amap/api/mapcore2d/at;

.field private g:Lcom/amap/api/maps2d/model/TileProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/amap/api/maps2d/model/TileProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;",
            "Lcom/amap/api/maps2d/model/TileProvider;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/bu;-><init>(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 34
    iput-object p2, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    .line 40
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ch;->e:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/amap/api/mapcore2d/ch;->g:Lcom/amap/api/maps2d/model/TileProvider;

    .line 42
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ch;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/dh;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ch;->a(Ljava/net/Proxy;)V

    const/16 p1, 0x1388

    .line 43
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ch;->a(I)V

    const p1, 0xc350

    .line 44
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ch;->b(I)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/cc;I)V
    .locals 4

    if-eqz p1, :cond_4

    if-gez p2, :cond_0

    goto :goto_2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    if-nez v0, :cond_1

    goto :goto_2

    .line 149
    :cond_1
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    .line 151
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bx;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 154
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/bx;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/cc;

    if-nez v2, :cond_2

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore2d/cc;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    iput p2, v2, Lcom/amap/api/mapcore2d/cc;->g:I

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 2

    .line 136
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 138
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([BLcom/amap/api/mapcore2d/cc;)I
    .locals 9

    const/4 v0, -0x1

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    iget v2, p2, Lcom/amap/api/mapcore2d/cc;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v3, p2, Lcom/amap/api/mapcore2d/cc;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v2, p2, Lcom/amap/api/mapcore2d/cc;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    if-nez v2, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    iget-object v3, v2, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, p1

    .line 114
    invoke-virtual/range {v3 .. v8}, Lcom/amap/api/mapcore2d/bm;->a([B[BZLjava/util/List;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_2

    return v0

    .line 119
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore2d/ch;->a(Lcom/amap/api/mapcore2d/cc;I)V

    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    if-nez v0, :cond_3

    return p1

    .line 123
    :cond_3
    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/at;->f:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 124
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    .line 125
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bm;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/ch;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/amap/api/mapcore2d/at;->o:Lcom/amap/api/mapcore2d/y;

    if-eqz v1, :cond_4

    .line 128
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->o:Lcom/amap/api/mapcore2d/y;

    iget v1, p2, Lcom/amap/api/mapcore2d/cc;->b:I

    iget v2, p2, Lcom/amap/api/mapcore2d/cc;->c:I

    iget p2, p2, Lcom/amap/api/mapcore2d/cc;->d:I

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/amap/api/mapcore2d/y;->a([BIII)Z

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method protected synthetic a([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ch;->b([B)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/amap/api/mapcore2d/at;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    return-void
.end method

.method protected b([B)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 83
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/cc;

    .line 84
    invoke-virtual {p0, p1, v3}, Lcom/amap/api/mapcore2d/ch;->a([BLcom/amap/api/mapcore2d/cc;)I

    move-result v4

    if-gez v4, :cond_3

    if-nez v1, :cond_1

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    :cond_1
    new-instance v4, Lcom/amap/api/mapcore2d/cc;

    invoke-direct {v4, v3}, Lcom/amap/api/mapcore2d/cc;-><init>(Lcom/amap/api/mapcore2d/cc;)V

    .line 90
    iget-object v3, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    iget-boolean v3, v3, Lcom/amap/api/mapcore2d/at;->h:Z

    if-eqz v3, :cond_2

    iget v3, v4, Lcom/amap/api/mapcore2d/cc;->d:I

    const/16 v5, 0x9

    if-le v3, v5, :cond_2

    iget v3, v4, Lcom/amap/api/mapcore2d/cc;->b:I

    iget v5, v4, Lcom/amap/api/mapcore2d/cc;->c:I

    iget v6, v4, Lcom/amap/api/mapcore2d/cc;->d:I

    invoke-static {v3, v5, v6}, Lcom/amap/api/mapcore2d/cy;->a(III)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 91
    iput-boolean v3, v4, Lcom/amap/api/mapcore2d/cc;->h:Z

    .line 93
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    const-string v2, "AMAP_SDK_Android_2DMap_2.8.0"

    .line 172
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 173
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "2.8.0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2dmap"

    aput-object v3, v1, v2

    const-string v3, "platform=Android&sdkversion=%s&product=%s"

    .line 174
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "platinfo"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ch;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/v;->a(Z)Lcom/amap/api/mapcore2d/di;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "X-INFO"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "logversion"

    const-string v1, "2.1"

    .line 176
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/cc;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/cc;->h:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/amap/api/mapcore2d/bh;->a()Lcom/amap/api/mapcore2d/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bh;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/cc;

    iget v3, v3, Lcom/amap/api/mapcore2d/cc;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/cc;

    iget v4, v4, Lcom/amap/api/mapcore2d/cc;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/mapcore2d/cc;

    iget p0, p0, Lcom/amap/api/mapcore2d/cc;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    .line 189
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ch;->f:Lcom/amap/api/mapcore2d/at;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/cn;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/cc;

    iget v2, v2, Lcom/amap/api/mapcore2d/cc;->b:I

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/cc;

    iget v3, v3, Lcom/amap/api/mapcore2d/cc;->c:I

    iget-object p0, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/mapcore2d/cc;

    iget p0, p0, Lcom/amap/api/mapcore2d/cc;->d:I

    .line 192
    invoke-virtual {v0, v2, v3, p0}, Lcom/amap/api/mapcore2d/cn;->a(III)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected e()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ch;->g:Lcom/amap/api/maps2d/model/TileProvider;

    if-eqz v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/cc;

    iget v1, v1, Lcom/amap/api/mapcore2d/cc;->b:I

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/cc;

    iget v3, v3, Lcom/amap/api/mapcore2d/cc;->c:I

    iget-object p0, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/mapcore2d/cc;

    iget p0, p0, Lcom/amap/api/mapcore2d/cc;->d:I

    .line 53
    invoke-interface {v0, v1, v3, p0}, Lcom/amap/api/maps2d/model/TileProvider;->getTile(III)Lcom/amap/api/maps2d/model/Tile;

    move-result-object p0

    .line 55
    iget-object p0, p0, Lcom/amap/api/maps2d/model/Tile;->data:[B

    return-object p0

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/amap/api/mapcore2d/bu;->e()[B

    move-result-object p0

    return-object p0
.end method

.method protected synthetic f()Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ch;->g()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected g()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ch;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/cc;

    .line 64
    new-instance v2, Lcom/amap/api/mapcore2d/cc;

    invoke-direct {v2, v1}, Lcom/amap/api/mapcore2d/cc;-><init>(Lcom/amap/api/mapcore2d/cc;)V

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
