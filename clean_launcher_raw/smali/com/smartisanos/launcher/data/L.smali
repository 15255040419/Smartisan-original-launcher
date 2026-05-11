.class public Lcom/smartisanos/launcher/data/L;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# instance fields
.field private final Xq:Landroid/graphics/Paint;

.field private final Yq:Landroid/graphics/Paint;

.field private final Zq:Landroid/graphics/Paint;

.field private final _q:Landroid/graphics/Paint;

.field private ar:[I


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/L;->Xq:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/L;->Yq:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/L;->Zq:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/L;->_q:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/data/L;->ar:[I

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/data/L;->Xq:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/launcher/data/L;->Xq:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/launcher/data/L;->Yq:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/data/L;->Yq:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/launcher/data/L;->Zq:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/data/L;->Zq:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 13
    iget-object p0, p0, Lcom/smartisanos/launcher/data/L;->Zq:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/data/L;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 29
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE()I

    move-result v2

    invoke-static {v2}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 30
    iget v3, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    float-to-int v3, v3

    .line 31
    invoke-static {v3}, Lcom/smartisanos/launcher/e/s;->ma(I)I

    move-result v3

    int-to-float v3, v3

    .line 32
    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v2, v2

    .line 33
    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->ma(I)I

    move-result v2

    .line 34
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_SHADOW_RADIUS:[I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 35
    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->ICON_SHADOW_RADIUS_TRANSPARENT:[I

    .line 36
    :cond_0
    sget-object v6, Lcom/smartisanos/launcher/data/Constants;->ICON_SHADOW_COLOR:[[I

    aget-object v6, v6, v1

    const/4 v7, 0x0

    cmpl-float v7, v7, v3

    if-gez v7, :cond_4

    .line 37
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 38
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v9, 0x1

    .line 39
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v11, v2

    sub-float/2addr v11, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v11, v3

    div-float v12, v11, v3

    const/4 v13, 0x0

    .line 41
    :goto_0
    array-length v14, v4

    if-ge v13, v14, :cond_2

    .line 42
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14}, Landroid/graphics/Canvas;-><init>()V

    aget v15, v4, v13

    int-to-float v15, v15

    aget v9, v6, v13

    invoke-static {v0, v14, v15, v9}, Lcom/smartisanos/launcher/data/L;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FI)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 43
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/2addr v14, v5

    int-to-float v14, v14

    .line 44
    aget v15, v4, v13

    move-object/from16 v16, v4

    int-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-float v3, v3

    add-float/2addr v3, v12

    if-ne v1, v5, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    .line 45
    invoke-virtual {v10, v9, v14, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    .line 46
    invoke-virtual {v10, v9, v14, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 47
    :goto_1
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v13, v13, 0x1

    move v3, v4

    move-object/from16 v4, v16

    const/4 v9, 0x1

    goto :goto_0

    .line 48
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    if-eqz p2, :cond_3

    .line 49
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    :cond_3
    invoke-virtual {v10, v0, v11, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v7

    .line 53
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDragOutline, w ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] is error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FI)Landroid/graphics/Bitmap;
    .locals 6

    .line 69
    new-instance v0, Lcom/smartisanos/launcher/data/L;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/L;-><init>()V

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 71
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 74
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v2, p1

    move v3, p3

    move v4, p3

    move v5, p2

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/data/L;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIF)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7

    .line 54
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getPAGE_1_3X3_MODE()I

    move-result v0

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 55
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    .line 56
    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v0, v0

    .line 57
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->ICON_SHADOW_RADIUS:[I

    .line 58
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->ICON_SHADOW_COLOR:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v2, 0x0

    cmpl-float v2, v2, v1

    if-gez v2, :cond_1

    .line 59
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 60
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    .line 61
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v1, v0, v1

    .line 63
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    if-eqz p1, :cond_0

    .line 64
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 66
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    :cond_0
    invoke-virtual {v3, p0, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v2

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createDragOutline, w ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "] is error"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIF)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v1, p5

    .line 1
    iget-object v2, v0, Lcom/smartisanos/launcher/data/L;->_q:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/smartisanos/launcher/data/L;->ar:[I

    move-object/from16 v8, p1

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v9

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 2
    invoke-static {v2, v1}, Lcom/smartisanos/launcher/ua;->b(FF)Landroid/graphics/BlurMaskFilter;

    move-result-object v3

    .line 3
    iget-object v4, v0, Lcom/smartisanos/launcher/data/L;->Yq:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v3, 0x2

    new-array v10, v3, [I

    .line 4
    iget-object v4, v0, Lcom/smartisanos/launcher/data/L;->Yq:Landroid/graphics/Paint;

    invoke-virtual {v9, v4, v10}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    new-array v12, v3, [I

    .line 5
    iget-object v4, v0, Lcom/smartisanos/launcher/data/L;->Yq:Landroid/graphics/Paint;

    invoke-virtual {v9, v4, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 6
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/high16 v5, -0x1000000

    invoke-virtual {v7, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 9
    iget-object v1, v0, Lcom/smartisanos/launcher/data/L;->Yq:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v14, v3, [I

    .line 10
    iget-object v1, v0, Lcom/smartisanos/launcher/data/L;->Yq:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v14}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 11
    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/16 v16, 0x0

    .line 12
    aget v1, v14, v16

    neg-int v1, v1

    int-to-float v1, v1

    const/16 v17, 0x1

    aget v2, v14, v17

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/smartisanos/launcher/data/L;->Zq:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 13
    aget v1, v14, v16

    neg-int v1, v1

    int-to-float v4, v1

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/smartisanos/launcher/data/L;->Zq:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    aget v1, v14, v17

    neg-int v1, v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/smartisanos/launcher/data/L;->Zq:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 16
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 17
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    iget-object v3, v0, Lcom/smartisanos/launcher/data/L;->Xq:Landroid/graphics/Paint;

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    aget v3, v14, v16

    int-to-float v3, v3

    add-float/2addr v3, v2

    aget v4, v14, v17

    int-to-float v4, v4

    iget-object v5, v0, Lcom/smartisanos/launcher/data/L;->Xq:Landroid/graphics/Paint;

    invoke-virtual {v7, v15, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 20
    aget v3, v10, v16

    int-to-float v3, v3

    add-float/2addr v3, v2

    aget v4, v10, v17

    int-to-float v4, v4

    iget-object v5, v0, Lcom/smartisanos/launcher/data/L;->Xq:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 21
    iget-object v3, v0, Lcom/smartisanos/launcher/data/L;->Xq:Landroid/graphics/Paint;

    move/from16 v4, p4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    aget v3, v12, v16

    int-to-float v3, v3

    add-float/2addr v3, v2

    aget v2, v12, v17

    int-to-float v2, v2

    iget-object v0, v0, Lcom/smartisanos/launcher/data/L;->Xq:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v3, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 23
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 26
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 27
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method
