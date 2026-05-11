.class Lcom/smartisanos/securitycenter/d/n;
.super Ljava/lang/Object;
.source "FaceIdVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/d/q;


# direct methods
.method constructor <init>(Lcom/smartisanos/securitycenter/d/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/n;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/n;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FaceIdVerifier"

    const-string v1, "auth start retrying"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/smartisanos/securitycenter/a/g;->getInstance()Lcom/smartisanos/securitycenter/a/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/a/g;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/n;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/n;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/d/q;->f(Lcom/smartisanos/securitycenter/d/q;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
