.class Lcom/smartisanos/launcher/wa;
.super Lcom/smartisanos/smengine/n;
.source "LauncherApplication.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/LauncherApplication;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/wa;->this$0:Lcom/smartisanos/launcher/LauncherApplication;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/wa;->this$0:Lcom/smartisanos/launcher/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/J;->b(Landroid/content/Context;)V

    return-void
.end method
