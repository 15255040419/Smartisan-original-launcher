.class Lcom/smartisanos/launcher/view/rb;
.super Lcom/smartisanos/smengine/n;
.source "MainView.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/rb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/view/rb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {p0}, Lcom/smartisanos/launcher/view/Eb;->b(Lcom/smartisanos/launcher/view/Eb;)Lcom/smartisanos/launcher/view/b/fa;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/b/fa;->w(Lcom/smartisanos/launcher/view/b/M;)Z

    return-void
.end method
