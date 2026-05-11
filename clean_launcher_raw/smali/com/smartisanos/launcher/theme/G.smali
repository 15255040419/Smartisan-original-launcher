.class Lcom/smartisanos/launcher/theme/G;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/G;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/G;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->i(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/U;->dg()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/G;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->c(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    const/4 p1, 0x0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/G;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->j(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/v;->mId:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/smartisanos/launcher/data/a/b;->U(Ljava/lang/String;)Lcom/smartisanos/launcher/data/a/a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    iget-wide v1, v1, Lcom/smartisanos/launcher/data/a/a;->ns:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/smartisanos/launcher/e/s;->a(Landroid/content/Context;J)Lcom/smartisanos/launcher/e/p;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v4

    const-string v5, "download"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/launcher/e/p;->og()I

    move-result v5

    .line 10
    invoke-static {v0}, Lcom/smartisanos/launcher/theme/X;->fa(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/v;

    move-result-object v6

    .line 11
    iget v7, v3, Lcom/smartisanos/launcher/e/p;->status:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    const/16 v3, 0x67

    .line 12
    invoke-static {v0, v3, v5}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;II)V

    .line 13
    invoke-static {v4, v1, v2}, Lcom/smartisanos/launcher/ua;->c(Landroid/app/DownloadManager;J)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/G;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->k(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/U;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/theme/U;->g(Lcom/smartisanos/launcher/theme/v;)V

    goto :goto_0

    .line 15
    :cond_2
    iget v6, v3, Lcom/smartisanos/launcher/e/p;->status:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    iget v3, v3, Lcom/smartisanos/launcher/e/p;->status:I

    if-ne v3, v8, :cond_4

    :cond_3
    const/16 v3, 0x68

    .line 16
    invoke-static {v0, v3, v5}, Lcom/smartisanos/launcher/theme/X;->a(Ljava/lang/String;II)V

    .line 17
    invoke-static {v4, v1, v2}, Lcom/smartisanos/launcher/ua;->a(Landroid/app/DownloadManager;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/G;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->c(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    return-void

    :goto_1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/G;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->c(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    throw v0
.end method
