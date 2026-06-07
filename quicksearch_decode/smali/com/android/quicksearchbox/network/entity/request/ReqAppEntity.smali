.class public Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;
.super Ljava/lang/Object;
.source "ReqAppEntity.java"


# instance fields
.field public name:Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->version:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->package_name:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/request/ReqAppEntity;->version:Ljava/lang/String;

    return-void
.end method
