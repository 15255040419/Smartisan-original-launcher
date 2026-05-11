.class Lcom/smartisanos/launcher/animations/Ya;
.super Lcom/smartisanos/smengine/n;
.source "RootViewAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Za;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/Za;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Ya;->this$0:Lcom/smartisanos/launcher/animations/Za;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Ya;->this$0:Lcom/smartisanos/launcher/animations/Za;

    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Za;->bB:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->pr()Lcom/smartisanos/launcher/animations/Qa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/Qa;->Sd()V

    const/4 p0, 0x0

    .line 2
    sput-boolean p0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_SWITCH_TO_SINGLE:Z

    return-void
.end method
