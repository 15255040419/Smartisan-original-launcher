.class Lcom/smartisanos/launcher/data/t;
.super Lcom/smartisanos/smengine/n;
.source "DatabaseHandler.java"


# instance fields
.field final synthetic UD:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/data/t;->UD:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/t;->UD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "updateIconWithDoppelgangerApp step 2 update database finish ! begin to update UI"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Ih()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/data/t;->UD:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/fa;->y(Ljava/util/List;)V

    :cond_1
    return-void
.end method
