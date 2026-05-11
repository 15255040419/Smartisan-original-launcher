.class Lcom/smartisanos/launcher/rb;
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
    iput-object p1, p0, Lcom/smartisanos/launcher/rb;->this$0:Lcom/smartisanos/launcher/ub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i(I)V
    .locals 1

    .line 1
    new-instance p1, Lcom/smartisanos/launcher/qb;

    const/16 v0, 0x64

    invoke-direct {p1, p0, v0}, Lcom/smartisanos/launcher/qb;-><init>(Lcom/smartisanos/launcher/rb;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
