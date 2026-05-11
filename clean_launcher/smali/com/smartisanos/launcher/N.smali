.class Lcom/smartisanos/launcher/N;
.super Ljava/lang/Object;
.source "ApplicationProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/O;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/O;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/N;->this$1:Lcom/smartisanos/launcher/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string p0, "PreInstallDone"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/N;->wf()I

    move-result v0

    .line 2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "merge runnable. begin."

    invoke-virtual {v1, p0, v2}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getModeFromPageMode(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/data/T;->h(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/smartisanos/launcher/data/N;->d(Landroid/content/Context;I)V

    goto :goto_0

    .line 7
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v3, "loadDataForUpdate error!"

    invoke-virtual {v0, p0, v3}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "merge runnable. end.  time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "SystemPreInstallApps.loadDataForUpdate. error"

    invoke-virtual {v1, p0, v2}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
