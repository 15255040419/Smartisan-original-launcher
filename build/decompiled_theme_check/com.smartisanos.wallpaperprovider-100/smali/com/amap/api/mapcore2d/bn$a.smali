.class public Lcom/amap/api/mapcore2d/bn$a;
.super Lcom/amap/api/mapcore2d/bn;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field p:F

.field q:F

.field r:F

.field s:F

.field t:J

.field u:I

.field v:I

.field private w:J


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bn;-><init>()V

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bn$a;->t:J

    const/4 v2, 0x0

    .line 112
    iput v2, p0, Lcom/amap/api/mapcore2d/bn$a;->u:I

    .line 113
    iput v2, p0, Lcom/amap/api/mapcore2d/bn$a;->v:I

    .line 115
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/bn$a;->w:J

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 9

    const-string v0, "MutiTouchGestureDetector"

    const-string v1, "midPoint"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 276
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/bn;->b()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 276
    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 277
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 278
    invoke-static {}, Lcom/amap/api/mapcore2d/bn;->b()Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    .line 279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 278
    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 280
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v5, v6

    goto :goto_1

    :catch_0
    move-exception v5

    .line 289
    invoke-static {v5, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v5

    .line 286
    invoke-static {v5, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v5

    .line 283
    invoke-static {v5, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v5, v2

    .line 294
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore2d/bn;->c()Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    .line 295
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 294
    invoke-virtual {v6, p2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 295
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 296
    invoke-static {}, Lcom/amap/api/mapcore2d/bn;->c()Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    .line 297
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v3

    .line 296
    invoke-virtual {v7, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    .line 298
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    add-float v2, v6, p2

    goto :goto_2

    :catch_3
    move-exception p2

    .line 307
    invoke-static {p2, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception p2

    .line 304
    invoke-static {p2, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception p2

    .line 301
    invoke-static {p2, v0, v1}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_2
    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->u:I

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/amap/api/mapcore2d/bn$a;->v:I

    if-eqz p0, :cond_0

    int-to-float v5, p2

    int-to-float v2, p0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v5, p0

    div-float/2addr v2, p0

    .line 315
    invoke-virtual {p1, v5, v2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 8

    const-string p0, "MutiTouchGestureDetector"

    const-string v0, "distance"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 233
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/bn;->b()Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 233
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 234
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 235
    invoke-static {}, Lcom/amap/api/mapcore2d/bn;->b()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 235
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 237
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    sub-float/2addr v4, v5

    goto :goto_1

    :catch_0
    move-exception v4

    .line 246
    invoke-static {v4, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 243
    invoke-static {v4, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v4

    .line 240
    invoke-static {v4, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v4, v1

    .line 251
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore2d/bn;->c()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 251
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 252
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 253
    invoke-static {}, Lcom/amap/api/mapcore2d/bn;->c()Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    .line 253
    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 255
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    sub-float v1, v5, p0

    goto :goto_2

    :catch_3
    move-exception p1

    .line 264
    invoke-static {p1, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception p1

    .line 261
    invoke-static {p1, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception p1

    .line 258
    invoke-static {p1, p0, v0}, Lcom/amap/api/mapcore2d/cz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    mul-float/2addr v4, v4

    mul-float/2addr v1, v1

    add-float/2addr v4, v1

    float-to-double p0, v4

    .line 268
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;II)Z
    .locals 9

    .line 119
    iput p2, p0, Lcom/amap/api/mapcore2d/bn$a;->u:I

    .line 120
    iput p3, p0, Lcom/amap/api/mapcore2d/bn$a;->v:I

    .line 121
    invoke-static {p1}, Lcom/amap/api/mapcore2d/bn;->a(Landroid/view/MotionEvent;)V

    .line 123
    invoke-static {}, Lcom/amap/api/mapcore2d/bn;->a()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    if-eq p2, v0, :cond_7

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2

    goto/16 :goto_0

    .line 137
    :cond_1
    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->n:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/amap/api/mapcore2d/bn$a;->n:I

    .line 138
    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->n:I

    if-ne p2, v0, :cond_9

    .line 139
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bn$a;->m:Z

    .line 140
    sput v2, Lcom/amap/api/mapcore2d/bn$a;->j:F

    .line 141
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bn$a;->b(Landroid/view/MotionEvent;)F

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore2d/bn$a;->h:F

    .line 142
    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->h:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_9

    .line 143
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 144
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 145
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bn$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 146
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore2d/bn$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 147
    iput v3, p0, Lcom/amap/api/mapcore2d/bn$a;->b:I

    .line 148
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bn$a;->k:Z

    .line 149
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bn$a;->a:Lcom/amap/api/mapcore2d/bn$b;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->e:Landroid/graphics/PointF;

    invoke-interface {p1, p2}, Lcom/amap/api/mapcore2d/bn$b;->a(Landroid/graphics/PointF;)Z

    move-result p1

    or-int/2addr p3, p1

    .line 150
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bn$a;->f:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/amap/api/mapcore2d/bn$a;->r:F

    .line 151
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bn$a;->f:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/amap/api/mapcore2d/bn$a;->s:F

    goto/16 :goto_0

    .line 162
    :cond_2
    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->n:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/amap/api/mapcore2d/bn$a;->n:I

    .line 163
    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->n:I

    if-ne p2, v0, :cond_3

    .line 164
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bn$a;->m:Z

    .line 165
    iput v3, p0, Lcom/amap/api/mapcore2d/bn$a;->b:I

    .line 170
    :cond_3
    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->n:I

    if-nez p2, :cond_9

    .line 171
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->f:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore2d/bn$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 172
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/bn$a;->l:Z

    .line 173
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/bn$a;->m:Z

    .line 174
    iget-boolean p1, p0, Lcom/amap/api/mapcore2d/bn$a;->k:Z

    if-eqz p1, :cond_9

    .line 176
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bn$a;->a:Lcom/amap/api/mapcore2d/bn$b;

    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->i:F

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bn$a;->f:Landroid/graphics/PointF;

    invoke-interface {p1, p2, v0}, Lcom/amap/api/mapcore2d/bn$b;->b(FLandroid/graphics/PointF;)Z

    move-result p1

    or-int/2addr p1, p3

    .line 181
    iput p3, p0, Lcom/amap/api/mapcore2d/bn$a;->b:I

    move p3, p1

    goto/16 :goto_0

    .line 186
    :cond_4
    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->b:I

    if-ne p2, v0, :cond_6

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bn$a;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bn$a;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 192
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bn$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bn$a;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bn$a;->e:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 194
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bn$a;->a:Lcom/amap/api/mapcore2d/bn$b;

    iget v3, p0, Lcom/amap/api/mapcore2d/bn$a;->p:F

    sub-float v3, p2, v3

    iget v4, p0, Lcom/amap/api/mapcore2d/bn$a;->q:F

    sub-float v4, v1, v4

    invoke-interface {v2, v3, v4}, Lcom/amap/api/mapcore2d/bn$b;->a(FF)Z

    move-result v2

    or-int/2addr p3, v2

    .line 196
    iput p2, p0, Lcom/amap/api/mapcore2d/bn$a;->p:F

    .line 197
    iput v1, p0, Lcom/amap/api/mapcore2d/bn$a;->q:F

    .line 198
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->a:Lcom/amap/api/mapcore2d/bn$b;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bn$a;->c:Landroid/graphics/Matrix;

    invoke-interface {p2, v1}, Lcom/amap/api/mapcore2d/bn$b;->a(Landroid/graphics/Matrix;)Z

    move-result p2

    or-int/2addr p2, p3

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide p0, p0, Lcom/amap/api/mapcore2d/bn$a;->t:J

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x1e

    cmp-long p0, v1, p0

    if-gez p0, :cond_5

    move p3, v0

    goto/16 :goto_0

    :cond_5
    move p3, p2

    goto/16 :goto_0

    .line 204
    :cond_6
    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->b:I

    if-ne p2, v3, :cond_9

    .line 205
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bn$a;->b(Landroid/view/MotionEvent;)F

    move-result p2

    .line 206
    iput v2, p0, Lcom/amap/api/mapcore2d/bn$a;->i:F

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    cmpl-float v1, p2, v1

    if-lez v1, :cond_9

    .line 208
    iget v1, p0, Lcom/amap/api/mapcore2d/bn$a;->h:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_9

    iget-wide v5, p0, Lcom/amap/api/mapcore2d/bn$a;->w:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0xa

    cmp-long v1, v5, v7

    if-lez v1, :cond_9

    .line 210
    iput-wide v3, p0, Lcom/amap/api/mapcore2d/bn$a;->w:J

    .line 211
    iget v1, p0, Lcom/amap/api/mapcore2d/bn$a;->h:F

    div-float v1, p2, v1

    iput v1, p0, Lcom/amap/api/mapcore2d/bn$a;->i:F

    .line 212
    sput v2, Lcom/amap/api/mapcore2d/bn$a;->j:F

    .line 213
    iput p2, p0, Lcom/amap/api/mapcore2d/bn$a;->h:F

    .line 214
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->g:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1}, Lcom/amap/api/mapcore2d/bn$a;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 215
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bn$a;->a:Lcom/amap/api/mapcore2d/bn$b;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->g:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/amap/api/mapcore2d/bn$a;->r:F

    sub-float/2addr p2, v1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bn$a;->g:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/amap/api/mapcore2d/bn$a;->s:F

    sub-float/2addr v1, v2

    invoke-interface {p1, p2, v1}, Lcom/amap/api/mapcore2d/bn$b;->a(FF)Z

    move-result p1

    or-int/2addr p1, p3

    .line 218
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->g:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iput p2, p0, Lcom/amap/api/mapcore2d/bn$a;->r:F

    .line 219
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->g:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lcom/amap/api/mapcore2d/bn$a;->s:F

    .line 220
    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->a:Lcom/amap/api/mapcore2d/bn$b;

    iget p3, p0, Lcom/amap/api/mapcore2d/bn$a;->i:F

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bn$a;->f:Landroid/graphics/PointF;

    invoke-interface {p2, p3, v1}, Lcom/amap/api/mapcore2d/bn$b;->a(FLandroid/graphics/PointF;)Z

    move-result p2

    or-int p3, p1, p2

    .line 221
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bn$a;->l:Z

    goto :goto_0

    .line 156
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/mapcore2d/bn$a;->o:J

    .line 157
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/bn$a;->k:Z

    .line 158
    iput p3, p0, Lcom/amap/api/mapcore2d/bn$a;->b:I

    goto :goto_0

    .line 128
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amap/api/mapcore2d/bn$a;->t:J

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/amap/api/mapcore2d/bn$a;->p:F

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore2d/bn$a;->q:F

    .line 131
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bn$a;->d:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/amap/api/mapcore2d/bn$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 132
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bn$a;->e:Landroid/graphics/PointF;

    iget p2, p0, Lcom/amap/api/mapcore2d/bn$a;->p:F

    iget v1, p0, Lcom/amap/api/mapcore2d/bn$a;->q:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 133
    iput v0, p0, Lcom/amap/api/mapcore2d/bn$a;->b:I

    :cond_9
    :goto_0
    return p3
.end method
