.class Lcom/smartisanos/launcher/qb;
.super Lcom/smartisanos/smengine/n;
.source "StatusManager.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/rb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/rb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/qb;->this$1:Lcom/smartisanos/launcher/rb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/qb;->this$1:Lcom/smartisanos/launcher/rb;

    iget-object v0, v0, Lcom/smartisanos/launcher/rb;->this$0:Lcom/smartisanos/launcher/ub;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ub;->Qc()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/smartisanos/launcher/qb;->this$1:Lcom/smartisanos/launcher/rb;

    iget-object p0, p0, Lcom/smartisanos/launcher/rb;->this$0:Lcom/smartisanos/launcher/ub;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ub;->Pc()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/z;->Ge()V

    :cond_1
    return-void
.end method
