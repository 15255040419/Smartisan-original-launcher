.class Lcom/smartisanos/launcher/view/ya;
.super Lcom/smartisanos/smengine/a;
.source "DownloadWithWaveView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ya;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/a;->f(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ya;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Uc;->pq()V

    return-void
.end method
