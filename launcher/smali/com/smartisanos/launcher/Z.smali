.class Lcom/smartisanos/launcher/Z;
.super Landroid/os/Handler;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Z;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/Z;->this$0:Lcom/smartisanos/launcher/ja;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/ja;->a(Lcom/smartisanos/launcher/ja;Z)Z

    :goto_0
    return-void
.end method
