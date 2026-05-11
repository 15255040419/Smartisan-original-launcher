.class Lcom/smartisanos/launcher/aa;
.super Lcom/smartisanos/smengine/n;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic pj:Ljava/lang/String;

.field final synthetic this$1:Lcom/smartisanos/launcher/ba;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ba;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/aa;->this$1:Lcom/smartisanos/launcher/ba;

    iput-object p3, p0, Lcom/smartisanos/launcher/aa;->pj:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWallpaperChanged changeWallpaperWithAnim  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/aa;->pj:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->lh()V

    const/4 p0, 0x1

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->H(Z)V

    return-void
.end method
