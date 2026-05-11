.class public Lcom/smartisanos/smengine/b/j;
.super Lcom/smartisanos/smengine/y;
.source "ParticleMesh.java"


# instance fields
.field private gF:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/y;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/b/j;->gF:I

    .line 3
    iput p1, p0, Lcom/smartisanos/smengine/b/j;->gF:I

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/b/g;I)V
    .locals 16

    move/from16 v0, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/b/g;->ns()[Lcom/smartisanos/smengine/b/f;

    move-result-object v1

    move-object/from16 v2, p0

    .line 2
    iget v3, v2, Lcom/smartisanos/smengine/b/j;->gF:I

    const/4 v4, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_6

    if-ne v3, v4, :cond_5

    mul-int/lit8 v3, v0, 0x4

    mul-int/lit8 v4, v3, 0x3

    .line 3
    new-array v4, v4, [F

    mul-int/lit8 v6, v3, 0x2

    .line 4
    new-array v6, v6, [F

    mul-int/lit8 v7, v0, 0x6

    .line 5
    new-array v7, v7, [S

    const/4 v8, 0x4

    mul-int/2addr v3, v8

    .line 6
    new-array v9, v3, [F

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x0

    if-ge v3, v0, :cond_0

    .line 7
    new-instance v12, Lcom/smartisanos/smengine/a/i;

    const/high16 v13, -0x41000000    # -0.5f

    invoke-direct {v12, v13, v13}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 8
    new-instance v13, Lcom/smartisanos/smengine/a/i;

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-direct {v13, v14, v14}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    add-int/lit8 v14, v10, 0x1

    .line 9
    iget v15, v12, Lcom/smartisanos/smengine/a/i;->x:F

    aput v15, v4, v10

    add-int/lit8 v10, v14, 0x1

    .line 10
    iget v12, v12, Lcom/smartisanos/smengine/a/i;->y:F

    aput v12, v4, v14

    add-int/lit8 v14, v10, 0x1

    .line 11
    aput v11, v4, v10

    add-int/lit8 v10, v14, 0x1

    .line 12
    iget v5, v13, Lcom/smartisanos/smengine/a/i;->x:F

    aput v5, v4, v14

    add-int/lit8 v14, v10, 0x1

    .line 13
    aput v12, v4, v10

    add-int/lit8 v10, v14, 0x1

    .line 14
    aput v11, v4, v14

    add-int/lit8 v12, v10, 0x1

    .line 15
    aput v5, v4, v10

    add-int/lit8 v5, v12, 0x1

    .line 16
    iget v10, v13, Lcom/smartisanos/smengine/a/i;->y:F

    aput v10, v4, v12

    add-int/lit8 v12, v5, 0x1

    .line 17
    aput v11, v4, v5

    add-int/lit8 v5, v12, 0x1

    .line 18
    aput v15, v4, v12

    add-int/lit8 v12, v5, 0x1

    .line 19
    aput v10, v4, v5

    add-int/lit8 v10, v12, 0x1

    .line 20
    aput v11, v4, v12

    .line 21
    aget-object v5, v1, v3

    iget-object v5, v5, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    iput v11, v5, Lcom/smartisanos/smengine/a/j;->x:F

    .line 22
    aget-object v5, v1, v3

    iget-object v5, v5, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    iput v11, v5, Lcom/smartisanos/smengine/a/j;->y:F

    .line 23
    aget-object v5, v1, v3

    iget-object v5, v5, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    iput v11, v5, Lcom/smartisanos/smengine/a/j;->z:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 24
    new-instance v10, Lcom/smartisanos/smengine/a/i;

    invoke-direct {v10, v11, v11}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 25
    new-instance v12, Lcom/smartisanos/smengine/a/i;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v13}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    add-int/lit8 v13, v5, 0x1

    .line 26
    iget v14, v10, Lcom/smartisanos/smengine/a/i;->x:F

    aput v14, v6, v5

    add-int/lit8 v5, v13, 0x1

    .line 27
    iget v10, v10, Lcom/smartisanos/smengine/a/i;->y:F

    aput v10, v6, v13

    add-int/lit8 v13, v5, 0x1

    .line 28
    iget v15, v12, Lcom/smartisanos/smengine/a/i;->x:F

    aput v15, v6, v5

    add-int/lit8 v5, v13, 0x1

    .line 29
    aput v10, v6, v13

    add-int/lit8 v10, v5, 0x1

    .line 30
    aput v15, v6, v5

    add-int/lit8 v5, v10, 0x1

    .line 31
    iget v12, v12, Lcom/smartisanos/smengine/a/i;->y:F

    aput v12, v6, v10

    add-int/lit8 v10, v5, 0x1

    .line 32
    aput v14, v6, v5

    add-int/lit8 v5, v10, 0x1

    .line 33
    aput v12, v6, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    mul-int/lit8 v10, v3, 0x4

    int-to-short v10, v10

    add-int/lit8 v11, v10, 0x1

    int-to-short v11, v11

    add-int/lit8 v12, v11, 0x1

    int-to-short v12, v12

    add-int/lit8 v13, v12, 0x1

    int-to-short v13, v13

    add-int/lit8 v14, v5, 0x1

    .line 34
    aput-short v10, v7, v5

    add-int/lit8 v5, v14, 0x1

    .line 35
    aput-short v11, v7, v14

    add-int/lit8 v11, v5, 0x1

    .line 36
    aput-short v12, v7, v5

    add-int/lit8 v5, v11, 0x1

    .line 37
    aput-short v10, v7, v11

    add-int/lit8 v10, v5, 0x1

    .line 38
    aput-short v12, v7, v5

    add-int/lit8 v5, v10, 0x1

    .line 39
    aput-short v13, v7, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_4

    .line 40
    aget-object v5, v1, v3

    .line 41
    iget-object v5, v5, Lcom/smartisanos/smengine/b/f;->color:Lcom/smartisanos/smengine/a/k;

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v8, :cond_3

    add-int v11, v3, v10

    mul-int/2addr v11, v8

    .line 42
    iget v12, v5, Lcom/smartisanos/smengine/a/k;->x:F

    aput v12, v9, v11

    add-int/lit8 v12, v11, 0x1

    .line 43
    iget v13, v5, Lcom/smartisanos/smengine/a/k;->y:F

    aput v13, v9, v12

    add-int/lit8 v12, v11, 0x2

    .line 44
    iget v13, v5, Lcom/smartisanos/smengine/a/k;->z:F

    aput v13, v9, v12

    add-int/lit8 v11, v11, 0x3

    .line 45
    iget v12, v5, Lcom/smartisanos/smengine/a/k;->w:F

    aput v12, v9, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v9

    move v7, v0

    .line 46
    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    goto :goto_6

    .line 47
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown particle mesh type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    mul-int/lit8 v3, v0, 0x3

    .line 48
    new-array v3, v3, [F

    mul-int/lit8 v5, v0, 0x4

    .line 49
    new-array v6, v5, [F

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v0, :cond_7

    .line 50
    aget-object v7, v1, v5

    .line 51
    iget-object v8, v7, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    .line 52
    iget-object v7, v7, Lcom/smartisanos/smengine/b/f;->color:Lcom/smartisanos/smengine/a/k;

    mul-int/lit8 v9, v5, 0x3

    .line 53
    iget v10, v8, Lcom/smartisanos/smengine/a/j;->x:F

    aput v10, v3, v9

    add-int/lit8 v10, v9, 0x1

    .line 54
    iget v11, v8, Lcom/smartisanos/smengine/a/j;->y:F

    aput v11, v3, v10

    add-int/2addr v9, v4

    .line 55
    iget v8, v8, Lcom/smartisanos/smengine/a/j;->z:F

    aput v8, v3, v9

    mul-int/lit8 v8, v5, 0x4

    .line 56
    iget v9, v7, Lcom/smartisanos/smengine/a/k;->x:F

    aput v9, v6, v8

    add-int/lit8 v9, v8, 0x1

    .line 57
    iget v10, v7, Lcom/smartisanos/smengine/a/k;->y:F

    aput v10, v6, v9

    add-int/lit8 v9, v8, 0x2

    .line 58
    iget v10, v7, Lcom/smartisanos/smengine/a/k;->z:F

    aput v10, v6, v9

    add-int/lit8 v8, v8, 0x3

    .line 59
    iget v7, v7, Lcom/smartisanos/smengine/a/k;->w:F

    aput v7, v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 60
    invoke-virtual/range {v2 .. v7}, Lcom/smartisanos/smengine/y;->a([F[F[S[FZ)V

    :goto_6
    return-void
.end method

.method public a([Lcom/smartisanos/smengine/b/f;Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/a/e;)V
    .locals 7

    .line 61
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->wk()[F

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 62
    :cond_0
    iget p2, p0, Lcom/smartisanos/smengine/b/j;->gF:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    goto/16 :goto_2

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->zk()Ljava/nio/FloatBuffer;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 64
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move p2, v0

    .line 65
    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_2

    .line 66
    aget-object v1, p1, p2

    .line 67
    iget-object v2, v1, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    .line 68
    iget-object v1, v1, Lcom/smartisanos/smengine/b/f;->color:Lcom/smartisanos/smengine/a/k;

    .line 69
    new-instance v3, Lcom/smartisanos/smengine/a/i;

    iget v4, v2, Lcom/smartisanos/smengine/a/j;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->y:F

    sub-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 70
    new-instance v4, Lcom/smartisanos/smengine/a/i;

    iget v6, v2, Lcom/smartisanos/smengine/a/j;->x:F

    add-float/2addr v6, v5

    iget v2, v2, Lcom/smartisanos/smengine/a/j;->y:F

    add-float/2addr v2, v5

    invoke-direct {v4, v6, v2}, Lcom/smartisanos/smengine/a/i;-><init>(FF)V

    .line 71
    iget v2, v3, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v5, v3, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 72
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->y:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 74
    iget v2, v4, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v3, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 75
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->y:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 77
    iget v2, v4, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v4, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 78
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->y:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v6, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 80
    iget v2, v3, Lcom/smartisanos/smengine/a/i;->x:F

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v4, Lcom/smartisanos/smengine/a/i;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 81
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    iget v2, v1, Lcom/smartisanos/smengine/a/k;->x:F

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v1, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v1, v1, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/y;->zk()Ljava/nio/FloatBuffer;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 85
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move p2, v0

    .line 86
    :goto_1
    array-length p3, p1

    if-ge p2, p3, :cond_4

    .line 87
    aget-object p3, p1, p2

    .line 88
    iget-object v1, p3, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    .line 89
    iget-object p3, p3, Lcom/smartisanos/smengine/b/f;->color:Lcom/smartisanos/smengine/a/k;

    .line 90
    iget v2, v1, Lcom/smartisanos/smengine/a/j;->x:F

    invoke-virtual {p0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v3, v1, Lcom/smartisanos/smengine/a/j;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iget v1, v1, Lcom/smartisanos/smengine/a/j;->z:F

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p3, Lcom/smartisanos/smengine/a/k;->x:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p3, Lcom/smartisanos/smengine/a/k;->y:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p3, Lcom/smartisanos/smengine/a/k;->z:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget p3, p3, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 91
    :cond_4
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5
    :goto_2
    return-void
.end method

.method public o(II)V
    .locals 0

    return-void
.end method
