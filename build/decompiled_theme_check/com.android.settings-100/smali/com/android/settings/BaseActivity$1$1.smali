.class Lcom/android/settings/BaseActivity$1$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/BaseActivity$1;


# direct methods
.method constructor <init>(Lcom/android/settings/BaseActivity$1;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/BaseActivity$1$1;->this$1:Lcom/android/settings/BaseActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settings/BaseActivity$1$1;->this$1:Lcom/android/settings/BaseActivity$1;

    iget-object v0, v0, Lcom/android/settings/BaseActivity$1;->this$0:Lcom/android/settings/BaseActivity;

    invoke-virtual {v0}, Lcom/android/settings/BaseActivity;->finish()V

    .line 143
    iget-object p0, p0, Lcom/android/settings/BaseActivity$1$1;->this$1:Lcom/android/settings/BaseActivity$1;

    iget-object p0, p0, Lcom/android/settings/BaseActivity$1;->this$0:Lcom/android/settings/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method
