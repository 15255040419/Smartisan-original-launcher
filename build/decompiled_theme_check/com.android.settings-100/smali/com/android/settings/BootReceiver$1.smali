.class Lcom/android/settings/BootReceiver$1;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BootReceiver;->resetCleanProcessTime(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BootReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/BootReceiver;Landroid/content/Context;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/settings/BootReceiver$1;->this$0:Lcom/android/settings/BootReceiver;

    iput-object p2, p0, Lcom/android/settings/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 195
    iget-object p0, p0, Lcom/android/settings/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p0

    const-string v0, "last_clean_processes_time"

    const-wide/16 v1, 0x0

    .line 196
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/PreferenceMgr;->putLong(Ljava/lang/String;J)V

    return-void
.end method
