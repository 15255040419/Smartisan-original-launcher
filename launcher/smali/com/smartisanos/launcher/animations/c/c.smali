.class Lcom/smartisanos/launcher/animations/c/c;
.super Lcom/smartisanos/smengine/a;
.source "UnlockAnimationXML.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/animations/c/i;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/c/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/c;->this$1:Lcom/smartisanos/launcher/animations/c/i;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/c/c;->this$1:Lcom/smartisanos/launcher/animations/c/i;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->h(Lcom/smartisanos/launcher/animations/c/k;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/c/c;->this$1:Lcom/smartisanos/launcher/animations/c/i;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/c/i;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/c/k;->h(Lcom/smartisanos/launcher/animations/c/k;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/a/g;

    const v2, 0x8000

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/a/g;->i(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
