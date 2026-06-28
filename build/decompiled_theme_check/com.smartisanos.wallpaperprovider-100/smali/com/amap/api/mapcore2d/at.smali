.class Lcom/amap/api/mapcore2d/at;
.super Lcom/amap/api/mapcore2d/au;
.source "LayerPropertys.java"


# instance fields
.field a:Lcom/amap/api/mapcore2d/bf;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Lcom/amap/api/mapcore2d/cn;

.field k:Lcom/amap/api/maps2d/model/TileProvider;

.field public l:I

.field public m:Ljava/lang/String;

.field n:Lcom/amap/api/mapcore2d/bm;

.field o:Lcom/amap/api/mapcore2d/y;

.field p:Lcom/amap/api/mapcore2d/bx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bx<",
            "Lcom/amap/api/mapcore2d/cc;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bf;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/au;-><init>()V

    const-string v0, "LayerPropertys"

    .line 35
    iput-object v0, p0, Lcom/amap/api/mapcore2d/at;->r:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    const/16 v1, 0x12

    .line 45
    iput v1, p0, Lcom/amap/api/mapcore2d/at;->c:I

    const/4 v1, 0x3

    .line 50
    iput v1, p0, Lcom/amap/api/mapcore2d/at;->d:I

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/at;->e:Z

    const/4 v2, 0x0

    .line 66
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/at;->s:Z

    .line 71
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/at;->f:Z

    .line 77
    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/at;->g:Z

    .line 79
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/at;->h:Z

    const-wide/16 v1, 0x0

    .line 85
    iput-wide v1, p0, Lcom/amap/api/mapcore2d/at;->i:J

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lcom/amap/api/mapcore2d/at;->j:Lcom/amap/api/mapcore2d/cn;

    .line 92
    iput-object v1, p0, Lcom/amap/api/mapcore2d/at;->k:Lcom/amap/api/maps2d/model/TileProvider;

    const/4 v2, -0x1

    .line 97
    iput v2, p0, Lcom/amap/api/mapcore2d/at;->l:I

    .line 102
    iput-object v0, p0, Lcom/amap/api/mapcore2d/at;->m:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    .line 112
    iput-object v1, p0, Lcom/amap/api/mapcore2d/at;->o:Lcom/amap/api/mapcore2d/y;

    .line 117
    iput-object v1, p0, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    .line 120
    iput-object p1, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/bf;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 7

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/cc;

    .line 173
    iget v2, v1, Lcom/amap/api/mapcore2d/cc;->g:I

    if-gez v2, :cond_2

    .line 174
    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/at;->e:Z

    goto :goto_0

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    iget v3, v1, Lcom/amap/api/mapcore2d/cc;->g:I

    .line 181
    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore2d/bm;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/bf;

    iget v4, v1, Lcom/amap/api/mapcore2d/cc;->b:I

    iget v1, v1, Lcom/amap/api/mapcore2d/cc;->c:I

    invoke-virtual {v3, v4, v1}, Lcom/amap/api/mapcore2d/bf;->a(II)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 187
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/bf;

    iget v4, v4, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 188
    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/amap/api/mapcore2d/at;->a:Lcom/amap/api/mapcore2d/bf;

    iget v5, v5, Lcom/amap/api/mapcore2d/bf;->a:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 189
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p1, v2, v1, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->r:Ljava/lang/String;

    const-string v0, "drawLayer"

    invoke-static {p1, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/at;->s:Z

    if-eqz p1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cg;->d()V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/bm;->c()V

    .line 132
    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cg;->c()V

    :goto_0
    return-void
.end method

.method a()Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/at;->s:Z

    return p0
.end method

.method protected b()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->q:Lcom/amap/api/mapcore2d/cg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cg;->e()V

    .line 203
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->o:Lcom/amap/api/mapcore2d/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/y;->a(Lcom/amap/api/mapcore2d/bm;)V

    .line 204
    iget-object v0, p0, Lcom/amap/api/mapcore2d/at;->n:Lcom/amap/api/mapcore2d/bm;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bm;->c()V

    .line 205
    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->p:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bx;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 145
    :cond_0
    instance-of v0, p1, Lcom/amap/api/mapcore2d/at;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 148
    :cond_1
    check-cast p1, Lcom/amap/api/mapcore2d/at;

    .line 150
    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 156
    iget p0, p0, Lcom/amap/api/mapcore2d/at;->l:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/amap/api/mapcore2d/at;->b:Ljava/lang/String;

    return-object p0
.end method
