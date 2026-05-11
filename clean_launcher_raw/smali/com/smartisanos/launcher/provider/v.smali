.class Lcom/smartisanos/launcher/provider/v;
.super Lcom/smartisanos/smengine/a;
.source "SidebarFolderProvider.java"


# instance fields
.field final synthetic this$2:Lcom/smartisanos/launcher/provider/w;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/provider/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/provider/v;->this$2:Lcom/smartisanos/launcher/provider/w;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/provider/v;->this$2:Lcom/smartisanos/launcher/provider/w;

    iget-object p0, p0, Lcom/smartisanos/launcher/provider/w;->_D:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->clear(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    return-void
.end method
