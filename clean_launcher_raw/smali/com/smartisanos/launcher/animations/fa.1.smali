.class Lcom/smartisanos/launcher/animations/fa;
.super Lcom/smartisanos/smengine/a;
.source "IconSortAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/ma;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/ma;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/fa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method

.method private Tx()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/a/b/i;->a(ILcom/smartisanos/launcher/a/b/j;)Z

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/animations/fa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/fa;->Tx()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/a/b/i;->getInstance()Lcom/smartisanos/launcher/a/b/i;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/a/b/i;->ba(I)Z

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/fa;->this$0:Lcom/smartisanos/launcher/animations/ma;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/ma;->f(Lcom/smartisanos/launcher/animations/ma;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/sa;->U1:Lcom/smartisanos/launcher/ra;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/animations/ea;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/launcher/animations/ea;-><init>(Lcom/smartisanos/launcher/animations/fa;I)V

    const p0, 0x3dcccccd    # 0.1f

    .line 3
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/fa;->Tx()V

    :goto_1
    return-void
.end method
