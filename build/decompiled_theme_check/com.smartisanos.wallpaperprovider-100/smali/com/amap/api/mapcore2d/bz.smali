.class public Lcom/amap/api/mapcore2d/bz;
.super Ljava/lang/Object;
.source "TextDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ap;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:Lcom/amap/api/mapcore2d/bc;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/amap/api/maps2d/model/LatLng;

.field private g:F

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:Z

.field private k:F

.field private l:I

.field private m:I

.field private n:Ljava/lang/Object;

.field private o:I


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ad;Lcom/amap/api/maps2d/model/TextOptions;Lcom/amap/api/mapcore2d/bc;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, Lcom/amap/api/mapcore2d/bz;->b:Lcom/amap/api/mapcore2d/bc;

    .line 56
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getText()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bz;->c:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getFontSize()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bz;->d:I

    .line 58
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getFontColor()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bz;->e:I

    .line 59
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bz;->f:Lcom/amap/api/maps2d/model/LatLng;

    .line 60
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getRotate()F

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bz;->g:F

    .line 61
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getBackgroundColor()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bz;->h:I

    .line 62
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bz;->i:Landroid/graphics/Typeface;

    .line 63
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->isVisible()Z

    move-result p3

    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/bz;->j:Z

    .line 64
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getZIndex()F

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bz;->k:F

    .line 65
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getAlignX()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bz;->l:I

    .line 66
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getAlignY()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bz;->m:I

    .line 67
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getObject()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bz;->n:Ljava/lang/Object;

    .line 68
    check-cast p1, Lcom/amap/api/mapcore2d/b;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 229
    iput p1, p0, Lcom/amap/api/mapcore2d/bz;->g:F

    .line 230
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/amap/api/mapcore2d/bz;->d:I

    .line 195
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/amap/api/mapcore2d/bz;->l:I

    .line 275
    iput p2, p0, Lcom/amap/api/mapcore2d/bz;->m:I

    .line 276
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 12

    .line 106
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bz;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bz;->f:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 109
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bz;->i:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    .line 111
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bz;->i:Landroid/graphics/Typeface;

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bz;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 115
    iget v2, p0, Lcom/amap/api/mapcore2d/bz;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 117
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bz;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 118
    iget v3, p0, Lcom/amap/api/mapcore2d/bz;->d:I

    int-to-float v3, v3

    .line 120
    iget v4, p0, Lcom/amap/api/mapcore2d/bz;->h:I

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 122
    new-instance v4, Lcom/amap/api/mapcore2d/ab;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bz;->f:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v7, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bz;->f:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v9, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v9, v7

    double-to-int v6, v9

    invoke-direct {v4, v5, v6}, Lcom/amap/api/mapcore2d/ab;-><init>(II)V

    .line 124
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 125
    iget-object v6, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/b;->r()Lcom/amap/api/mapcore2d/bs;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/amap/api/mapcore2d/bs;->a(Lcom/amap/api/mapcore2d/ab;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 127
    iget v4, p0, Lcom/amap/api/mapcore2d/bz;->g:F

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v4, v6

    neg-float v4, v4

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v5, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {p1, v4, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 128
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 129
    iget v4, p0, Lcom/amap/api/mapcore2d/bz;->l:I

    const/4 v6, 0x3

    if-lt v4, v1, :cond_2

    if-le v4, v6, :cond_3

    .line 130
    :cond_2
    iput v6, p0, Lcom/amap/api/mapcore2d/bz;->l:I

    .line 132
    :cond_3
    iget v4, p0, Lcom/amap/api/mapcore2d/bz;->m:I

    const/4 v8, 0x4

    const/4 v9, 0x6

    if-lt v4, v8, :cond_4

    if-le v4, v9, :cond_5

    .line 133
    :cond_4
    iput v9, p0, Lcom/amap/api/mapcore2d/bz;->m:I

    .line 137
    :cond_5
    iget v4, p0, Lcom/amap/api/mapcore2d/bz;->l:I

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v4, v1, :cond_8

    const/4 v1, 0x2

    if-eq v4, v1, :cond_7

    if-eq v4, v6, :cond_6

    move v1, v10

    goto :goto_1

    .line 145
    :cond_6
    iget v1, v5, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float v4, v2, v11

    sub-float/2addr v1, v4

    goto :goto_0

    .line 142
    :cond_7
    iget v1, v5, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    :goto_0
    float-to-int v1, v1

    goto :goto_1

    .line 139
    :cond_8
    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 148
    :goto_1
    iget v4, p0, Lcom/amap/api/mapcore2d/bz;->m:I

    if-eq v4, v8, :cond_b

    const/4 v6, 0x5

    if-eq v4, v6, :cond_a

    if-eq v4, v9, :cond_9

    goto :goto_3

    .line 156
    :cond_9
    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v5, v3, v11

    sub-float/2addr v4, v5

    goto :goto_2

    .line 153
    :cond_a
    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    :goto_2
    float-to-int v10, v4

    goto :goto_3

    .line 150
    :cond_b
    iget v10, v5, Landroid/graphics/Point;->y:I

    :goto_3
    add-float/2addr v2, v11

    add-float/2addr v3, v11

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    add-int/lit8 v5, v10, -0x1

    int-to-float v5, v5

    int-to-float v8, v1

    add-float v6, v8, v2

    int-to-float v1, v10

    add-float v9, v1, v3

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v9

    move-object v6, v0

    .line 162
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    iget v1, p0, Lcom/amap/api/mapcore2d/bz;->e:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 165
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->c:Ljava/lang/String;

    iget v1, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v9, v1

    invoke-virtual {p1, p0, v8, v9, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    :goto_4
    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bz;->i:Landroid/graphics/Typeface;

    .line 253
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bz;->n:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bz;->c:Ljava/lang/String;

    .line 183
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public b()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/amap/api/mapcore2d/bz;->d:I

    return p0
.end method

.method public b(F)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/amap/api/mapcore2d/bz;->k:F

    .line 83
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->b:Lcom/amap/api/mapcore2d/bc;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->d()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/amap/api/mapcore2d/bz;->o:I

    return-void
.end method

.method public b(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bz;->f:Lcom/amap/api/maps2d/model/LatLng;

    .line 219
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public c()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/amap/api/mapcore2d/bz;->e:I

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/amap/api/mapcore2d/bz;->e:I

    .line 208
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public d()F
    .locals 0

    .line 235
    iget p0, p0, Lcom/amap/api/mapcore2d/bz;->g:F

    return p0
.end method

.method public d(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/amap/api/mapcore2d/bz;->h:I

    .line 242
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public e()I
    .locals 0

    .line 247
    iget p0, p0, Lcom/amap/api/mapcore2d/bz;->h:I

    return p0
.end method

.method public f()Landroid/graphics/Typeface;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->i:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public g()I
    .locals 0

    .line 264
    iget p0, p0, Lcom/amap/api/mapcore2d/bz;->l:I

    return p0
.end method

.method public h()I
    .locals 0

    .line 269
    iget p0, p0, Lcom/amap/api/mapcore2d/bz;->m:I

    return p0
.end method

.method public i()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bz;->b:Lcom/amap/api/mapcore2d/bc;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bc;->b(Lcom/amap/api/mapcore2d/ap;)V

    :cond_0
    return-void
.end method

.method public r()F
    .locals 0

    .line 89
    iget p0, p0, Lcom/amap/api/mapcore2d/bz;->k:F

    return p0
.end method

.method public s()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/bz;->j:Z

    return p0
.end method

.method public t()Lcom/amap/api/maps2d/model/LatLng;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->f:Lcom/amap/api/maps2d/model/LatLng;

    return-object p0
.end method

.method public u()Ljava/lang/Object;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/amap/api/mapcore2d/bz;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public v()I
    .locals 0

    .line 301
    iget p0, p0, Lcom/amap/api/mapcore2d/bz;->o:I

    return p0
.end method
