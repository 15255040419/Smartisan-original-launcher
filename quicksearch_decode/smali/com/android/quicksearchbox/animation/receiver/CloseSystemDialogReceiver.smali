.class public Lcom/android/quicksearchbox/animation/receiver/CloseSystemDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloseSystemDialogReceiver.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/quicksearchbox/animation/receiver/CloseSystemDialogReceiver;

    invoke-static {v0}, Lb/a/a/c1/c;->b(Ljava/lang/Class;)Lb/a/a/c1/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "reason"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, 0x2000000

    if-eqz p2, :cond_2

    .line 5
    invoke-static {v1, v0}, Lcom/android/quicksearchbox/animation/utils/Flags;->b(IZ)V

    .line 6
    invoke-static {}, Lb/a/a/c1/a;->e()V

    goto :goto_0

    :cond_2
    const-string p2, "recentapps"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {v1, v0}, Lcom/android/quicksearchbox/animation/utils/Flags;->b(IZ)V

    .line 9
    invoke-static {}, Lb/a/a/c1/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
