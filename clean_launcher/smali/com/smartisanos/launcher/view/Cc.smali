.class Lcom/smartisanos/launcher/view/Cc;
.super Lcom/smartisanos/smengine/a;
.source "SettingButton.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/launcher/view/Ec;)Lcom/smartisanos/smengine/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Cc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/launcher/view/Ec;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    sget-object v0, Lcom/smartisanos/launcher/data/Constants;->sResColorForLight:Lcom/smartisanos/smengine/a/k;

    iget v1, v0, Lcom/smartisanos/smengine/a/k;->x:F

    iget v2, v0, Lcom/smartisanos/smengine/a/k;->y:F

    iget v3, v0, Lcom/smartisanos/smengine/a/k;->z:F

    iget v0, v0, Lcom/smartisanos/smengine/a/k;->w:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    :cond_0
    return-void
.end method
