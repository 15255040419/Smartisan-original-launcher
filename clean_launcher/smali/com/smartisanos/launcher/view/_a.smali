.class public Lcom/smartisanos/launcher/view/_a;
.super Ljava/lang/Object;
.source "FloatPageNode.java"

# interfaces
.implements Lcom/smartisanos/smengine/fa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/bb;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/bb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/_a;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lcom/smartisanos/smengine/Fa;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/_a;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->b(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/M;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/b/M;->j(Lcom/smartisanos/smengine/Fa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/_a;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->g(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/_a;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->g(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/a/g;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/_a;->this$0:Lcom/smartisanos/launcher/view/bb;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    return-void

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/view/_a;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/bb;->Fp()V

    return-void
.end method
