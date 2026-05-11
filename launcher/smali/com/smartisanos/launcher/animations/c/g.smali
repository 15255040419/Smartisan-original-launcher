.class Lcom/smartisanos/launcher/animations/c/g;
.super Lcom/smartisanos/smengine/a;
.source "UnlockAnimationXML.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/animations/c/i;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/c/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/g;->this$1:Lcom/smartisanos/launcher/animations/c/i;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lcom/smartisanos/launcher/view/a/aa;->k(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    check-cast p1, Lcom/smartisanos/launcher/view/a/g;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/a/g;->el()Lcom/smartisanos/launcher/view/a/ga;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/a/ga;->Ri()V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "sn is null, crash!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
