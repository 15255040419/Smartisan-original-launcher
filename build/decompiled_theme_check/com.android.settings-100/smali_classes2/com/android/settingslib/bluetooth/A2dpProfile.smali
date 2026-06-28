.class public Lcom/android/settingslib/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "A2DP"

.field private static final ORDINAL:I = 0x1

.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "A2dpProfile"

.field private static V:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dp;

.field private mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 51
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 106
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 107
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 108
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance p3, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/A2dpProfile$1;)V

    const/4 p0, 0x2

    invoke-virtual {p2, p1, p3, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;)Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic lambda$getHighQualityAudioOptionLabel$0(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 0

    .line 267
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result p1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 141
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .locals 4

    .line 339
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    const-string v1, "A2dpProfile"

    if-eqz v0, :cond_0

    const-string v0, "finalize()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 342
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Error cleaning up A2DP proxy"

    .line 346
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
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

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 127
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

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

    .line 148
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 335
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    return p0
.end method

.method public getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 6

    .line 253
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, " execute getHighQualityAudioOptionLabel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality_unknown_codec:I

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto/16 :goto_5

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    .line 265
    sget-object v1, Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$A2dpProfile$exPXCssgW4cryyr_RqCY5K-rQFI;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 271
    array-length v5, p1

    if-ge v5, v4, :cond_3

    goto :goto_1

    :cond_3
    aget-object v3, p1, v1

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 273
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 274
    :cond_5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    goto :goto_3

    :cond_6
    :goto_2
    const p1, 0xf4240

    :goto_3
    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    move v2, v3

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x7

    goto :goto_4

    :pswitch_1
    const/4 v2, 0x5

    goto :goto_4

    :pswitch_2
    const/4 v2, 0x6

    goto :goto_4

    :pswitch_3
    const/4 v2, 0x4

    goto :goto_4

    :pswitch_4
    const/4 v2, 0x3

    goto :goto_4

    :pswitch_5
    move v2, v4

    :goto_4
    :pswitch_6
    if-gez v2, :cond_7

    .line 302
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 304
    :cond_7
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/android/settingslib/R$array;->bluetooth_a2dp_codec_titles:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    aput-object p0, v3, v1

    .line 304
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 257
    :cond_8
    :goto_5
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 317
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 330
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 327
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_connected:I

    return p0

    .line 324
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_use_for:I

    return p0
.end method

.method isA2dpPlaying()Z
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 188
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
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

.method public isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 206
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    const-string v1, "A2dpProfile"

    if-eqz v0, :cond_0

    const-string v0, " execute isHighQualityAudioEnabled()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 208
    sget-boolean p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz p0, :cond_1

    const-string p0, "mServiceWrapper is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 211
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    if-ne v0, v3, :cond_3

    move v2, v3

    :cond_3
    return v2

    .line 214
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 223
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    .line 226
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_7
    return v2
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 165
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method setBluetoothA2dpWrapper(Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    return-void
.end method

.method public setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .line 233
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    const-string v1, "A2dpProfile"

    if-eqz v0, :cond_0

    const-string v0, " execute setHighQualityAudioEnabled()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    if-nez v0, :cond_2

    .line 235
    sget-boolean p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz p0, :cond_1

    const-string p0, "mServiceWrapper is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 241
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 246
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 248
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    :goto_0
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 177
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 178
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 181
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 196
    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    const-string v1, "A2dpProfile"

    if-eqz v0, :cond_0

    const-string v0, " execute supportsHighQualityAudio()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 198
    sget-boolean p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz p0, :cond_1

    const-string p0, "mServiceWrapper is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    .line 201
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "A2DP"

    return-object p0
.end method
