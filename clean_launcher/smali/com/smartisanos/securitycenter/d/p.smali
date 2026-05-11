.class Lcom/smartisanos/securitycenter/d/p;
.super Lcom/smartisanos/securitycenter/b/b;
.source "FaceIdVerifier.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/securitycenter/d/q;


# direct methods
.method private constructor <init>(Lcom/smartisanos/securitycenter/d/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/b/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/securitycenter/d/q;Lcom/smartisanos/securitycenter/d/n;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/securitycenter/d/p;-><init>(Lcom/smartisanos/securitycenter/d/q;)V

    return-void
.end method


# virtual methods
.method public synthetic F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->b(Lcom/smartisanos/securitycenter/d/q;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FaceIdVerifier"

    const-string v1, "state succeeded"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;I)I

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->d(Lcom/smartisanos/securitycenter/d/q;)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/d/l;->sj()V

    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FaceIdVerifier"

    const-string v1, "state start"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    new-instance v1, Lcom/smartisanos/securitycenter/d/h;

    invoke-direct {v1, p0}, Lcom/smartisanos/securitycenter/d/h;-><init>(Lcom/smartisanos/securitycenter/d/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic a(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->b(Lcom/smartisanos/securitycenter/d/q;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v1, "FaceIdVerifier"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera lost: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    const-string p1, "Camera unavailable"

    invoke-virtual {p0, p1}, Lcom/smartisanos/securitycenter/d/l;->za(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;Z)Z

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {p1}, Lcom/smartisanos/securitycenter/d/q;->e(Lcom/smartisanos/securitycenter/d/q;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "state timeout failed"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    const-string p2, "compare fail"

    invoke-virtual {p1, p2}, Lcom/smartisanos/securitycenter/d/q;->ya(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/d/q;->c(Lcom/smartisanos/securitycenter/d/q;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/securitycenter/d/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/smartisanos/securitycenter/d/e;-><init>(Lcom/smartisanos/securitycenter/d/p;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationSucceeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/p;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {v0}, Lcom/smartisanos/securitycenter/d/q;->a(Lcom/smartisanos/securitycenter/d/q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/securitycenter/d/f;

    invoke-direct {v1, p0}, Lcom/smartisanos/securitycenter/d/f;-><init>(Lcom/smartisanos/securitycenter/d/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
