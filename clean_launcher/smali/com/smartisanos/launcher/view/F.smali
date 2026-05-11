.class Lcom/smartisanos/launcher/view/F;
.super Ljava/lang/Object;
.source "DockView.java"

# interfaces
.implements Lcom/smartisanos/smengine/aa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/V;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/V;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/F;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/F;->this$0:Lcom/smartisanos/launcher/view/V;

    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/V;->f(Lcom/smartisanos/launcher/a/b/i;)Z

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Lcom/smartisanos/launcher/animations/ab;->G(Z)V

    return-void
.end method
