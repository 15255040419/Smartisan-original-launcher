.class Lcom/smartisanos/launcher/animations/i;
.super Lcom/smartisanos/smengine/a;
.source "AnimationController.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/r;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/i;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Fj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/i;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->i(Lcom/smartisanos/launcher/animations/r;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/i;->this$0:Lcom/smartisanos/launcher/animations/r;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/animations/r;->xl:Z

    .line 3
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/animations/r;Z)Z

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/i;->this$0:Lcom/smartisanos/launcher/animations/r;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/i;->this$0:Lcom/smartisanos/launcher/animations/r;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/r;->i(Lcom/smartisanos/launcher/animations/r;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/i;->this$0:Lcom/smartisanos/launcher/animations/r;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/animations/r;->xl:Z

    .line 4
    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/animations/r;Z)Z

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/i;->this$0:Lcom/smartisanos/launcher/animations/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/r;->a(Lcom/smartisanos/launcher/animations/r;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/i;->this$0:Lcom/smartisanos/launcher/animations/r;

    iget-object v0, p0, Lcom/smartisanos/launcher/animations/r;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/r;->j(Lcom/smartisanos/launcher/animations/r;)I

    move-result p0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, p0, v1}, Lcom/smartisanos/launcher/view/b/fa;->f(IF)V

    return-void
.end method
