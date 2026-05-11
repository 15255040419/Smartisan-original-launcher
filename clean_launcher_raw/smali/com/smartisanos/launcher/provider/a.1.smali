.class public Lcom/smartisanos/launcher/provider/a;
.super Ljava/lang/Object;
.source "AppStoreDelegate.java"


# direct methods
.method public static Z(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->ga(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/provider/b;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadSuccess return by find theme return null ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    iget-object p0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    const/16 v0, 0x6a

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static aa(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->ga(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->ga(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/provider/b;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress failed by find theme return null ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget p0, v0, Lcom/smartisanos/launcher/theme/v;->status:I

    const/16 v1, 0x67

    if-ne p0, v1, :cond_1

    .line 4
    iput p1, v0, Lcom/smartisanos/launcher/theme/v;->progress:I

    .line 5
    iget-object p0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;II)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/provider/b;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress return by status ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/smartisanos/launcher/theme/v;->status:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is not RUNNING"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
