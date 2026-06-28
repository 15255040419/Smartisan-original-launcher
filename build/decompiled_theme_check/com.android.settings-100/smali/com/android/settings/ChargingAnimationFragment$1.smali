.class Lcom/android/settings/ChargingAnimationFragment$1;
.super Landroid/os/Handler;
.source "ChargingAnimationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChargingAnimationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChargingAnimationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChargingAnimationFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settings/ChargingAnimationFragment$1;->this$0:Lcom/android/settings/ChargingAnimationFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    iget-object p1, p0, Lcom/android/settings/ChargingAnimationFragment$1;->this$0:Lcom/android/settings/ChargingAnimationFragment;

    invoke-static {p1}, Lcom/android/settings/ChargingAnimationFragment;->access$000(Lcom/android/settings/ChargingAnimationFragment;)V

    .line 46
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment$1;->this$0:Lcom/android/settings/ChargingAnimationFragment;

    invoke-static {p0}, Lcom/android/settings/ChargingAnimationFragment;->access$100(Lcom/android/settings/ChargingAnimationFragment;)Lcom/android/settings/widget/VideoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPlayerView;->start()V

    return-void
.end method
