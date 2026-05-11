.class Lcom/smartisanos/launcher/provider/r;
.super Lcom/smartisanos/launcher/vb;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/SidebarFolderProvider;ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/r;->this$0:Lcom/smartisanos/launcher/provider/SidebarFolderProvider;

    iput-object p3, p0, Lcom/smartisanos/launcher/provider/r;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/vb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public Vc()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/provider/q;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/provider/q;-><init>(Lcom/smartisanos/launcher/provider/r;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
