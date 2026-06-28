.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 600
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$900(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 601
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$900(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 604
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object p1

    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne p1, v0, :cond_2

    .line 605
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1000(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 606
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmPlateLock:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$502(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    goto :goto_0

    .line 608
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$502(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 612
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$600(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 614
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 615
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 616
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1200(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1300(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 620
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1400(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v0

    const/4 v2, 0x0

    if-lt p1, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 621
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v3}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v3

    sget-object v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_7

    if-nez p1, :cond_5

    .line 623
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f121234

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 625
    :cond_5
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const v2, 0x7f120b56

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const v4, 0x7f120b4d

    new-array v1, v1, [Ljava/lang/Object;

    .line 626
    invoke-static {v3}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1400(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 625
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1600(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lsmartisanos/widget/SmartisanButton;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 630
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1600(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lsmartisanos/widget/SmartisanButton;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/SmartisanButton;->setEnabled(Z)V

    goto :goto_4

    .line 631
    :cond_8
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1700(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 632
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1700(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_4

    .line 636
    :cond_9
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0, p1, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$800(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;IZ)V

    .line 638
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$700(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 639
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$4;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1800(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
