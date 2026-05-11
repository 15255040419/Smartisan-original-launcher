.class Lcom/smartisanos/launcher/view/m;
.super Ljava/lang/Object;
.source "CellStatusForPage.java"

# interfaces
.implements Lcom/smartisanos/smengine/ha;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/v;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/m;->this$0:Lcom/smartisanos/launcher/view/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/Fa;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Sq()Lcom/smartisanos/launcher/animations/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/r;->Kd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/v;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "## Poweroff first!!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->info(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/m;->this$0:Lcom/smartisanos/launcher/view/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/d;->Ju:Z

    .line 5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Fa;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/launcher/view/d;->h(FF)V

    return-void
.end method

.method public d(Lcom/smartisanos/smengine/Fa;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/smartisanos/smengine/Fa;)V
    .locals 0

    return-void
.end method
