.class public Lcom/android/settingslib/wrapper/LocationManagerWrapper;
.super Ljava/lang/Object;
.source "LocationManagerWrapper.java"


# instance fields
.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public getLocationManager()Landroid/location/LocationManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method public isLocationEnabled()Z
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    return p0
.end method

.method public isLocationEnabledForUser(Landroid/os/UserHandle;)Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setLocationEnabledForUser(ZLandroid/os/UserHandle;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public setProviderEnabledForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/location/LocationManager;->setProviderEnabledForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    return-void
.end method
