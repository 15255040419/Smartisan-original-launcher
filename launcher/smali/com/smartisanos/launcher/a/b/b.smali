.class Lcom/smartisanos/launcher/a/b/b;
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
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/smartisanos/launcher/a/b/d;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 2
    iget-object v0, p2, Lcom/smartisanos/launcher/a/b/d;->_j:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 3
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz v1, :cond_2

    .line 6
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/b/f;->d(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0

    .line 7
    :cond_2
    iget p2, p2, Lcom/smartisanos/launcher/a/b/d;->xk:I

    iget p1, p1, Lcom/smartisanos/launcher/a/b/d;->xk:I

    sub-int/2addr p2, p1

    if-nez p2, :cond_4

    .line 8
    iget-object p1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object p2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/b/f;->c(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0

    .line 10
    :cond_3
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/b/f;->d(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0

    :cond_4
    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/a/b/d;

    check-cast p2, Lcom/smartisanos/launcher/a/b/d;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/a/b/b;->a(Lcom/smartisanos/launcher/a/b/d;Lcom/smartisanos/launcher/a/b/d;)I

    move-result p0

    return p0
.end method
