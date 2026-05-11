.class Lcom/smartisanos/launcher/animations/I;
.super Lcom/smartisanos/smengine/a;
.source "DockViewAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/U;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/U;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/I;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/I;->this$0:Lcom/smartisanos/launcher/animations/U;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/I;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->zo()V

    return-void
.end method
