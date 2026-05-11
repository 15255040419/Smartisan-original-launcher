.class Lcom/smartisanos/launcher/view/activeicon/q;
.super Ljava/lang/Object;
.source "WeatherView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/activeicon/H;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/activeicon/H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    iget-object v1, v0, Lcom/smartisanos/launcher/view/activeicon/a;->sP:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    sget-object v2, Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/activeicon/ActiveIconView$IconStatus;

    if-ne v1, v2, :cond_9

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->i(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->g(Lcom/smartisanos/launcher/view/activeicon/H;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/H;->ae()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherView onTimeChange sunTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/activeicon/H;->i(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->i(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/H;->ae()Lcom/smartisanos/launcher/va;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeatherView onTimeChange timeArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    .line 7
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 8
    sget-boolean v3, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/activeicon/H;->ae()Lcom/smartisanos/launcher/va;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WeatherView onTimeChange timeArray["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_9

    .line 9
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    goto/16 :goto_2

    .line 10
    :cond_5
    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/activeicon/H;->a(Lcom/smartisanos/launcher/view/activeicon/H;Ljava/lang/String;)J

    move-result-wide v2

    .line 11
    iget-object v4, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v4, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->a(Lcom/smartisanos/launcher/view/activeicon/H;Ljava/lang/String;)J

    move-result-wide v6

    .line 12
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->d(Lcom/smartisanos/launcher/view/activeicon/H;)J

    move-result-wide v8

    .line 13
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->g(Lcom/smartisanos/launcher/view/activeicon/H;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Lcom/smartisanos/launcher/view/activeicon/H;->b(Lcom/smartisanos/launcher/view/activeicon/H;Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    const/16 v10, 0x64

    if-ltz v0, :cond_7

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->a(Lcom/smartisanos/launcher/view/activeicon/H;I)Z

    move-result v1

    if-eqz v1, :cond_8

    cmp-long v1, v8, v6

    if-gez v1, :cond_6

    cmp-long v1, v8, v2

    if-gez v1, :cond_8

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/activeicon/H;->g(Lcom/smartisanos/launcher/view/activeicon/H;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/activeicon/H;->e(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v5

    .line 16
    new-instance v1, Lcom/smartisanos/launcher/view/activeicon/o;

    invoke-direct {v1, p0, v10}, Lcom/smartisanos/launcher/view/activeicon/o;-><init>(Lcom/smartisanos/launcher/view/activeicon/q;I)V

    .line 17
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_1

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/activeicon/H;->g(Lcom/smartisanos/launcher/view/activeicon/H;)[Ljava/lang/String;

    move-result-object v11

    aget-object v1, v11, v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->c(Lcom/smartisanos/launcher/view/activeicon/H;Ljava/lang/String;)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/view/activeicon/H;->a(Lcom/smartisanos/launcher/view/activeicon/H;I)Z

    move-result v1

    if-eqz v1, :cond_8

    cmp-long v1, v8, v2

    if-ltz v1, :cond_8

    cmp-long v1, v8, v6

    if-gez v1, :cond_8

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/activeicon/H;->g(Lcom/smartisanos/launcher/view/activeicon/H;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/activeicon/H;->f(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v5

    .line 21
    new-instance v1, Lcom/smartisanos/launcher/view/activeicon/p;

    invoke-direct {v1, p0, v10}, Lcom/smartisanos/launcher/view/activeicon/p;-><init>(Lcom/smartisanos/launcher/view/activeicon/q;I)V

    .line 22
    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 23
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/activeicon/q;->this$0:Lcom/smartisanos/launcher/view/activeicon/H;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/activeicon/H;->i(Lcom/smartisanos/launcher/view/activeicon/H;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/view/activeicon/H;->a(Lcom/smartisanos/launcher/view/activeicon/H;ILjava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method
