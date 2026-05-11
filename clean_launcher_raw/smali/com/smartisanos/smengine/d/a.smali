.class public Lcom/smartisanos/smengine/d/a;
.super Ljava/lang/Object;
.source "GeomUtil.java"


# direct methods
.method public static a(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p0, p2

    div-float/2addr p3, v0

    sub-float/2addr p1, p3

    .line 7
    iput p0, p4, Lcom/smartisanos/smengine/a/i;->x:F

    .line 8
    iput p1, p4, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p4
.end method

.method public static a(FFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;
    .locals 1

    .line 9
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p0, v0

    neg-float p1, p1

    .line 10
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 11
    iput p0, p2, Lcom/smartisanos/smengine/a/i;->x:F

    .line 12
    iput p1, p2, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p2
.end method

.method public static a(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p0, p2

    div-float/2addr p3, v0

    sub-float/2addr p1, p3

    .line 1
    iput p0, p4, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iput p1, p4, Lcom/smartisanos/smengine/a/j;->y:F

    return-object p4
.end method

.method public static a(FFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    .line 3
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p0, v0

    neg-float p1, p1

    .line 4
    sget v0, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 5
    iput p0, p2, Lcom/smartisanos/smengine/a/j;->x:F

    .line 6
    iput p1, p2, Lcom/smartisanos/smengine/a/j;->y:F

    return-object p2
.end method

.method public static b(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p0, p2

    neg-float p1, p1

    div-float/2addr p3, v0

    add-float/2addr p1, p3

    .line 3
    iput p0, p4, Lcom/smartisanos/smengine/a/i;->x:F

    .line 4
    iput p1, p4, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p4
.end method

.method public static b(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p0, p2

    neg-float p1, p1

    div-float/2addr p3, v0

    add-float/2addr p1, p3

    .line 1
    iput p0, p4, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iput p1, p4, Lcom/smartisanos/smengine/a/j;->y:F

    return-object p4
.end method

.method public static c(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p0, p2

    div-float/2addr p3, v0

    add-float/2addr p3, p1

    .line 3
    iput p0, p4, Lcom/smartisanos/smengine/a/i;->x:F

    .line 4
    iput p3, p4, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p4
.end method

.method public static c(FFFFLcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p0, p2

    div-float/2addr p3, v0

    sub-float/2addr p3, p1

    .line 1
    iput p0, p4, Lcom/smartisanos/smengine/a/j;->x:F

    .line 2
    iput p3, p4, Lcom/smartisanos/smengine/a/j;->y:F

    return-object p4
.end method

.method public static d(FFFFLcom/smartisanos/smengine/a/i;)Lcom/smartisanos/smengine/a/i;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p0, p2

    div-float/2addr p3, v0

    sub-float/2addr p3, p1

    .line 1
    iput p0, p4, Lcom/smartisanos/smengine/a/i;->x:F

    .line 2
    iput p3, p4, Lcom/smartisanos/smengine/a/i;->y:F

    return-object p4
.end method
