.class Lcom/android/settings/wifi/SoftApControllerFragment$Updater;
.super Landroid/os/Handler;
.source "SoftApControllerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SoftApControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Updater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SoftApControllerFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/SoftApControllerFragment;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/SoftApControllerFragment;Lcom/android/settings/wifi/SoftApControllerFragment$1;)V
    .locals 0

    .line 435
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;-><init>(Lcom/android/settings/wifi/SoftApControllerFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 448
    iget p1, p1, Landroid/os/Message;->what:I

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->removeMessages(I)V

    if-nez p1, :cond_1

    .line 452
    iget-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$800(Lcom/android/settings/wifi/SoftApControllerFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$900(Lcom/android/settings/wifi/SoftApControllerFragment;)V

    const/4 p1, 0x0

    const-wide/16 v0, 0x3e8

    .line 454
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 456
    iget-object p1, p0, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->this$0:Lcom/android/settings/wifi/SoftApControllerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/SoftApControllerFragment;->access$600(Lcom/android/settings/wifi/SoftApControllerFragment;)V

    const-wide/16 v1, 0x1388

    .line 457
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method resume()V
    .locals 2

    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x1

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SoftApControllerFragment$Updater;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
