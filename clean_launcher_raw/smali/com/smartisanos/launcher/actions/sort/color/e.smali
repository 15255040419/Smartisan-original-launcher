.class public Lcom/smartisanos/launcher/actions/sort/color/e;
.super Ljava/lang/Object;
.source "IconColor.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public Zk:I

.field public _k:[J

.field public al:[D

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->_k:[J

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->al:[D

    .line 4
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/actions/sort/color/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->Zk:I

    iget p1, p1, Lcom/smartisanos/launcher/actions/sort/color/e;->Zk:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public b(IIII)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->Zk:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->Zk:I

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->_k:[J

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    int-to-long v4, p1

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 3
    aget-wide v2, p0, v1

    int-to-long p1, p2

    add-long/2addr v2, p1

    aput-wide v2, p0, v1

    const/4 p1, 0x2

    .line 4
    aget-wide v0, p0, p1

    int-to-long p2, p3

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    const/4 p1, 0x3

    .line 5
    aget-wide p2, p0, p1

    int-to-long v0, p4

    add-long/2addr p2, v0

    aput-wide p2, p0, p1

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/actions/sort/color/e;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/actions/sort/color/e;->a(Lcom/smartisanos/launcher/actions/sort/color/e;)I

    move-result p0

    return p0
.end method

.method public ud()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->_k:[J

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/smartisanos/launcher/actions/sort/color/e;->Zk:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget-wide v1, v0, v1

    int-to-long v3, p0

    div-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    int-to-long v4, p0

    div-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    int-to-long v5, p0

    div-long/2addr v3, v5

    long-to-int v3, v3

    const/4 v4, 0x3

    aget-wide v4, v0, v4

    int-to-long v6, p0

    div-long/2addr v4, v6

    long-to-int p0, v4

    invoke-static {v1, v2, v3, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
