.class Lcom/smartisanos/launcher/view/oa;
.super Lcom/smartisanos/smengine/a;
.source "DownloadWithWaveView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/oa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/oa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->c(Lcom/smartisanos/launcher/view/Ca;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/oa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ca;->c(Lcom/smartisanos/launcher/view/Ca;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->kill()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/oa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Ca;->c(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/oa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/view/Ca;->d(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
