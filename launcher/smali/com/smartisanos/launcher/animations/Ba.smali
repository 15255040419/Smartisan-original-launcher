.class Lcom/smartisanos/launcher/animations/Ba;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectFadeinFadeoutAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Ea;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/Ea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ba;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ba;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/animations/Ea;->Dn:Z

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Ea;->a(Lcom/smartisanos/launcher/animations/Ea;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    .line 4
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/b/M;->Zn()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Ba;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/Ea;->b(Lcom/smartisanos/launcher/animations/Ea;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/animations/r;->B(Z)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ba;->this$0:Lcom/smartisanos/launcher/animations/Ea;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/Ea;->a(Lcom/smartisanos/launcher/animations/Ea;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
