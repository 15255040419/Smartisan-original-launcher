.class Lcom/smartisanos/launcher/view/Db;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Laurelienribon/tweenengine/m;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/Eb;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Eb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Db;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILaurelienribon/tweenengine/b;)V
    .locals 0

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/launcher/view/Db;->this$0:Lcom/smartisanos/launcher/view/Eb;

    invoke-static {p1}, Lcom/smartisanos/launcher/view/Eb;->g(Lcom/smartisanos/launcher/view/Eb;)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Db;->this$0:Lcom/smartisanos/launcher/view/Eb;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/view/Eb;->a(Lcom/smartisanos/launcher/view/Eb;Z)Z

    :goto_0
    return-void
.end method
