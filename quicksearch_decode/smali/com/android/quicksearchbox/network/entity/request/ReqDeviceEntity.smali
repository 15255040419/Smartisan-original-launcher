.class public Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;
.super Ljava/lang/Object;
.source "ReqDeviceEntity.java"


# instance fields
.field public android_id:Ljava/lang/String;

.field public conn_type:I

.field public geo:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imei_enc:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public os:I

.field public os_version:Ljava/lang/String;

.field public resolution:Ljava/lang/String;

.field public type:I

.field public uuid:Ljava/lang/String;

.field public vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->type:I

    .line 3
    iput v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->conn_type:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->imei:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->imei_enc:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->android_id:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->uuid:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->vendor:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->model:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->ip:Ljava/lang/String;

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->os:I

    .line 12
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->os_version:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->geo:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->resolution:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAndroid_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->android_id:Ljava/lang/String;

    return-object v0
.end method

.method public getConn_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->conn_type:I

    return v0
.end method

.method public getGeo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->geo:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImei_enc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->imei_enc:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->os:I

    return v0
.end method

.method public getOs_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->os_version:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->type:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroid_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->android_id:Ljava/lang/String;

    return-void
.end method

.method public setConn_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->conn_type:I

    return-void
.end method

.method public setGeo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->geo:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImei_enc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->imei_enc:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->ip:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->language:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->model:Ljava/lang/String;

    return-void
.end method

.method public setOs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->os:I

    return-void
.end method

.method public setOs_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->os_version:Ljava/lang/String;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->resolution:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->type:I

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;->vendor:Ljava/lang/String;

    return-void
.end method
