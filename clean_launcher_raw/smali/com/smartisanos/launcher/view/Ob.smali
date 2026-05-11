.class Lcom/smartisanos/launcher/view/Ob;
.super Lcom/smartisanos/smengine/a;
.source "MultiSelectCreateFolderDialog.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/view/Pb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Pb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Ob;->this$1:Lcom/smartisanos/launcher/view/Pb;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/Eb;->ba(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p0

    const/high16 v1, 0x4000000

    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/ub;->e(IZ)V

    .line 3
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->gi()V

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->hi()V

    return-void
.end method
