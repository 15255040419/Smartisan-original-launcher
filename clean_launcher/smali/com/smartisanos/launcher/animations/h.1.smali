.class Lcom/smartisanos/launcher/animations/h;
.super Lcom/smartisanos/smengine/n;
.source "AnimationController.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/r;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/h;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/h;->this$0:Lcom/smartisanos/launcher/animations/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/animations/r;I)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/h;->this$0:Lcom/smartisanos/launcher/animations/r;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    return-void
.end method
