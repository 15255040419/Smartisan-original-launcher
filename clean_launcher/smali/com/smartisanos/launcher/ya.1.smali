.class Lcom/smartisanos/launcher/ya;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/za;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/za;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ya;->this$0:Lcom/smartisanos/launcher/za;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/data/T;->MMS:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/ya;->this$0:Lcom/smartisanos/launcher/za;

    iget-object v1, v1, Lcom/smartisanos/launcher/za;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/Aa;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMessageCount MMS messageCountFinal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/ya;->this$0:Lcom/smartisanos/launcher/za;

    iget v2, v2, Lcom/smartisanos/launcher/za;->sD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/launcher/ya;->this$0:Lcom/smartisanos/launcher/za;

    iget v2, v2, Lcom/smartisanos/launcher/za;->qi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/ya;->this$0:Lcom/smartisanos/launcher/za;

    iget-object v0, p0, Lcom/smartisanos/launcher/za;->val$pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/za;->rD:Ljava/lang/String;

    iget v2, p0, Lcom/smartisanos/launcher/za;->sD:I

    iget p0, p0, Lcom/smartisanos/launcher/za;->qi:I

    invoke-static {v0, v1, v2, p0}, Lcom/smartisanos/launcher/Aa;->b(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
