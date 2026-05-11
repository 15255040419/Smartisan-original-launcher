.class Lcom/smartisanos/launcher/x;
.super Ljava/lang/Object;
.source "ActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/x;->this$0:Lcom/smartisanos/launcher/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/x;->this$0:Lcom/smartisanos/launcher/J;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/J;->a(Lcom/smartisanos/launcher/J;Z)Z

    return-void
.end method
