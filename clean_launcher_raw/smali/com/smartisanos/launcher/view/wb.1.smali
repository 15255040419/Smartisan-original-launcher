.class Lcom/smartisanos/launcher/view/wb;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nv:Ljava/lang/Object;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/wb;->this$0:Lcom/smartisanos/launcher/view/Eb;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/wb;->nv:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/view/wb;->nv:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/J;->h(Ljava/lang/Object;)V

    return-void
.end method
