.class final Lcom/android/settingslib/bluetooth/SapProfile;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "SAP"

.field private static final ORDINAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SapProfile"

.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z = true


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothSap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 48
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/SapProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 103
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 104
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 105
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance p3, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/SapProfile;Lcom/android/settingslib/bluetooth/SapProfile$1;)V

    const/16 p0, 0xa

    invoke-virtual {p2, p1, p3, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/android/settingslib/bluetooth/SapProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/SapProfile;)Landroid/bluetooth/BluetoothSap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/SapProfile;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settingslib/bluetooth/SapProfile;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 122
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 125
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 135
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method protected finalize()V
    .locals 4

    .line 210
    sget-boolean v0, Lcom/android/settingslib/bluetooth/SapProfile;->V:Z

    const-string v1, "SapProfile"

    if-eqz v0, :cond_0

    const-string v0, "finalize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    if-eqz v0, :cond_1

    .line 213
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up SAP proxy"

    .line 217
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

    .line 172
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 173
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothSap;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

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
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    .line 146
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 206
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 188
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_sap:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/SapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 201
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 198
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_sap_profile_summary_connected:I

    return p0

    .line 195
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_sap_profile_summary_use_for:I

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

    .line 151
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 167
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothSap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SAP"

    return-object p0
.end method
