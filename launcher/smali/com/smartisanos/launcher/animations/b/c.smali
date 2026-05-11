.class Lcom/smartisanos/launcher/animations/b/c;
.super Lcom/smartisanos/smengine/n;
.source "SwipeAnimController.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/animations/b/d;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/b/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/c;->this$1:Lcom/smartisanos/launcher/animations/b/d;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/c;->this$1:Lcom/smartisanos/launcher/animations/b/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/smengine/n;)Lcom/smartisanos/smengine/n;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/c;->this$1:Lcom/smartisanos/launcher/animations/b/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->c(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "SWIPE_ANIM"

    const-string v2, "timeOut event Run"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/va;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/c;->this$1:Lcom/smartisanos/launcher/animations/b/d;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/d;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/b/k;->e(Lcom/smartisanos/launcher/animations/b/k;Z)V

    return-void
.end method
