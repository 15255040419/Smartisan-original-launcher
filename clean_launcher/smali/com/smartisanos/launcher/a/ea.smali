.class Lcom/smartisanos/launcher/a/ea;
.super Ljava/lang/Object;
.source "UninstallApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Tj:Landroid/app/DownloadManager;

.field final synthetic Uj:Lcom/smartisanos/launcher/data/ItemInfo;

.field final synthetic this$1:Lcom/smartisanos/launcher/a/na;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/na;Landroid/app/DownloadManager;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/ea;->this$1:Lcom/smartisanos/launcher/a/na;

    iput-object p2, p0, Lcom/smartisanos/launcher/a/ea;->Tj:Landroid/app/DownloadManager;

    iput-object p3, p0, Lcom/smartisanos/launcher/a/ea;->Uj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/a/ea;->Tj:Landroid/app/DownloadManager;

    iget-object v1, p0, Lcom/smartisanos/launcher/a/ea;->Uj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/ua;->b(Landroid/app/DownloadManager;J)V

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/a/da;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/da;-><init>(Lcom/smartisanos/launcher/a/ea;)V

    invoke-static {v0}, Lcom/smartisanos/launcher/provider/DownloadManagerDelegate;->c(Ljava/lang/Runnable;)V

    return-void
.end method
