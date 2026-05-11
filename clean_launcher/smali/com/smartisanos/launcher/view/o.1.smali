.class Lcom/smartisanos/launcher/view/o;
.super Lcom/smartisanos/smengine/a;
.source "CellStatusForPage.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/p;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/o;->this$1:Lcom/smartisanos/launcher/view/p;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/launcher/view/n;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/view/n;-><init>(Lcom/smartisanos/launcher/view/o;I)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    return-void
.end method
