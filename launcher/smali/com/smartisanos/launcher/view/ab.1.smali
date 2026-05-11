.class public Lcom/smartisanos/launcher/view/ab;
.super Ljava/lang/Object;
.source "FloatPageNode.java"

# interfaces
.implements Lcom/smartisanos/smengine/ha;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/bb;


# direct methods
.method public constructor <init>(Lcom/smartisanos/launcher/view/bb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/ab;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/Fa;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ab;->this$0:Lcom/smartisanos/launcher/view/bb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;Lcom/smartisanos/launcher/view/a/g;)Lcom/smartisanos/launcher/view/a/g;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ab;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ab;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->c(Lcom/smartisanos/launcher/view/bb;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ab;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/bb;->d(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Ij()V

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/ab;->this$0:Lcom/smartisanos/launcher/view/bb;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/bb;->a(Lcom/smartisanos/launcher/view/bb;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Ro()Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/a/g;->onTouchEvent(Lcom/smartisanos/smengine/Fa;)Z

    return-void
.end method

.method public d(Lcom/smartisanos/smengine/Fa;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/smartisanos/smengine/Fa;)V
    .locals 0

    return-void
.end method
