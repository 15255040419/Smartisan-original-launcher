.class Lcom/smartisanos/launcher/animations/B;
.super Lcom/smartisanos/smengine/a;
.source "CellUninstallAnimation.java"


# instance fields
.field final synthetic MA:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic OA:F

.field final synthetic this$0:Lcom/smartisanos/launcher/animations/G;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/launcher/view/a/g;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/B;->this$0:Lcom/smartisanos/launcher/animations/G;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/B;->MA:Lcom/smartisanos/launcher/view/a/g;

    iput p3, p0, Lcom/smartisanos/launcher/animations/B;->OA:F

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/B;->MA:Lcom/smartisanos/launcher/view/a/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/B;->this$0:Lcom/smartisanos/launcher/animations/G;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/G;->d(Lcom/smartisanos/launcher/animations/G;)Lcom/smartisanos/smengine/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/g;->Kj()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/B;->this$0:Lcom/smartisanos/launcher/animations/G;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/G;->b(Lcom/smartisanos/launcher/animations/G;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/B;->this$0:Lcom/smartisanos/launcher/animations/G;

    sget-object v1, Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;->XY:Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;

    iget p0, p0, Lcom/smartisanos/launcher/animations/B;->OA:F

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/launcher/animations/G;->a(Lcom/smartisanos/launcher/animations/CellUninstallAnimation$CELL_ANIMATION;F)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/B;->MA:Lcom/smartisanos/launcher/view/a/g;

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->mb(I)V

    :cond_0
    return-void
.end method
