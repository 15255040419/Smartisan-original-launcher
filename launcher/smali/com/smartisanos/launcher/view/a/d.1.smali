.class Lcom/smartisanos/launcher/view/a/d;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Lcom/smartisanos/smengine/ga;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/d;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/va;Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 1

    # This listener only belongs to a real desktop Cell.  Mark it before the
    # asynchronous SMEngine input dispatcher evaluates a pull-down candidate.
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/smartisanos/launcher/gesture/SystemPanelCompat;->setInteractionBlocked(Z)V

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/d/i;->Of()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/smartisanos/launcher/view/a/d;->this$0:Lcom/smartisanos/launcher/view/a/g;

    iget-object p2, p2, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smartisanos/smengine/Ra;->dt()Lcom/smartisanos/smengine/v;

    move-result-object p2

    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/d;->this$0:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {p2, v0}, Lcom/smartisanos/smengine/v;->m(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 3
    new-instance p2, Lcom/smartisanos/launcher/view/a/c;

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/launcher/view/a/c;-><init>(Lcom/smartisanos/launcher/view/a/d;Lcom/smartisanos/smengine/va;)V

    invoke-static {p2}, Lcom/smartisanos/launcher/Sa;->post(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
