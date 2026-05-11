.class Lcom/smartisanos/launcher/animations/Y;
.super Lcom/smartisanos/smengine/n;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic VA:Z

.field final synthetic this$1:Lcom/smartisanos/launcher/animations/aa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/aa;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iput-boolean p3, p0, Lcom/smartisanos/launcher/animations/Y;->VA:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->g(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->g(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/ma;->e(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/ma;->a(Lcom/smartisanos/launcher/animations/ma;Z)Lcom/smartisanos/smengine/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/ma;->e(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->g(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/animations/X;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/X;-><init>(Lcom/smartisanos/launcher/animations/Y;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/ma;->g(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->start()V

    .line 7
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/Y;->VA:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz v0, :cond_2

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Y;->this$1:Lcom/smartisanos/launcher/animations/aa;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/aa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ma;->g(Lcom/smartisanos/launcher/animations/ma;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->Ij()V

    :cond_2
    return-void
.end method
