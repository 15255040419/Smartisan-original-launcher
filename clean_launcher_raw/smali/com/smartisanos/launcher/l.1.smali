.class Lcom/smartisanos/launcher/l;
.super Lcom/smartisanos/smengine/n;
.source "ActivityProxy.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/m;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/m;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/l;->this$1:Lcom/smartisanos/launcher/m;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->ca(Z)V

    return-void
.end method
