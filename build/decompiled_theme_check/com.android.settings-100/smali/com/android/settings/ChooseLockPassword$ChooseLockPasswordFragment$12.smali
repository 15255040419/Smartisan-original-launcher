.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$12;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 1654
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$12;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1657
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$12;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$4102(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Lsmartisanos/app/MenuDialog;)Lsmartisanos/app/MenuDialog;

    return-void
.end method
