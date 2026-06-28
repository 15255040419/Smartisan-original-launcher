.class public interface abstract Lcom/amap/api/location/LocationManagerBase;
.super Ljava/lang/Object;
.source "LocationManagerBase.java"


# static fields
.field public static final ADD_GEOFENCE:I = 0x6

.field public static final DESTROY:I = 0xb

.field public static final REMOVE_GEOFENCE:I = 0x7

.field public static final REMOVE_GEOFENCE_ONE:I = 0xa

.field public static final REMOVE_LISTENER:I = 0x5

.field public static final SET_LISTENER:I = 0x2

.field public static final SET_OPTION:I = 0x1

.field public static final START_LOCATION:I = 0x3

.field public static final START_SOCKET:I = 0x8

.field public static final STOP_LOCATION:I = 0x4

.field public static final STOP_SOCKET:I = 0x9


# virtual methods
.method public abstract addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
.end method

.method public abstract getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract isStarted()Z
.end method

.method public abstract onDestroy()V
.end method

.method public abstract removeGeoFenceAlert(Landroid/app/PendingIntent;)V
.end method

.method public abstract removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
.end method

.method public abstract setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
.end method

.method public abstract setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
.end method

.method public abstract startAssistantLocation()V
.end method

.method public abstract startLocation()V
.end method

.method public abstract stopAssistantLocation()V
.end method

.method public abstract stopLocation()V
.end method

.method public abstract unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
.end method
