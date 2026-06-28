.class final Lcom/android/settingslib/bluetooth/HfpClientProfile;
.super Ljava/lang/Object;
.source "HfpClientProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "HEADSET_CLIENT"

.field private static final ORDINAL:I = 0x0

.field static final SRC_UUIDS:[Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "HfpClientProfile"

.field private static V:Z = false


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 47
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 104
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 105
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 106
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance p3, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HfpClientProfile;Lcom/android/settingslib/bluetooth/HfpClientProfile$1;)V

    const/16 p0, 0x10

    invoke-virtual {p2, p1, p3, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/HfpClientProfile;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settingslib/bluetooth/HfpClientProfile;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 134
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "HfpClientProfile"

    const-string p1, "Ignoring Connect"

    .line 136
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 141
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 148
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 151
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 4

    .line 222
    sget-boolean v0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->V:Z

    const-string v1, "HfpClientProfile"

    if-eqz v0, :cond_0

    const-string v0, "finalize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_1

    .line 225
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up HfpClient proxy"

    .line 229
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

    .line 121
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 122
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

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

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 218
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 198
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_headset:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HfpClientProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 212
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 209
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_headset_profile_summary_connected:I

    return p0

    .line 206
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_headset_profile_summary_use_for:I

    return p0
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

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 179
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 182
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "HEADSET_CLIENT"

    return-object p0
.end method
