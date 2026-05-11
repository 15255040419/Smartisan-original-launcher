.class Lcom/smartisanos/launcher/animations/c/h;
.super Lcom/smartisanos/smengine/a;
.source "UnlockAnimationXML.java"


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/animations/c/i;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/c/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/h;->this$1:Lcom/smartisanos/launcher/animations/c/i;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/h;->this$1:Lcom/smartisanos/launcher/animations/c/i;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/c/i;->a(Lcom/smartisanos/launcher/animations/c/i;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    return-void
.end method
