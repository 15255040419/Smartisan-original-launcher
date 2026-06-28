.class Lcom/android/settings/AirplaneModeEnablerEx$1;
.super Landroid/os/Handler;
.source "AirplaneModeEnablerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnablerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnablerEx;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnablerEx;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnablerEx$1;->this$0:Lcom/android/settings/AirplaneModeEnablerEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 50
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/settings/AirplaneModeEnablerEx$1;->this$0:Lcom/android/settings/AirplaneModeEnablerEx;

    invoke-static {p1}, Lcom/android/settings/AirplaneModeEnablerEx;->access$000(Lcom/android/settings/AirplaneModeEnablerEx;)V

    .line 53
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnablerEx$1;->this$0:Lcom/android/settings/AirplaneModeEnablerEx;

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnablerEx;->access$100(Lcom/android/settings/AirplaneModeEnablerEx;)Landroid/database/ContentObserver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :goto_0
    return-void
.end method
