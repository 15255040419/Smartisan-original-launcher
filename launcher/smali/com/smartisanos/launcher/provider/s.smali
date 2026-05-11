.class Lcom/smartisanos/launcher/provider/s;
.super Lcom/smartisanos/smengine/n;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/provider/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/t;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/s;->this$2:Lcom/smartisanos/launcher/provider/t;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/s;->this$2:Lcom/smartisanos/launcher/provider/t;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/t;->eB:Lcom/smartisanos/launcher/view/a/ka;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ka;->Hm()V

    return-void
.end method
