.class Lcom/smartisanos/launcher/view/a/oa;
.super Lcom/smartisanos/smengine/a;
.source "ThemeCubeCells.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/pa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/pa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/oa;->this$0:Lcom/smartisanos/launcher/view/a/pa;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/oa;->this$0:Lcom/smartisanos/launcher/view/a/pa;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/pa;->b(Lcom/smartisanos/launcher/view/a/pa;)[Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/oa;->this$0:Lcom/smartisanos/launcher/view/a/pa;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/pa;->b(Lcom/smartisanos/launcher/view/a/pa;)[Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/oa;->this$0:Lcom/smartisanos/launcher/view/a/pa;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/pa;->a(Lcom/smartisanos/launcher/view/a/pa;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/ga;->ka(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/oa;->this$0:Lcom/smartisanos/launcher/view/a/pa;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/pa;->b(Lcom/smartisanos/launcher/view/a/pa;)[Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/oa;->this$0:Lcom/smartisanos/launcher/view/a/pa;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/pa;->b(Lcom/smartisanos/launcher/view/a/pa;)[Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    const/4 v0, 0x2

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
