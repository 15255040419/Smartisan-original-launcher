.class Lcom/smartisanos/launcher/view/xc;
.super Lcom/smartisanos/smengine/a;
.source "SettingButton.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Ec;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/xc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->tb(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Eb;->zh()Lcom/smartisanos/launcher/view/V;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/V;->ub(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/xc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/Ec;->iO:Z

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/launcher/view/Ec;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/xc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Ec;->b(Lcom/smartisanos/launcher/view/Ec;Z)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/view/xc;->this$0:Lcom/smartisanos/launcher/view/Ec;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Ec;->a(Lcom/smartisanos/launcher/view/Ec;)Lcom/smartisanos/smengine/F;

    move-result-object p0

    const-string v0, "***settingbuttonup***"

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/F;->setImageName(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->pg()V

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 9
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/16 v0, 0x4000

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 11
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const v0, 0x8000

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/ub;->e(IZ)V

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
