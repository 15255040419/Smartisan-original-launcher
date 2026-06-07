.class public Lb/a/a/l1/f/d;
.super Ljava/lang/Object;
.source "NumberParser.java"


# direct methods
.method public static a(DII)Ljava/lang/String;
    .locals 9

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-string v1, "..."

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v2

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    const-string v1, ""

    if-ltz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "-"

    .line 18
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    int-to-double v2, p2

    int-to-double v4, p3

    .line 19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    neg-int v6, p3

    int-to-double v6, v6

    .line 20
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpg-double v4, p0, v4

    const-string v5, "\u2475\u2476\u2477\u2478\u2479\u247a\u247b\u247c\u247d\u247e\u247f\u2480\u2481\u2482\u2483"

    const/16 v8, 0xa

    if-gez v4, :cond_5

    cmpl-double v4, p0, v6

    if-lez v4, :cond_5

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p2

    invoke-static {p0, p1, v3, v4, p3}, Lb/a/a/l1/f/d;->a(DJI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v8, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v1, 0x0

    :goto_2
    cmpl-double v4, p0, v2

    if-ltz v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    div-double/2addr p0, v2

    goto :goto_2

    :cond_6
    :goto_3
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p0, v6

    if-gez v4, :cond_7

    add-int/lit8 v1, v1, -0x1

    mul-double/2addr p0, v2

    goto :goto_3

    .line 23
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v3, p2

    invoke-static {p0, p1, v3, v4, p3}, Lb/a/a/l1/f/d;->a(DJI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v8, :cond_8

    const-string p0, "E"

    goto :goto_4

    .line 24
    :cond_8
    invoke-virtual {v5, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    :goto_4
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(DJI)Ljava/lang/String;
    .locals 10

    const/16 v0, 0x64

    new-array v0, v0, [I

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    long-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    move v1, v2

    .line 2
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-long v5, v5

    long-to-double v7, v5

    sub-double/2addr p0, v7

    move-wide v6, v5

    move v5, v1

    :goto_0
    if-ltz v5, :cond_1

    .line 3
    rem-long v8, v6, p2

    long-to-int v8, v8

    aput v8, v0, v5

    .line 4
    div-long/2addr v6, p2

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v1, 0x1

    :goto_1
    add-int/lit8 v6, p4, 0x1

    if-gt v5, v6, :cond_2

    mul-double/2addr p0, v3

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    aput v6, v0, v5

    .line 6
    aget v6, v0, v5

    int-to-double v6, v6

    sub-double/2addr p0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :cond_2
    aget p0, v0, v6

    mul-int/lit8 p0, p0, 0x2

    int-to-long p0, p0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_3

    .line 8
    aget p0, v0, p4

    add-int/lit8 p0, p0, 0x1

    aput p0, v0, p4

    move p0, p4

    :goto_2
    if-lez p0, :cond_3

    .line 9
    aget p1, v0, p0

    int-to-long v3, p1

    cmp-long p1, v3, p2

    if-nez p1, :cond_3

    .line 10
    aput v2, v0, p0

    add-int/lit8 p1, p0, -0x1

    .line 11
    aget v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, p1

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ltz p4, :cond_5

    if-le p4, v1, :cond_5

    .line 12
    aget p0, v0, p4

    if-lez p0, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    const-string p0, ""

    move-object p1, p0

    move p0, v2

    :goto_5
    if-gt p0, p4, :cond_9

    if-lez v1, :cond_6

    if-nez p0, :cond_6

    .line 13
    aget p2, v0, v2

    if-eqz p2, :cond_7

    .line 14
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, p0

    const-string p3, "0123456789ABCDEF"

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    if-ne p0, v1, :cond_8

    if-ge p0, p4, :cond_8

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 p4, p4, 0x1

    if-gt p4, v1, :cond_a

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_a
    return-object p1
.end method
