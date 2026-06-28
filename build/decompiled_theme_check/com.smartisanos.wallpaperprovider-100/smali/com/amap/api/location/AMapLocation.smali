.class public Lcom/amap/api/location/AMapLocation;
.super Landroid/location/Location;
.source "AMapLocation.java"


# static fields
.field public static final ERROR_CODE_FAILURE_AUTH:I = 0x7

.field public static final ERROR_CODE_FAILURE_CELL:I = 0xb

.field public static final ERROR_CODE_FAILURE_CONNECTION:I = 0x4

.field public static final ERROR_CODE_FAILURE_INIT:I = 0x9

.field public static final ERROR_CODE_FAILURE_LOCATION:I = 0x6

.field public static final ERROR_CODE_FAILURE_LOCATION_PARAMETER:I = 0x3

.field public static final ERROR_CODE_FAILURE_LOCATION_PERMISSION:I = 0xc

.field public static final ERROR_CODE_FAILURE_PARSER:I = 0x5

.field public static final ERROR_CODE_FAILURE_WIFI_INFO:I = 0x2

.field public static final ERROR_CODE_INVALID_PARAMETER:I = 0x1

.field public static final ERROR_CODE_SERVICE_FAIL:I = 0xa

.field public static final ERROR_CODE_UNKNOWN:I = 0x8

.field public static final LOCATION_SUCCESS:I = 0x0

.field public static final LOCATION_TYPE_AMAP:I = 0x7

.field public static final LOCATION_TYPE_CELL:I = 0x6

.field public static final LOCATION_TYPE_FIX_CACHE:I = 0x4

.field public static final LOCATION_TYPE_GPS:I = 0x1

.field public static final LOCATION_TYPE_OFFLINE:I = 0x8

.field public static final LOCATION_TYPE_SAME_REQ:I = 0x2

.field public static final LOCATION_TYPE_WIFI:I = 0x5


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:D

.field private r:D

.field private s:I


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 4

    .line 207
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    const-string v0, ""

    .line 111
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    const/4 v1, 0x1

    .line 159
    iput-boolean v1, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    const/4 v1, 0x0

    .line 164
    iput v1, p0, Lcom/amap/api/location/AMapLocation;->m:I

    const-string v2, "success"

    .line 168
    iput-object v2, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    .line 177
    iput v1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    const-wide/16 v2, 0x0

    .line 182
    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->q:D

    .line 187
    iput-wide v2, p0, Lcom/amap/api/location/AMapLocation;->r:D

    .line 192
    iput v1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    .line 208
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocation;->q:D

    .line 209
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/location/AMapLocation;->r:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 199
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 111
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/amap/api/location/AMapLocation;->m:I

    const-string v1, "success"

    .line 168
    iput-object v1, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    .line 177
    iput v0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    const-wide/16 v1, 0x0

    .line 182
    iput-wide v1, p0, Lcom/amap/api/location/AMapLocation;->q:D

    .line 187
    iput-wide v1, p0, Lcom/amap/api/location/AMapLocation;->r:D

    .line 192
    iput v0, p0, Lcom/amap/api/location/AMapLocation;->s:I

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 0

    .line 697
    invoke-super {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    return p0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getAltitude()D
    .locals 2

    .line 725
    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getBearing()F
    .locals 0

    .line 711
    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result p0

    return p0
.end method

.method public getCity()Ljava/lang/String;
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 251
    iget p0, p0, Lcom/amap/api/location/AMapLocation;->m:I

    return p0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getLatitude()D
    .locals 2

    .line 489
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocation;->q:D

    return-wide v0
.end method

.method public getLocationDetail()Ljava/lang/String;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    return-object p0
.end method

.method public getLocationType()I
    .locals 0

    .line 217
    iget p0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    return p0
.end method

.method public getLongitude()D
    .locals 2

    .line 505
    iget-wide v0, p0, Lcom/amap/api/location/AMapLocation;->r:D

    return-wide v0
.end method

.method public getPoiName()Ljava/lang/String;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 0

    .line 753
    invoke-super {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getRoad()Ljava/lang/String;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getSatellites()I
    .locals 0

    .line 523
    iget p0, p0, Lcom/amap/api/location/AMapLocation;->s:I

    return p0
.end method

.method public getSpeed()F
    .locals 0

    .line 739
    invoke-super {p0}, Landroid/location/Location;->getSpeed()F

    move-result p0

    return p0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getStreetNum()Ljava/lang/String;
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    return-object p0
.end method

.method public isOffset()Z
    .locals 0

    .line 591
    iget-boolean p0, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    return p0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 1

    .line 260
    iget v0, p0, Lcom/amap/api/location/AMapLocation;->m:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    .line 298
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "\u9519\u8bef\u7684\u57fa\u7ad9\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u63d2\u5165SIM\u5361"

    .line 301
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "\u5b9a\u4f4d\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    .line 295
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    .line 292
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    .line 289
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string v0, "KEY\u9519\u8bef"

    .line 286
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string v0, "\u5b9a\u4f4d\u7ed3\u679c\u9519\u8bef"

    .line 283
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string v0, "\u89e3\u6790XML\u51fa\u9519"

    .line 280
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    .line 277
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u83b7\u53d6\u51fa\u73b0\u5f02\u5e38"

    .line 274
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    const-string v0, "WIFI\u4fe1\u606f\u4e0d\u8db3"

    .line 271
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    const-string v0, "\u91cd\u8981\u53c2\u6570\u4e3a\u7a7a"

    .line 268
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    const-string v0, "success"

    .line 265
    iput-object v0, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    .line 306
    :goto_0
    iput p1, p0, Lcom/amap/api/location/AMapLocation;->m:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 497
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->q:D

    return-void
.end method

.method public setLocationDetail(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    return-void
.end method

.method public setLocationType(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/amap/api/location/AMapLocation;->p:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 513
    iput-wide p1, p0, Lcom/amap/api/location/AMapLocation;->r:D

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    return-void
.end method

.method public setOffset(Z)V
    .locals 0

    .line 582
    iput-boolean p1, p0, Lcom/amap/api/location/AMapLocation;->l:Z

    return-void
.end method

.method public setPoiName(Ljava/lang/String;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    return-void
.end method

.method public setRoad(Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    return-void
.end method

.method public setSatellites(I)V
    .locals 0

    .line 533
    iput p1, p0, Lcom/amap/api/location/AMapLocation;->s:I

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    return-void
.end method

.method public toStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 622
    invoke-virtual {p0, v0}, Lcom/amap/api/location/AMapLocation;->toStr(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStr(I)Ljava/lang/String;
    .locals 5

    const-string v0, "desc"

    const/4 v1, 0x0

    .line 634
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto/16 :goto_0

    :cond_0
    const-string p1, "country"

    .line 637
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "province"

    .line 638
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "city"

    .line 639
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cityCode"

    .line 640
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "district"

    .line 641
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "adCode"

    .line 642
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "address"

    .line 643
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "road"

    .line 644
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "street"

    .line 645
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "number"

    .line 646
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "poiName"

    .line 647
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "errorCode"

    .line 648
    iget v3, p0, Lcom/amap/api/location/AMapLocation;->m:I

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "errorInfo"

    .line 649
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "locationDetail"

    .line 650
    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "altitude"

    .line 651
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "bearing"

    .line 652
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "speed"

    .line 653
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "satellites"

    .line 654
    iget v3, p0, Lcom/amap/api/location/AMapLocation;->s:I

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 658
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    :try_start_2
    const-string p1, "time"

    .line 668
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "locationType"

    .line 670
    iget v0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "accuracy"

    .line 671
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    float-to-double v3, v0

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "latitude"

    .line 672
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "longitude"

    .line 673
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "provider"

    .line 674
    invoke-virtual {p0}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    goto :goto_1

    .line 685
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 596
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocation;->q:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amap/api/location/AMapLocation;->r:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "province="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/location/AMapLocation;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "city="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "district="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cityCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "road="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poiName="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "street="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streetNum="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amap/api/location/AMapLocation;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationDetail="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amap/api/location/AMapLocation;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/amap/api/location/AMapLocation;->p:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
