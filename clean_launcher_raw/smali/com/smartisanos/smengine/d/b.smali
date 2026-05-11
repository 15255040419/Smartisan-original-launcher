.class public Lcom/smartisanos/smengine/d/b;
.super Ljava/lang/Object;
.source "SortUtil.java"


# direct methods
.method public static a([Ljava/lang/Object;ILjava/util/Comparator;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_4

    .line 1
    aget-object v4, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v6, p0, v5

    invoke-interface {p2, v4, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    if-eqz v3, :cond_0

    move v2, v3

    move v3, v0

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    .line 2
    :cond_1
    aget-object v4, p0, v2

    .line 3
    aget-object v6, p0, v5

    aput-object v6, p0, v2

    .line 4
    aput-object v4, p0, v5

    if-le v2, v1, :cond_3

    if-nez v3, :cond_2

    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
