.class public Lcom/smartisanos/launcher/data/Q;
.super Ljava/lang/Object;
.source "PageInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public Cr:Ljava/lang/String;

.field private Dr:Ljava/lang/String;

.field public Er:I

.field public id:I

.field private mPage:Lcom/smartisanos/launcher/view/b/M;

.field public pageIndex:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/launcher/data/Q;->id:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/data/Q;->Dr:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/smartisanos/launcher/data/Q;->status:I

    .line 5
    iput v0, p0, Lcom/smartisanos/launcher/data/Q;->Er:I

    return-void
.end method


# virtual methods
.method public Af()Lcom/smartisanos/launcher/view/b/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/Q;->mPage:Lcom/smartisanos/launcher/view/b/M;

    return-object p0
.end method

.method public Bf()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/Q;->Dr:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, " "

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/data/Q;->Dr:Ljava/lang/String;

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/Q;->Dr:Ljava/lang/String;

    return-object p0
.end method

.method public P(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, " "

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    .line 2
    :cond_1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Q;->Dr:Ljava/lang/String;

    return-void
.end method

.method public clone()Lcom/smartisanos/launcher/data/Q;
    .locals 2

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/data/Q;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/Q;-><init>()V

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/data/Q;->Dr:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/Q;->Dr:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcom/smartisanos/launcher/data/Q;->status:I

    iput v1, v0, Lcom/smartisanos/launcher/data/Q;->status:I

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/data/Q;->Cr:Ljava/lang/String;

    iput-object p0, v0, Lcom/smartisanos/launcher/data/Q;->Cr:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/Q;->clone()Lcom/smartisanos/launcher/data/Q;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1
    :cond_0
    check-cast p1, Lcom/smartisanos/launcher/data/Q;

    .line 2
    iget p0, p0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    iget p1, p1, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public g(Lcom/smartisanos/launcher/view/b/M;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Q;->mPage:Lcom/smartisanos/launcher/view/b/M;

    .line 2
    iget v0, p1, Lcom/smartisanos/launcher/view/b/M;->pageIndex:I

    iput v0, p0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->xn()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/data/Q;->status:I

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/M;->Bn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/launcher/data/Q;->Dr:Ljava/lang/String;

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget v1, p0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/Q;->Bf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pageTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget p0, p0, Lcom/smartisanos/launcher/data/Q;->status:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/launcher/data/Q;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smartisanos/launcher/data/Q;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], name["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/Q;->Dr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
