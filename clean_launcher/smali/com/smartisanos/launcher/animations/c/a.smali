.class Lcom/smartisanos/launcher/animations/c/a;
.super Lcom/smartisanos/smengine/a;
.source "UnlockAnimationXML.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/c/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/c/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/c/a;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/c/a;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;Lcom/smartisanos/smengine/g;)Lcom/smartisanos/smengine/g;

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/c/a;->this$0:Lcom/smartisanos/launcher/animations/c/k;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/animations/c/k;->a(Lcom/smartisanos/launcher/animations/c/k;Z)Z

    return-void
.end method
