.class Lcom/smartisanos/launcher/actions/sort/color/c;
.super Ljava/lang/Object;
.source "IconColor.java"

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
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->Ze()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->Ze()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    iget-object p0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    iget-object p1, p2, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->a(Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;)I

    move-result p0

    return p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "colorComparator compare(). error case. o1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " o2 = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast p2, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/actions/sort/color/c;->a(Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/ItemInfo;)I

    move-result p0

    return p0
.end method
