.class abstract Landroid/icu/text/CharsetRecog_2022;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;,
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;,
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method match([BI[[B)I
    .locals 10

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v0, p2, :cond_7

    .line 44
    aget-byte v4, p1, v0

    const/16 v5, 0x1b

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    move v4, p0

    .line 46
    :goto_1
    array-length v5, p3

    if-ge v4, v5, :cond_3

    .line 47
    aget-object v5, p3, v4

    sub-int v7, p2, v0

    .line 49
    array-length v8, v5

    if-ge v7, v8, :cond_0

    goto :goto_3

    :cond_0
    move v7, v6

    .line 53
    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_2

    .line 54
    aget-byte v8, v5, v7

    add-int v9, v0, v7

    aget-byte v9, p1, v9

    if-eq v8, v9, :cond_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 60
    array-length v4, v5

    sub-int/2addr v4, v6

    add-int/2addr v0, v4

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 67
    :cond_4
    aget-byte v4, p1, v0

    const/16 v5, 0xe

    if-eq v4, v5, :cond_5

    aget-byte v4, p1, v0

    const/16 v5, 0xf

    if-ne v4, v5, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :cond_6
    :goto_4
    add-int/2addr v0, v6

    goto :goto_0

    :cond_7
    if-nez v1, :cond_8

    return p0

    :cond_8
    mul-int/lit8 p1, v1, 0x64

    mul-int/lit8 p2, v2, 0x64

    sub-int/2addr p1, p2

    add-int/2addr v2, v1

    .line 83
    div-int/2addr p1, v2

    add-int/2addr v1, v3

    const/4 p2, 0x5

    if-ge v1, p2, :cond_9

    sub-int/2addr p2, v1

    mul-int/lit8 p2, p2, 0xa

    sub-int/2addr p1, p2

    :cond_9
    if-gez p1, :cond_a

    goto :goto_5

    :cond_a
    move p0, p1

    :goto_5
    return p0
.end method
