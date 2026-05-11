.class Lcom/smartisanos/launcher/cb;
.super Lcom/smartisanos/smengine/n;
.source "MenuManager.java"


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/eb;->access$100()Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/eb;->access$400()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/smartisanos/launcher/eb;->u()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, p0, v1, v2, v3}, Lcom/smartisanos/launcher/Qa;->a(Landroid/content/Context;Ljava/util/ArrayList;FFZ)V

    .line 6
    invoke-static {v3}, Lcom/smartisanos/launcher/animations/ab;->G(Z)V

    return-void
.end method
