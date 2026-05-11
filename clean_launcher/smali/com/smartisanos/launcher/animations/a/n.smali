.class public Lcom/smartisanos/launcher/animations/a/n;
.super Ljava/lang/Object;
.source "PageScrollAnimationList.java"


# direct methods
.method public static da(I)Lcom/smartisanos/launcher/animations/a/i;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/smartisanos/launcher/animations/a/k;

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/k;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 2
    new-instance p0, Lcom/smartisanos/launcher/animations/a/v;

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/v;-><init>()V

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 3
    new-instance p0, Lcom/smartisanos/launcher/animations/a/t;

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/t;-><init>()V

    return-object p0

    :cond_2
    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 4
    new-instance p0, Lcom/smartisanos/launcher/animations/a/x;

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/x;-><init>()V

    return-object p0

    :cond_3
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4

    .line 5
    new-instance p0, Lcom/smartisanos/launcher/animations/a/b;

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/b;-><init>()V

    return-object p0

    .line 6
    :cond_4
    new-instance p0, Lcom/smartisanos/launcher/animations/a/k;

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/k;-><init>()V

    return-object p0

    .line 7
    :cond_5
    new-instance p0, Lcom/smartisanos/launcher/animations/a/l;

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/l;-><init>()V

    throw v1

    .line 8
    :cond_6
    new-instance p0, Lcom/smartisanos/launcher/animations/a/w;

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/w;-><init>()V

    throw v1

    .line 9
    :cond_7
    new-instance p0, Lcom/smartisanos/launcher/animations/a/u;

    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/a/u;-><init>()V

    throw v1
.end method

.method public static ea(I)Ljava/lang/String;
    .locals 2

    const-string v0, " PageScrollAnimationDefault"

    if-nez p0, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PageScrollAnimationRotateIcon"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PageScrollAnimationSplitIcon"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PageScrollAnimationRotatePage"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PageScrollAnimationLouver"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PageScrollAnimationGatherIcon"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v1, 0x6

    if-ne p0, v1, :cond_6

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PageScrollAnimationSwitchCard"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v1, 0x7

    if-ne p0, v1, :cond_7

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " PageScorllAnimationFolder"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xe()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/animations/a/m;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/animations/a/m;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
