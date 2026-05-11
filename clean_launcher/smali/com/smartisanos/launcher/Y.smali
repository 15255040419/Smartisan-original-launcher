.class Lcom/smartisanos/launcher/Y;
.super Landroid/database/ContentObserver;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic Cb:Ljava/lang/String;

.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/Y;->this$0:Lcom/smartisanos/launcher/ja;

    iput-object p3, p0, Lcom/smartisanos/launcher/Y;->Cb:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/launcher/Y;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-static {p1}, Lcom/smartisanos/launcher/ja;->a(Lcom/smartisanos/launcher/ja;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/launcher/Y;->this$0:Lcom/smartisanos/launcher/ja;

    iget-object p0, p0, Lcom/smartisanos/launcher/Y;->Cb:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/ja;->r(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
