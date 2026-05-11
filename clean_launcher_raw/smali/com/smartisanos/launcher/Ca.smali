.class Lcom/smartisanos/launcher/Ca;
.super Lcom/smartisanos/smengine/n;
.source "LauncherTracker.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/Da;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/Da;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Ca;->this$0:Lcom/smartisanos/launcher/Da;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/Ca;->this$0:Lcom/smartisanos/launcher/Da;

    invoke-static {v0}, Lcom/smartisanos/launcher/Da;->c(Lcom/smartisanos/launcher/Da;)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/Ca;->this$0:Lcom/smartisanos/launcher/Da;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/Da;->flush()V

    return-void
.end method
