.class public Lb/a/a/c1/e;
.super Ljava/lang/Object;
.source "ReceiverManager.java"


# static fields
.field public static a:Lcom/android/quicksearchbox/animation/receiver/CloseSystemDialogReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/quicksearchbox/animation/receiver/CloseSystemDialogReceiver;

    invoke-direct {v0}, Lcom/android/quicksearchbox/animation/receiver/CloseSystemDialogReceiver;-><init>()V

    sput-object v0, Lb/a/a/c1/e;->a:Lcom/android/quicksearchbox/animation/receiver/CloseSystemDialogReceiver;

    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v0

    sget-object v1, Lb/a/a/c1/e;->a:Lcom/android/quicksearchbox/animation/receiver/CloseSystemDialogReceiver;

    invoke-static {}, Lcom/android/quicksearchbox/animation/receiver/CloseSystemDialogReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v0

    sget-object v1, Lb/a/a/c1/e;->a:Lcom/android/quicksearchbox/animation/receiver/CloseSystemDialogReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
