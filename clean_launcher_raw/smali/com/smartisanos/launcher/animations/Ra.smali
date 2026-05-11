.class Lcom/smartisanos/launcher/animations/Ra;
.super Lcom/smartisanos/smengine/n;
.source "RootViewAnimation.java"


# instance fields
.field final synthetic CD:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/Ra;->CD:Z

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/animations/ab;->access$100()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "workaround ANIMATION_ROOT_VIEW_DOING is true reset this. willShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/smartisanos/launcher/animations/Ra;->CD:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->e(Z)Z

    return-void
.end method
