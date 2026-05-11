.class Lcom/smartisanos/launcher/view/a/G;
.super Lcom/smartisanos/smengine/a;
.source "CellAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/X;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/X;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    const/4 v1, 0x1

    const/16 v2, 0x1000

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/a/X;->g(IZ)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object v0

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/G;->this$0:Lcom/smartisanos/launcher/view/a/X;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/a/X;->a(Lcom/smartisanos/launcher/view/a/X;)Lcom/smartisanos/launcher/view/a/g;

    move-result-object p0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->sc:[Lcom/smartisanos/smengine/SceneNode;

    const/16 v0, 0xa

    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setIsEnableBlend(Z)V

    return-void
.end method
