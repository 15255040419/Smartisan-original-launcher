.class public Lcom/android/settings/CameraSettingsActivity;
.super Lcom/android/settings/BaseActivity;
.source "CameraSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCameraLocation:Lsmartisanos/widget/SettingItemSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/settings/BaseActivity;-><init>()V

    return-void
.end method

.method private isCameraLocationEnabled()Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/CameraSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "smartisan_camera_location_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private setCameraLocationEnabled(Z)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/CameraSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "smartisan_camera_location_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p2}, Lcom/android/settings/CameraSettingsActivity;->setCameraLocationEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/android/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0081

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/settings/CameraSettingsActivity;->setContentView(I)V

    const p1, 0x7f0a060b

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/settings/CameraSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemSwitch;

    iput-object p1, p0, Lcom/android/settings/CameraSettingsActivity;->mCameraLocation:Lsmartisanos/widget/SettingItemSwitch;

    .line 20
    invoke-virtual {p0}, Lcom/android/settings/CameraSettingsActivity;->setupBackBtnOnTitle()Lsmartisanos/widget/TitleBar;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onPause()V

    .line 32
    iget-object p0, p0, Lcom/android/settings/CameraSettingsActivity;->mCameraLocation:Lsmartisanos/widget/SettingItemSwitch;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/android/settings/BaseActivity;->onResume()V

    .line 26
    iget-object v0, p0, Lcom/android/settings/CameraSettingsActivity;->mCameraLocation:Lsmartisanos/widget/SettingItemSwitch;

    invoke-direct {p0}, Lcom/android/settings/CameraSettingsActivity;->isCameraLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemSwitch;->setChecked(Z)V

    .line 27
    iget-object v0, p0, Lcom/android/settings/CameraSettingsActivity;->mCameraLocation:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {v0, p0}, Lsmartisanos/widget/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
