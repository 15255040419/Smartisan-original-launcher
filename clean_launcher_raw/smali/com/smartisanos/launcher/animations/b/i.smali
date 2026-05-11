.class Lcom/smartisanos/launcher/animations/b/i;
.super Lcom/smartisanos/smengine/n;
.source "SwipeAnimController.java"


# instance fields
.field final synthetic HD:Lcom/smartisanos/launcher/animations/db;

.field final synthetic JD:Lcom/smartisanos/launcher/animations/db;

.field final synthetic KD:Lcom/smartisanos/launcher/animations/db;

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/b/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/b/k;ILcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/b/i;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/b/i;->HD:Lcom/smartisanos/launcher/animations/db;

    iput-object p4, p0, Lcom/smartisanos/launcher/animations/b/i;->JD:Lcom/smartisanos/launcher/animations/db;

    iput-object p5, p0, Lcom/smartisanos/launcher/animations/b/i;->KD:Lcom/smartisanos/launcher/animations/db;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/i;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->d(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/animations/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/i;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/i;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/b/k;->c(Lcom/smartisanos/launcher/animations/b/k;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "SWIPE_ANIM"

    const-string v2, "sendUpdateEvent run"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/va;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/b/i;->this$0:Lcom/smartisanos/launcher/animations/b/k;

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/b/i;->HD:Lcom/smartisanos/launcher/animations/db;

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/b/i;->JD:Lcom/smartisanos/launcher/animations/db;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/b/i;->KD:Lcom/smartisanos/launcher/animations/db;

    invoke-static {v0, v1, v2, p0}, Lcom/smartisanos/launcher/animations/b/k;->a(Lcom/smartisanos/launcher/animations/b/k;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;Lcom/smartisanos/launcher/animations/db;)V

    :cond_1
    :goto_0
    return-void
.end method
