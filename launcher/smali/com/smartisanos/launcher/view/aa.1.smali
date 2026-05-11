.class Lcom/smartisanos/launcher/view/aa;
.super Lcom/smartisanos/smengine/a;
.source "DownloadWithWaveView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ca;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ca;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/aa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/SceneNode;I[F)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/smartisanos/smengine/a;->b(Lcom/smartisanos/smengine/SceneNode;I[F)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/aa;->this$0:Lcom/smartisanos/launcher/view/Ca;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ca;->pL:Lcom/smartisanos/launcher/view/Uc;

    iget-object p1, p0, Lcom/smartisanos/launcher/view/Uc;->dP:[Lcom/smartisanos/launcher/view/Tc;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget p2, p1, Lcom/smartisanos/launcher/view/Tc;->qy:F

    const p3, 0x3e17e9d9

    add-float/2addr p2, p3

    iput p2, p1, Lcom/smartisanos/launcher/view/Tc;->qy:F

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Uc;->pq()V

    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onStart()V

    return-void
.end method
