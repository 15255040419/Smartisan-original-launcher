.class Lcom/smartisanos/launcher/view/Ac;
.super Lcom/smartisanos/smengine/a;
.source "SettingButton.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ac;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/a;->onComplete()V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Ac;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ec;->b(Lcom/smartisanos/launcher/view/Ec;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    return-void
.end method
