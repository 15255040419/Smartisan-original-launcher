.class Lcom/smartisanos/launcher/ka;
.super Ljava/lang/Object;
.source "ConfirmPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Gh:Z

.field final synthetic this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ConfirmPasswordActivity;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ka;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/ka;->Gh:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/ka;->this$0:Lcom/smartisanos/launcher/ConfirmPasswordActivity;

    iget-boolean v1, p0, Lcom/smartisanos/launcher/ka;->Gh:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    sget v2, Lcom/smartisanos/launcher/ob;->title_button_text_back:I

    iget-boolean p0, p0, Lcom/smartisanos/launcher/ka;->Gh:Z

    invoke-static {v0, v1, v2, p0}, Lcom/smartisanos/launcher/a/I;->a(Landroid/content/Context;IIZ)V

    return-void
.end method
