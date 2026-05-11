.class Lcom/smartisanos/launcher/a/p;
.super Lcom/smartisanos/smengine/n;
.source "ColorThemeChanged.java"


# instance fields
.field final synthetic rj:Lcom/smartisanos/launcher/theme/v;


# direct methods
.method constructor <init>(ILcom/smartisanos/launcher/theme/v;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/a/p;->rj:Lcom/smartisanos/launcher/theme/v;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->bg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Tf()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->ei()V

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/b/fa;->vm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/a/r;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v1, "current page mode is multi page mode, can\'t change theme, so return"

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Tf()V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Wh()V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Eb;->Xh()V

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/t;->Yf()V

    .line 12
    iget-object p0, p0, Lcom/smartisanos/launcher/a/p;->rj:Lcom/smartisanos/launcher/theme/v;

    invoke-static {p0}, Lcom/smartisanos/launcher/a/r;->a(Lcom/smartisanos/launcher/theme/v;)V

    return-void
.end method
