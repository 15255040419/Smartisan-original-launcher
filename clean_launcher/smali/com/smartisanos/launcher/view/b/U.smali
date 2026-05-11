.class Lcom/smartisanos/launcher/view/b/U;
.super Lcom/smartisanos/smengine/a;
.source "PageView.java"


# instance fields
.field final synthetic DB:Lcom/smartisanos/smengine/a;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/fa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/fa;Lcom/smartisanos/smengine/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/U;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/U;->DB:Lcom/smartisanos/smengine/a;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Fj()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/U;->DB:Lcom/smartisanos/smengine/a;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->Fj()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/U;->DB:Lcom/smartisanos/smengine/a;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/U;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->PQ:Lcom/smartisanos/launcher/view/b/ea;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/ea;->onComplete()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/U;->DB:Lcom/smartisanos/smengine/a;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/a;->onStart()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/U;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/fa;->PQ:Lcom/smartisanos/launcher/view/b/ea;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->onStart()V

    return-void
.end method
