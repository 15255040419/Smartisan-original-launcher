.class Lcom/smartisanos/launcher/animations/Na;
.super Lcom/smartisanos/smengine/n;
.source "PageViewAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/Qa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/Qa;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/Na;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/Na;->this$0:Lcom/smartisanos/launcher/animations/Qa;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/Qa;->b(Lcom/smartisanos/launcher/animations/Qa;)Lcom/smartisanos/smengine/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/g;->start()V

    return-void
.end method
