.class Lcom/smartisanos/launcher/view/a/c;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/a/d;

.field final synthetic wy:Lcom/smartisanos/smengine/va;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/d;Lcom/smartisanos/smengine/va;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/c;->this$1:Lcom/smartisanos/launcher/view/a/d;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/a/c;->wy:Lcom/smartisanos/smengine/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/c;->this$1:Lcom/smartisanos/launcher/view/a/d;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/d;->this$0:Lcom/smartisanos/launcher/view/a/g;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-static {v1, v2, v0}, Lcom/smartisanos/launcher/d/h;->c(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/a/c;->wy:Lcom/smartisanos/smengine/va;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/va;->getX()F

    move-result v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/c;->wy:Lcom/smartisanos/smengine/va;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/va;->getY()F

    move-result p0

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/d/h;->actionDown(FF)V

    return-void
.end method
