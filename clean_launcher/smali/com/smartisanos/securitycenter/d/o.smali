.class Lcom/smartisanos/securitycenter/d/o;
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
    iput-object p1, p0, Lcom/smartisanos/securitycenter/d/o;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FaceIdVerifier"

    const-string v1, "auth timeout"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/d/o;->this$0:Lcom/smartisanos/securitycenter/d/q;

    const-string v1, "compare fail"

    invoke-virtual {v0, v1}, Lcom/smartisanos/securitycenter/d/q;->ya(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/d/o;->this$0:Lcom/smartisanos/securitycenter/d/q;

    invoke-static {p0}, Lcom/smartisanos/securitycenter/d/q;->c(Lcom/smartisanos/securitycenter/d/q;)I

    return-void
.end method
