.class Lcom/smartisanos/launcher/animations/N;
.super Lcom/smartisanos/smengine/a;
.source "DockViewAnimation.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/animations/U;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/animations/U;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/N;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-direct {p0}, Lcom/smartisanos/smengine/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/animations/N;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {p1}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/V;->ip()V

    .line 2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/smartisanos/launcher/animations/N;->this$0:Lcom/smartisanos/launcher/animations/U;

    invoke-static {p0}, Lcom/smartisanos/launcher/animations/U;->a(Lcom/smartisanos/launcher/animations/U;)Lcom/smartisanos/launcher/view/V;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/V;->fp()V

    :cond_0
    return-void
.end method
