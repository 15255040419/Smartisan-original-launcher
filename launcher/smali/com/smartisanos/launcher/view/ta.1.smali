.class Lcom/smartisanos/launcher/view/ta;
.super Lcom/smartisanos/smengine/a;
.source "DownloadWithWaveView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ta;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ta;->this$0:Lcom/smartisanos/launcher/view/Ca;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/view/Ca;->a(Lcom/smartisanos/launcher/view/Ca;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method
