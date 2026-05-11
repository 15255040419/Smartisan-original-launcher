.class Lcom/smartisanos/launcher/animations/f;
.super Lcom/smartisanos/smengine/n;
.source "AnimationController.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/r;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/f;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/r;->access$1500()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "#############  Do cell to Folder !! ##############"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
