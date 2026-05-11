.class Lcom/smartisanos/launcher/view/Bb;
.super Lcom/smartisanos/smengine/a;
.source "MainView.java"


# instance fields
.field final synthetic oB:Lcom/smartisanos/smengine/F;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;Lcom/smartisanos/smengine/F;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Bb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Bb;->oB:Lcom/smartisanos/smengine/F;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Bb;->oB:Lcom/smartisanos/smengine/F;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
