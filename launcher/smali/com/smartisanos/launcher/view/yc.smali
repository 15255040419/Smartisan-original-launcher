.class Lcom/smartisanos/launcher/view/yc;
.super Lcom/smartisanos/smengine/a;
.source "SettingButton.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/yc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->tb(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/yc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/smartisanos/launcher/view/Ec;->iO:Z

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/launcher/view/Ec;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/yc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Ec;->b(Lcom/smartisanos/launcher/view/Ec;Z)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/launcher/view/yc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/launcher/view/Ec;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    const-string v0, "***settingbuttondown***"

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v0, 0x4000

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const v0, 0x8000

    invoke-virtual {p0, v0, v2}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/V;->tb(Z)V

    return-void
.end method
