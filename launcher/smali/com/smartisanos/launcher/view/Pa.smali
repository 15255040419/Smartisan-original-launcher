.class Lcom/smartisanos/launcher/view/Pa;
.super Ljava/lang/Object;
.source "EditTitleDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mv:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/Qa;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/Qa;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Pa;->this$0:Lcom/smartisanos/launcher/view/Qa;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Pa;->mv:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Pa;->mv:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Pa;->mv:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4
    iget-object p0, p0, Lcom/smartisanos/launcher/view/Pa;->mv:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
