.class public final Lb/d/a/c/a;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# static fields
.field public static a:Lb/d/a/b/j/e;

.field public static synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd33

    .line 1
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 2
    aget v0, v0, v1

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    new-instance v1, Lb/d/a/b/j/e;

    invoke-direct {v1, v0, v0}, Lb/d/a/b/j/e;-><init>(II)V

    sput-object v1, Lb/d/a/c/a;->a:Lb/d/a/b/j/e;

    return-void
.end method

.method public static a(Lb/d/a/b/j/e;)I
    .locals 3

    .line 19
    invoke-virtual {p0}, Lb/d/a/b/j/e;->b()I

    move-result v0

    .line 20
    invoke-virtual {p0}, Lb/d/a/b/j/e;->a()I

    move-result p0

    .line 21
    sget-object v1, Lb/d/a/c/a;->a:Lb/d/a/b/j/e;

    invoke-virtual {v1}, Lb/d/a/b/j/e;->b()I

    move-result v1

    .line 22
    sget-object v2, Lb/d/a/c/a;->a:Lb/d/a/b/j/e;

    invoke-virtual {v2}, Lb/d/a/b/j/e;->a()I

    move-result v2

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float p0, p0

    int-to-float v1, v2

    div-float/2addr p0, v1

    float-to-double v1, p0

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    .line 25
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static a(Lb/d/a/b/j/e;Lb/d/a/b/j/e;Lb/d/a/b/j/h;Z)I
    .locals 6

    .line 7
    invoke-virtual {p0}, Lb/d/a/b/j/e;->b()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Lb/d/a/b/j/e;->a()I

    move-result p0

    .line 9
    invoke-virtual {p1}, Lb/d/a/b/j/e;->b()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Lb/d/a/b/j/e;->a()I

    move-result p1

    .line 11
    div-int v2, v0, v1

    .line 12
    div-int v3, p0, p1

    .line 13
    invoke-static {}, Lb/d/a/c/a;->a()[I

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v4, p2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq p2, v4, :cond_4

    if-eq p2, v5, :cond_0

    move p0, v4

    goto :goto_3

    :cond_0
    if-eqz p3, :cond_3

    move p2, v4

    .line 14
    :goto_0
    div-int/2addr v0, v5

    if-lt v0, v1, :cond_2

    div-int/2addr p0, v5

    if-ge p0, p1, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    move p0, p2

    goto :goto_3

    .line 15
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_6

    move p2, v4

    .line 16
    :goto_2
    div-int/2addr v0, v5

    if-ge v0, v1, :cond_5

    div-int/lit8 p3, p0, 0x2

    if-ge p3, p1, :cond_5

    goto :goto_1

    .line 17
    :cond_5
    div-int/lit8 p0, p0, 0x2

    mul-int/lit8 p2, p2, 0x2

    goto :goto_2

    .line 18
    :cond_6
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_3
    if-ge p0, v4, :cond_7

    move p0, v4

    :cond_7
    return p0
.end method

.method public static a(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lb/d/a/b/j/e;)Lb/d/a/b/j/e;
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/d/a/b/j/e;->b()I

    move-result v0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getHeight()I

    move-result p0

    if-gtz p0, :cond_1

    .line 5
    invoke-virtual {p1}, Lb/d/a/b/j/e;->a()I

    move-result p0

    .line 6
    :cond_1
    new-instance p1, Lb/d/a/b/j/e;

    invoke-direct {p1, v0, p0}, Lb/d/a/b/j/e;-><init>(II)V

    return-object p1
.end method

.method public static synthetic a()[I
    .locals 3

    .line 1
    sget-object v0, Lb/d/a/c/a;->b:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lb/d/a/b/j/h;->values()[Lb/d/a/b/j/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lb/d/a/b/j/h;->b:Lb/d/a/b/j/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lb/d/a/b/j/h;->a:Lb/d/a/b/j/h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lb/d/a/c/a;->b:[I

    return-object v0
.end method

.method public static b(Lb/d/a/b/j/e;Lb/d/a/b/j/e;Lb/d/a/b/j/h;Z)F
    .locals 7

    .line 1
    invoke-virtual {p0}, Lb/d/a/b/j/e;->b()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lb/d/a/b/j/e;->a()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lb/d/a/b/j/e;->b()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lb/d/a/b/j/e;->a()I

    move-result p1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float v3, v2, v3

    int-to-float v4, p0

    int-to-float v5, p1

    div-float v5, v4, v5

    .line 5
    sget-object v6, Lb/d/a/b/j/h;->a:Lb/d/a/b/j/h;

    if-ne p2, v6, :cond_0

    cmpl-float v6, v3, v5

    if-gez v6, :cond_1

    :cond_0
    sget-object v6, Lb/d/a/b/j/h;->b:Lb/d/a/b/j/h;

    if-ne p2, v6, :cond_2

    cmpg-float p2, v3, v5

    if-gez p2, :cond_2

    :cond_1
    div-float/2addr v4, v3

    float-to-int p1, v4

    goto :goto_0

    :cond_2
    div-float p2, v2, v5

    float-to-int v1, p2

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p3, :cond_3

    if-ge v1, v0, :cond_3

    if-lt p1, p0, :cond_4

    :cond_3
    if-eqz p3, :cond_5

    if-eq v1, v0, :cond_5

    if-eq p1, p0, :cond_5

    :cond_4
    int-to-float p0, v1

    div-float p2, p0, v2

    :cond_5
    return p2
.end method
