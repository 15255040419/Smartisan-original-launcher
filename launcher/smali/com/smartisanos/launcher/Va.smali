.class Lcom/smartisanos/launcher/Va;
.super Lcom/smartisanos/smengine/n;
.source "MenuManager.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/Wa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/Wa;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Va;->this$0:Lcom/smartisanos/launcher/Wa;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Nh()V

    return-void
.end method
