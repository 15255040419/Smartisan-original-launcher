.class Lcom/smartisanos/launcher/sb;
.super Ljava/lang/Object;
.source "StatusManager.java"

# interfaces
.implements Lcom/smartisanos/launcher/tb;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ub;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/sb;->this$0:Lcom/smartisanos/launcher/ub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->Dh()Z

    :cond_0
    return-void
.end method
