.class Lcom/smartisanos/launcher/view/b/V;
.super Ljava/lang/Object;
.source "PageView.java"

# interfaces
.implements Lcom/smartisanos/smengine/aa;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/b/fa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/V;->this$0:Lcom/smartisanos/launcher/view/b/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 p1, 0x80000

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

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
