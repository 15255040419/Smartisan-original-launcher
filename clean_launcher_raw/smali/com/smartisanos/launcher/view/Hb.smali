.class Lcom/smartisanos/launcher/view/Hb;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectCreateFolderDialog.java"


# instance fields
.field final synthetic HA:Lcom/smartisanos/launcher/view/a/g;

.field final synthetic Xj:Lcom/smartisanos/launcher/view/Ib;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Ib;Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Hb;->Xj:Lcom/smartisanos/launcher/view/Ib;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Hb;->HA:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Hb;->HA:Lcom/smartisanos/launcher/view/a/g;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/a/g;->cb(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Gh()Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/b/fa;->Eq()V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    return-void
.end method
