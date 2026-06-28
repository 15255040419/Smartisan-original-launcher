.class final Lcom/android/settingslib/bluetooth/A2dpSinkProfile;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "A2DPSink"

.field private static final ORDINAL:I = 0x5

.field static final SRC_UUIDS:[Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "A2dpSinkProfile"

.field private static V:Z = true


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 44
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 97
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 98
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 99
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance p3, Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Lcom/android/settingslib/bluetooth/A2dpSinkProfile$1;)V

    const/16 p0, 0xb

    invoke-virtual {p2, p1, p3, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 124
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "A2dpSinkProfile"

    const-string p1, "Ignoring Connect"

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 131
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 137
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 140
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 4

    .line 214
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->V:Z

    const-string v1, "A2dpSinkProfile"

    if-eqz v0, :cond_0

    const-string v0, "finalize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_1

    .line 217
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up A2DP proxy"

    .line 221
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 113
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dpSink;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 210
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 192
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 205
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 202
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_connected:I

    return p0

    .line 199
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_use_for:I

    return p0
.end method

.method isA2dpPlaying()Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dpSink;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isAutoConnectable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isConnectable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 151
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 167
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "A2DPSink"

    return-object p0
.end method
