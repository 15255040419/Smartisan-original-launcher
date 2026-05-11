.class Lcom/smartisanos/launcher/X;
.super Lcom/smartisanos/smengine/n;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/X;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->ii()V

    return-void
.end method
