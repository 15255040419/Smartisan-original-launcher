.class Lcom/smartisanos/launcher/_a;
.super Lcom/smartisanos/smengine/n;
.source "MenuManager.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ab;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ab;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/_a;->this$0:Lcom/smartisanos/launcher/ab;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/a/P;

    iget-object p0, p0, Lcom/smartisanos/launcher/_a;->this$0:Lcom/smartisanos/launcher/ab;

    iget-object p0, p0, Lcom/smartisanos/launcher/ab;->Gi:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/a/P;-><init>(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/a/P;->ed()V

    return-void
.end method
