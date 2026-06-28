.class Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;
.super Landroid/os/Handler;
.source "AbstractConnectivityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectivityEventHandler"
.end annotation


# instance fields
.field private mPreferenceController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;->mPreferenceController:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 99
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;->mPreferenceController:Ljava/lang/ref/WeakReference;

    .line 100
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;

    if-nez p0, :cond_0

    return-void

    .line 105
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x258

    if-ne v0, v1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->updateConnectivity()V

    return-void

    .line 110
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
