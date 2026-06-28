.class Lcom/amap/api/mapcore2d/bq;
.super Ljava/lang/Object;
.source "PolygonDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/al;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:F

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:F

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/ak;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/amap/api/maps2d/model/LatLngBounds;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/amap/api/mapcore2d/bq;->b:F

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bq;->c:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/amap/api/mapcore2d/bq;->i:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 33
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bq;->a:Lcom/amap/api/mapcore2d/b;

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bq;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bq;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PolygonDelegateImp"

    .line 37
    invoke-static {p0, p1, p1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/amap/api/mapcore2d/bq;->b:F

    .line 67
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bq;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    iput p1, p0, Lcom/amap/api/mapcore2d/bq;->f:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 193
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 194
    new-instance v1, Lcom/amap/api/mapcore2d/ab;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ak;

    iget v2, v2, Lcom/amap/api/mapcore2d/ak;->b:I

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    .line 195
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore2d/ak;

    iget v3, v3, Lcom/amap/api/mapcore2d/ak;->a:I

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    .line 196
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 197
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bq;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 199
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    move v2, v1

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 201
    new-instance v3, Lcom/amap/api/mapcore2d/ab;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/mapcore2d/ak;

    iget v4, v4, Lcom/amap/api/mapcore2d/ak;->b:I

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    .line 202
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/mapcore2d/ak;

    iget v5, v5, Lcom/amap/api/mapcore2d/ak;->a:I

    invoke-direct {v3, v4, v5}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    .line 203
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 204
    iget-object v5, p0, Lcom/amap/api/mapcore2d/bq;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 205
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_1
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 208
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bq;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 211
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 213
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bq;->j()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bq;->g()F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 216
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bq;->b(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bq;->c:Z

    return-void
.end method

.method public a()Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->i:Lcom/amap/api/maps2d/model/LatLngBounds;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->w()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bq;->i:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v3, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/amap/api/mapcore2d/bq;->i:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 184
    invoke-virtual {p0, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;->intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public a(Lcom/amap/api/mapcore2d/aj;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/aj;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bq;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public a(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bq;->i()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amap/api/mapcore2d/cz;->a(Lcom/amap/api/maps2d/model/LatLng;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bq;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/b;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    iput p1, p0, Lcom/amap/api/mapcore2d/bq;->e:F

    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    iput p1, p0, Lcom/amap/api/mapcore2d/bq;->g:I

    return-void
.end method

.method b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps2d/model/LatLng;

    .line 102
    invoke-virtual {v2, v1}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore2d/ak;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ak;-><init>()V

    .line 105
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bq;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v5, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/amap/api/mapcore2d/b;->a(DDLcom/amap/api/mapcore2d/ak;)V

    .line 106
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-object v1, v2

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 112
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ak;

    .line 113
    iget-object v3, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    sub-int/2addr p1, v1

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/ak;

    .line 114
    iget v3, v2, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v4, v1, Lcom/amap/api/mapcore2d/ak;->a:I

    if-ne v3, v4, :cond_2

    iget v2, v2, Lcom/amap/api/mapcore2d/ak;->b:I

    iget v1, v1, Lcom/amap/api/mapcore2d/ak;->b:I

    if-ne v2, v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bq;->i:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Polygon"

    .line 49
    invoke-static {v0}, Lcom/amap/api/mapcore2d/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bq;->d:Ljava/lang/String;

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bq;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget p0, p0, Lcom/amap/api/mapcore2d/bq;->b:F

    return p0
.end method

.method public e()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/bq;->c:Z

    return p0
.end method

.method public f()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public g()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget p0, p0, Lcom/amap/api/mapcore2d/bq;->e:F

    return p0
.end method

.method public h()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget p0, p0, Lcom/amap/api/mapcore2d/bq;->f:I

    return p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bq;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public j()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget p0, p0, Lcom/amap/api/mapcore2d/bq;->g:I

    return p0
.end method

.method k()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bq;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore2d/ak;

    if-eqz v2, :cond_0

    .line 129
    new-instance v3, Lcom/amap/api/mapcore2d/x;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/x;-><init>()V

    .line 130
    iget-object v4, p0, Lcom/amap/api/mapcore2d/bq;->a:Lcom/amap/api/mapcore2d/b;

    iget v5, v2, Lcom/amap/api/mapcore2d/ak;->a:I

    iget v2, v2, Lcom/amap/api/mapcore2d/ak;->b:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/amap/api/mapcore2d/b;->b(IILcom/amap/api/mapcore2d/x;)V

    .line 131
    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/mapcore2d/x;->b:D

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/x;->a:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public l()V
    .locals 0

    return-void
.end method
