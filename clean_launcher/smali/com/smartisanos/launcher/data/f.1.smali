.class Lcom/smartisanos/launcher/data/f;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# instance fields
.field final synthetic LD:I

.field final synthetic val$itemId:J


# direct methods
.method constructor <init>(IJI)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/smartisanos/launcher/data/f;->val$itemId:J

    iput p4, p0, Lcom/smartisanos/launcher/data/f;->LD:I

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-wide v0, p0, Lcom/smartisanos/launcher/data/f;->val$itemId:J

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    iget-wide v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/Eb;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget v2, p0, Lcom/smartisanos/launcher/data/f;->LD:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/a/g;->qb(I)V

    .line 5
    sget-object v1, Lcom/smartisanos/launcher/data/T;->MMS:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell != null  Update MMS messageCountFinal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/data/f;->LD:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v1, p0, Lcom/smartisanos/launcher/data/f;->val$itemId:J

    iget v3, p0, Lcom/smartisanos/launcher/data/f;->LD:I

    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/Aa;->a(JI)Lcom/smartisanos/launcher/data/ItemInfo;

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->Xe()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    int-to-long v1, v1

    .line 10
    invoke-static {v1, v2}, Lcom/smartisanos/launcher/Aa;->i(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 11
    check-cast v3, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/FolderInfo;->sf()I

    move-result v4

    .line 12
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/smartisanos/launcher/view/Eb;->q(J)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13
    sget-object v2, Lcom/smartisanos/launcher/data/T;->MMS:Lcom/smartisanos/launcher/data/S;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folderCell Update MMS messageCountFinal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/smartisanos/launcher/data/f;->LD:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/a/g;->qb(I)V

    :cond_3
    :goto_0
    return-void
.end method
