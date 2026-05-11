.class Lcom/smartisanos/launcher/a/b/c;
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
.method public a(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/a/b/f;->b(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    iget-byte p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    iget-byte p0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-nez p0, :cond_2

    return v0

    .line 4
    :cond_2
    iget-byte p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v1, -0x1

    if-nez p0, :cond_3

    iget-byte p0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne p0, v0, :cond_3

    return v1

    .line 5
    :cond_3
    iget-byte p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne p0, v0, :cond_6

    iget-byte p0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-ne p0, v0, :cond_6

    .line 6
    iget-boolean p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz p0, :cond_4

    iget-boolean p0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-nez p0, :cond_4

    return v1

    .line 7
    :cond_4
    iget-boolean p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-nez p0, :cond_5

    iget-boolean p0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz p0, :cond_5

    return v0

    .line 8
    :cond_5
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/a/b/f;->c(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0

    .line 9
    :cond_6
    iget-boolean p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz p0, :cond_7

    iget-boolean p0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-nez p0, :cond_7

    return v0

    .line 10
    :cond_7
    iget-boolean p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-nez p0, :cond_8

    iget-boolean p0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz p0, :cond_8

    return v1

    .line 11
    :cond_8
    iget-boolean p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz p0, :cond_9

    iget-boolean p0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    if-eqz p0, :cond_9

    .line 12
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/a/b/f;->d(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0

    .line 13
    :cond_9
    iget-object p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, p2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 14
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/a/b/f;->c(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0

    .line 15
    :cond_a
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/a/b/f;->d(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast p2, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/a/b/c;->a(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0
.end method
