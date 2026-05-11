.class Lcom/smartisanos/launcher/data/k;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# instance fields
.field final synthetic Jq:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/k;->Jq:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/data/k;->Jq:Ljava/lang/String;

    invoke-static {p0}, Lcom/smartisanos/launcher/Aa;->A(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 3
    iget v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    goto :goto_0

    :cond_1
    return-void
.end method
