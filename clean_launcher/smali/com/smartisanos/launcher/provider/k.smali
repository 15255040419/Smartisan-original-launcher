.class Lcom/smartisanos/launcher/provider/k;
.super Lcom/smartisanos/smengine/n;
.source "ExtraProvider.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/provider/ExtraProvider;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/ExtraProvider;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/k;->this$0:Lcom/smartisanos/launcher/provider/ExtraProvider;

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

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->X(Z)V

    return-void
.end method
