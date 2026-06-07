.class public Lcom/android/quicksearchbox/network/entity/request/ReqAdEntity;
.super Ljava/lang/Object;
.source "ReqAdEntity.java"


# instance fields
.field public app:Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;

.field public device:Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp()Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAdEntity;->app:Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;

    return-object v0
.end method

.method public getDevice()Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAdEntity;->device:Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;

    return-object v0
.end method

.method public setApp(Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAdEntity;->app:Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;

    return-void
.end method

.method public setDevice(Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAdEntity;->device:Lcom/android/quicksearchbox/network/entity/request/ReqDeviceEntity;

    return-void
.end method
