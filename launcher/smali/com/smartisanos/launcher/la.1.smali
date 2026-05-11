.class Lcom/smartisanos/launcher/la;
.super Ljava/lang/Object;
.source "ConfirmPasswordActivity.java"

# interfaces
.implements Lcom/smartisanos/securitycenter/b/g;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/la;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/la;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->a(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V

    return-void
.end method

.method public c(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/la;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/ConfirmPasswordActivity;->b(Lcom/smartisanos/launcher/ConfirmPasswordActivity;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
