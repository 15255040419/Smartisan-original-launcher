.class Lcom/smartisanos/launcher/view/B;
.super Ljava/lang/Object;
.source "DockView.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/B;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/launcher/view/a/g;)I
    .locals 0

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-nez p2, :cond_1

    return p0

    .line 1
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p1

    iget p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 2
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-eq p1, p2, :cond_3

    if-le p1, p2, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    check-cast p2, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/view/B;->a(Lcom/smartisanos/launcher/view/a/g;Lcom/smartisanos/launcher/view/a/g;)I

    move-result p0

    return p0
.end method
