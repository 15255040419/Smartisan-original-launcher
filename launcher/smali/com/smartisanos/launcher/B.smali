.class Lcom/smartisanos/launcher/B;
.super Ljava/lang/Object;
.source "ActivityProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Qf:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/J;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/B;->this$0:Lcom/smartisanos/launcher/J;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/B;->Qf:Z

    iput-object p3, p0, Lcom/smartisanos/launcher/B;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/B;->this$0:Lcom/smartisanos/launcher/J;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/B;->Qf:Z

    iget-object p0, p0, Lcom/smartisanos/launcher/B;->val$info:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/launcher/J;->b(ZLjava/lang/String;)V

    return-void
.end method
