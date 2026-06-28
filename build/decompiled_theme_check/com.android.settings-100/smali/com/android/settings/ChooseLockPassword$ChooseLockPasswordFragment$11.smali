.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$11;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->showChooseLockMenuDialog()V
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

    .line 1636
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$11;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1639
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$11;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$700(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1640
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$11;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$702(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;I)I

    goto :goto_0

    .line 1642
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$11;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$702(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;I)I

    .line 1644
    :goto_0
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$11;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    .line 1645
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$11;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$800(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;IZ)V

    .line 1646
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$11;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {p1, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$502(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1647
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$11;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1200(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    return-void
.end method
