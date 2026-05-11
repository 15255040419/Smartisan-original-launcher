.class Lcom/smartisanos/launcher/Ta;
.super Lcom/smartisanos/smengine/n;
.source "MenuManager.java"


# instance fields
.field final synthetic Ei:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method constructor <init>(ILcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/smartisanos/launcher/Ta;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/Ta;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/a/g;->Rl()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->j(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/a/oa;

    invoke-direct {v0}, Lcom/smartisanos/launcher/a/oa;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/Ta;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/a/oa;->c(Lcom/smartisanos/launcher/view/a/g;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/Ta;->Ei:Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/g;->Wm()V

    :goto_0
    return-void
.end method
