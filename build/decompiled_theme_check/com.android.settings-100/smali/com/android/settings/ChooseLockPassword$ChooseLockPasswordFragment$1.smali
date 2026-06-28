.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;
.super Landroid/os/Handler;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
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

    .line 315
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 320
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$000(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 321
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 322
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    goto/16 :goto_0

    .line 324
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto/16 :goto_0

    .line 328
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 329
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$202(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->saveApplicationsLockPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$302(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    .line 333
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 334
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    goto :goto_0

    .line 336
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 337
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$400(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    goto :goto_0

    .line 338
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 339
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 340
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    goto :goto_0

    .line 341
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 342
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 343
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 344
    :cond_5
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 345
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 346
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_6
    :goto_0
    return-void
.end method
