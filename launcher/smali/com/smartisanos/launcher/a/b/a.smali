.class Lcom/smartisanos/launcher/a/b/a;
.super Ljava/lang/Object;
.source "AppSortBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/a/b/d;Lcom/smartisanos/launcher/a/b/d;)I
    .locals 6

    .line 1
    iget-object p0, p1, Lcom/smartisanos/launcher/a/b/d;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 2
    iget-object v0, p2, Lcom/smartisanos/launcher/a/b/d;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 3
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/b/f;->b(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_1
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v3, -0x1

    if-nez v1, :cond_3

    iget-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v1, v2, :cond_3

    return v3

    .line 7
    :cond_3
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v1, v2, :cond_6

    iget-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne v1, v2, :cond_6

    .line 8
    iget-boolean p1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz p1, :cond_4

    iget-boolean p1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-nez p1, :cond_4

    return v3

    .line 9
    :cond_4
    iget-boolean p1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-nez p1, :cond_5

    iget-boolean p1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz p1, :cond_5

    return v2

    .line 10
    :cond_5
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/b/f;->c(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0

    .line 11
    :cond_6
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-nez v1, :cond_7

    return v2

    .line 12
    :cond_7
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v1, :cond_8

    return v3

    .line 13
    :cond_8
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v1, :cond_9

    .line 14
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/b/f;->d(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0

    .line 15
    :cond_9
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-nez v1, :cond_a

    return v3

    .line 16
    :cond_a
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-nez v1, :cond_b

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v1, :cond_b

    return v2

    .line 17
    :cond_b
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v1, :cond_c

    .line 18
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/b/f;->d(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0

    .line 19
    :cond_c
    iget-wide v4, p1, Lcom/smartisanos/launcher/a/b/d;->yk:J

    iget-wide p1, p2, Lcom/smartisanos/launcher/a/b/d;->yk:J

    sub-long/2addr v4, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v4, p1

    if-eqz p1, :cond_e

    if-lez p1, :cond_d

    goto :goto_0

    :cond_d
    move v2, v3

    :goto_0
    return v2

    .line 20
    :cond_e
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/b/f;->c(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/a/b/d;

    check-cast p2, Lcom/smartisanos/launcher/a/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/a/b/a;->a(Lcom/smartisanos/launcher/a/b/d;Lcom/smartisanos/launcher/a/b/d;)I

    move-result p0

    return p0
.end method
