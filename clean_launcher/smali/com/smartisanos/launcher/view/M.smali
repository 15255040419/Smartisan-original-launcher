.class Lcom/smartisanos/launcher/view/M;
.super Lcom/smartisanos/smengine/a;
.source "DockView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/view/Lc;->wO:I

    .line 3
    invoke-static {v0}, Lcom/smartisanos/launcher/a/b/i;->aa(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/V;->a(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    new-instance v2, Lcom/smartisanos/smengine/g;

    invoke-direct {v2}, Lcom/smartisanos/smengine/g;-><init>()V

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/V;->b(Lcom/smartisanos/launcher/view/V;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Mh()Lcom/smartisanos/launcher/view/Lc;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/g;

    move-result-object v2

    const v3, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v2, v3, v0}, Lcom/smartisanos/launcher/view/Lc;->a(Lcom/smartisanos/smengine/g;FLjava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/view/L;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/L;-><init>(Lcom/smartisanos/launcher/view/M;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/c;->a(Lcom/smartisanos/smengine/a;)V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/view/M;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/launcher/view/V;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method
