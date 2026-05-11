.class Lcom/smartisanos/launcher/data/J;
.super Ljava/lang/Object;
.source "ExportDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Sq:I

.field final synthetic this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/data/ExportDataProvider;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/data/J;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    iput p2, p0, Lcom/smartisanos/launcher/data/J;->Sq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/ExportDataProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "SettingCall"

    const-string v2, "merge runnable. begin."

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 4
    iget v3, p0, Lcom/smartisanos/launcher/data/J;->Sq:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->getModeFromPageMode(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/data/T;->h(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-static {}, Lcom/smartisanos/launcher/data/N;->getInstance()Lcom/smartisanos/launcher/data/N;

    move-result-object v3

    iget v4, p0, Lcom/smartisanos/launcher/data/J;->Sq:I

    invoke-virtual {v3, v2, v4}, Lcom/smartisanos/launcher/data/N;->d(Landroid/content/Context;I)V

    goto :goto_0

    .line 6
    :cond_1
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/data/ExportDataProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v2

    const-string v3, "loadDataForUpdate error!"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/data/ExportDataProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v2

    const-string v3, "SettingCall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "merge runnable. end.  time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/data/ExportDataProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "call mLock.notifyAll()"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/data/J;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/ExportDataProvider;->a(Lcom/smartisanos/launcher/data/ExportDataProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    :try_start_2
    iget-object p0, p0, Lcom/smartisanos/launcher/data/J;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/ExportDataProvider;->a(Lcom/smartisanos/launcher/data/ExportDataProvider;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    .line 12
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 13
    :try_start_4
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/data/ExportDataProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "SettingCall"

    const-string v3, "SystemPreInstallApps.loadDataForUpdate. error"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 15
    :try_start_5
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/data/ExportDataProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "call mLock.notifyAll()"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/smartisanos/launcher/data/J;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/ExportDataProvider;->a(Lcom/smartisanos/launcher/data/ExportDataProvider;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 17
    :try_start_6
    iget-object p0, p0, Lcom/smartisanos/launcher/data/J;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/ExportDataProvider;->a(Lcom/smartisanos/launcher/data/ExportDataProvider;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 18
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception p0

    .line 19
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_7

    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/data/ExportDataProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "call mLock.notifyAll() exception"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 20
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    .line 21
    :goto_3
    :try_start_8
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/data/ExportDataProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "call mLock.notifyAll()"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/smartisanos/launcher/data/J;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    invoke-static {v1}, Lcom/smartisanos/launcher/data/ExportDataProvider;->a(Lcom/smartisanos/launcher/data/ExportDataProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 23
    :try_start_9
    iget-object p0, p0, Lcom/smartisanos/launcher/data/J;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    invoke-static {p0}, Lcom/smartisanos/launcher/data/ExportDataProvider;->a(Lcom/smartisanos/launcher/data/ExportDataProvider;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 24
    monitor-exit v1

    goto :goto_4

    :catchall_3
    move-exception p0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    move-exception p0

    .line 25
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/smartisanos/launcher/data/ExportDataProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v1

    const-string v2, "call mLock.notifyAll() exception"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 26
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_4
    throw v0
.end method
