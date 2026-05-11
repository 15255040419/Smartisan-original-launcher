.class Lcom/smartisanos/launcher/provider/j;
.super Lcom/smartisanos/smengine/n;
.source "ExtraProvider.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/provider/ExtraProvider;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/ExtraProvider;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/j;->this$0:Lcom/smartisanos/launcher/provider/ExtraProvider;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Rh()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/provider/ExtraProvider;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "call Launchpad password success when launchpad startup"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->Cc()V

    :cond_1
    return-void
.end method
