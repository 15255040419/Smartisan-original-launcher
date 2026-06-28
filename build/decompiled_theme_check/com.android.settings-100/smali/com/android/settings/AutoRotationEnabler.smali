.class public final Lcom/android/settings/AutoRotationEnabler;
.super Ljava/lang/Object;
.source "AutoRotationEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoRotationSettings"


# instance fields
.field private final mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mSettingSwitch:Lsmartisanos/widget/SettingItemSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsmartisanos/widget/SettingItemSwitch;Landroid/database/ContentObserver;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settings/AutoRotationEnabler;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/AutoRotationEnabler;->mSettingSwitch:Lsmartisanos/widget/SettingItemSwitch;

    .line 48
    iput-object p3, p0, Lcom/android/settings/AutoRotationEnabler;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/settings/AutoRotationEnabler;->setAutoRotation(Z)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/settings/AutoRotationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/AutoRotationEnabler;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/android/settings/AutoRotationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    .line 53
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AutoRotationEnabler;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 52
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/AutoRotationEnabler;->updateRotationSwitchState()V

    return-void
.end method

.method public setAutoRotation(Z)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "window"

    .line 64
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 66
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 68
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 70
    :goto_0
    iget-object p0, p0, Lcom/android/settings/AutoRotationEnabler;->mSettingSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p0, p1}, Lsmartisanos/widget/SettingItemSwitch;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateRotationSwitchState()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/settings/AutoRotationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AutoRotationEnabler;->mSettingSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/SettingItemSwitch;->setChecked(Z)V

    return-void
.end method
