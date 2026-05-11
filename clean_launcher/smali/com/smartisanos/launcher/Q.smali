.class Lcom/smartisanos/launcher/Q;
.super Ljava/lang/Object;
.source "ApplicationProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/S;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/S;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Q;->this$1:Lcom/smartisanos/launcher/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/activeicon/m;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Eb;->sa(Ljava/lang/String;)Lcom/smartisanos/launcher/view/activeicon/a;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/activeicon/m;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->ab()V

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/activeicon/m;->wq()V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/Q;->this$1:Lcom/smartisanos/launcher/S;

    iget-object p0, p0, Lcom/smartisanos/launcher/S;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->db()V

    :cond_0
    return-void
.end method
