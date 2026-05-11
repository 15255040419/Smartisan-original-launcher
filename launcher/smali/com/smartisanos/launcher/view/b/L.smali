.class Lcom/smartisanos/launcher/view/b/L;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/M;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/L;->this$0:Lcom/smartisanos/launcher/view/b/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result v0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/L;->this$0:Lcom/smartisanos/launcher/view/b/M;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result p1

    add-int/2addr v0, p1

    .line 4
    check-cast p2, Lcom/smartisanos/launcher/view/a/g;

    .line 5
    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->getRowIndex()I

    move-result p1

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/L;->this$0:Lcom/smartisanos/launcher/view/b/M;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/M;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget p0, p0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr p1, p0

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/a/g;->Al()I

    move-result p0

    add-int/2addr p1, p0

    if-le v0, p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-static {p2}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
