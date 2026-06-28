.class Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;
.super Landroid/os/Handler;
.source "AbstractUptimePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_1

    .line 110
    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->access$000(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V

    const-wide/16 v0, 0x3e8

    .line 111
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 115
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
