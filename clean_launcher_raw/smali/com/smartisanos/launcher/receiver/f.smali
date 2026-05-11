.class Lcom/smartisanos/launcher/receiver/f;
.super Lcom/smartisanos/smengine/n;
.source "DataDumpReceiver.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/f;->this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ea;->Js()V

    return-void
.end method
