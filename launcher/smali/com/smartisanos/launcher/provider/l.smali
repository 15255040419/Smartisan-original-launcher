.class Lcom/smartisanos/launcher/provider/l;
.super Lcom/smartisanos/smengine/n;
.source "LauncherCallProvider.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/provider/LauncherCallProvider;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/LauncherCallProvider;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/l;->this$0:Lcom/smartisanos/launcher/provider/LauncherCallProvider;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/smengine/n;->run()V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Dh()Z

    .line 5
    sget-boolean p0, Lcom/smartisanos/launcher/view/RootView;->Hd:Z

    if-eqz p0, :cond_3

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/J;->Ta()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-static {v0}, Lcom/smartisanos/launcher/e/e;->Q(Z)V

    :cond_3
    return-void
.end method
