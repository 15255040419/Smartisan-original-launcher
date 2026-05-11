.class public Lcom/smartisanos/smengine/c/n;
.super Ljava/lang/Object;
.source "TextureImage.java"


# instance fields
.field private UW:I

.field private WW:J

.field private XX:Ljava/lang/String;

.field private YX:Ljava/lang/String;

.field private ZX:Z

.field private _X:Landroid/util/SparseArray;

.field private aY:Landroid/util/SparseArray;

.field private bY:Landroid/util/SparseArray;

.field private cY:Z

.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/n;->ZX:Z

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lcom/smartisanos/smengine/c/n;->WW:J

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/n;->cY:Z

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/smengine/c/n;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c/n;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/smengine/c/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/smengine/c/n;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/smengine/c/n;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/smengine/c/n;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/smengine/c/n;->cY:Z

    return p1
.end method

.method static synthetic b(Lcom/smartisanos/smengine/c/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c/n;->XX:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/smengine/c/n;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c/n;->YX:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic e(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c/n;->aY:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic f(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/c/n;->bY:Landroid/util/SparseArray;

    return-object p0
.end method

.method private qB()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/c/n;->cY:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->aY:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->bY:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/n;->cY:Z

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/smengine/c/l;

    invoke-direct {v1, p0}, Lcom/smartisanos/smengine/c/l;-><init>(Lcom/smartisanos/smengine/c/n;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c/i;->k(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private rB()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/c/n;->cY:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->XX:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->YX:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/smengine/c/n;->cY:Z

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/smengine/c/k;

    invoke-direct {v1, p0}, Lcom/smartisanos/smengine/c/k;-><init>(Lcom/smartisanos/smengine/c/n;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c/i;->k(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public Cc(I)Z
    .locals 14

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/c/n;->WW:J

    sget-wide v2, Lcom/smartisanos/smengine/c/i;->WX:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2
    iput v1, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    .line 3
    iput-wide v2, p0, Lcom/smartisanos/smengine/c/n;->WW:J

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/smengine/c/n;->ZX:Z

    const/16 v2, 0x2803

    const/16 v3, 0x2802

    const v4, 0x46180400    # 9729.0f

    const/16 v5, 0x2800

    const/high16 v6, 0x46180000    # 9728.0f

    const/16 v7, 0x2801

    const/16 v8, 0x2901

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_3

    .line 5
    iget v0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    const/16 v11, 0xde1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-array v0, v9, [I

    .line 6
    invoke-static {v9, v0, v10}, Lcom/smartisanos/smengine/P;->glGenTextures(I[II)V

    .line 7
    aget v0, v0, v10

    iput v0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    .line 8
    iget v0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    invoke-static {v11, v0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    .line 9
    invoke-static {v11, v7, v6}, Lcom/smartisanos/smengine/P;->glTexParameterf(IIF)V

    .line 10
    invoke-static {v11, v5, v4}, Lcom/smartisanos/smengine/P;->glTexParameterf(IIF)V

    .line 11
    invoke-static {v11, v3, v8}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    .line 12
    invoke-static {v11, v2, v8}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v11, v10, v0, v10}, Lcom/smartisanos/smengine/P;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 14
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    if-eq v0, v1, :cond_2

    .line 15
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glActiveTexture(I)V

    .line 16
    iget p0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    invoke-static {v11, p0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    goto/16 :goto_0

    :cond_2
    if-ne v0, v1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/smartisanos/smengine/c/n;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_6

    .line 18
    invoke-direct {p0}, Lcom/smartisanos/smengine/c/n;->rB()V

    return v10

    .line 19
    :cond_3
    iget v0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    const v11, 0x8513

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v12, 0x6

    if-lt v0, v12, :cond_4

    new-array v0, v9, [I

    .line 20
    invoke-static {v9, v0, v10}, Lcom/smartisanos/smengine/P;->glGenTextures(I[II)V

    .line 21
    aget v0, v0, v10

    iput v0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    .line 22
    iget v0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    invoke-static {v11, v0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    const v12, 0x8515

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v12, v10, v0, v10}, Lcom/smartisanos/smengine/P;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    const v12, 0x8516

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v12, v10, v0, v10}, Lcom/smartisanos/smengine/P;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 25
    iget-object v0, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    const v12, 0x8517

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v12, v10, v0, v10}, Lcom/smartisanos/smengine/P;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const v0, 0x8518

    .line 26
    iget-object v12, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    const v13, 0x8518

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    invoke-static {v0, v10, v12, v10}, Lcom/smartisanos/smengine/P;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const v0, 0x8519

    .line 27
    iget-object v12, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    const v13, 0x8519

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    invoke-static {v0, v10, v12, v10}, Lcom/smartisanos/smengine/P;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const v0, 0x851a

    .line 28
    iget-object v12, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    const v13, 0x851a

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    invoke-static {v0, v10, v12, v10}, Lcom/smartisanos/smengine/P;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 29
    invoke-static {v11, v7, v6}, Lcom/smartisanos/smengine/P;->glTexParameterf(IIF)V

    .line 30
    invoke-static {v11, v5, v4}, Lcom/smartisanos/smengine/P;->glTexParameterf(IIF)V

    .line 31
    invoke-static {v11, v3, v8}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    .line 32
    invoke-static {v11, v2, v8}, Lcom/smartisanos/smengine/P;->glTexParameteri(III)V

    .line 33
    :cond_4
    iget v0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    if-eq v0, v1, :cond_5

    .line 34
    invoke-static {p1}, Lcom/smartisanos/smengine/P;->glActiveTexture(I)V

    .line 35
    iget p0, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    invoke-static {v11, p0}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    goto :goto_0

    :cond_5
    if-ne v0, v1, :cond_6

    .line 36
    iget-object p1, p0, Lcom/smartisanos/smengine/c/n;->_X:Landroid/util/SparseArray;

    if-nez p1, :cond_6

    .line 37
    invoke-direct {p0}, Lcom/smartisanos/smengine/c/n;->qB()V

    return v10

    :cond_6
    :goto_0
    return v9
.end method

.method protected finalize()V
    .locals 7

    .line 1
    iget v3, p0, Lcom/smartisanos/smengine/c/n;->UW:I

    .line 2
    iget-wide v4, p0, Lcom/smartisanos/smengine/c/n;->WW:J

    .line 3
    new-instance v6, Lcom/smartisanos/smengine/c/m;

    const/16 v2, 0x64

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/c/m;-><init>(Lcom/smartisanos/smengine/c/n;IIJ)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public kb(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/c/n;->XX:Ljava/lang/String;

    return-void
.end method
