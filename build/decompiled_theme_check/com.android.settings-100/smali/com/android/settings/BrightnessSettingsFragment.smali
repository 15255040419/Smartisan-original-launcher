.class public Lcom/android/settings/BrightnessSettingsFragment;
.super Lcom/android/settings/SupportFragment;
.source "BrightnessSettingsFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DC_REAL_WORK_BRIGHTNESS:I = 0x244

.field private static final IS_DARWIN:Z

.field private static final LUX_THRESHOLD_LEVEL_1:I = 0x1f40

.field private static final LUX_THRESHOLD_LEVEL_2:I = 0xe10

.field private static final LUX_THRESHOLD_LEVEL_3:I = 0x1f4

.field private static final SCREEN_BRIGHTNESS_DARWIN_THRESHOLD_LEVEL_1:I = 0x4b0

.field private static final SCREEN_BRIGHTNESS_DARWIN_THRESHOLD_LEVEL_2:I = 0x320

.field private static final SCREEN_BRIGHTNESS_DARWIN_THRESHOLD_LEVEL_3:I = 0x12c

.field private static final SCREEN_BRIGHTNESS_THRESHOLD_LEVEL_1:I = 0x8c

.field private static final SCREEN_BRIGHTNESS_THRESHOLD_LEVEL_2:I = 0x64

.field private static final SCREEN_BRIGHTNESS_THRESHOLD_LEVEL_3:I = 0x1e


# instance fields
.field private final mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessSwitch:Lsmartisanos/widget/SettingItemSwitch;

.field private mAutoRotationSwitch:Lsmartisanos/widget/SettingItemSwitch;

.field private mAutomaticMode:Z

.field private final mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mColorTemperatureItem:Lsmartisanos/widget/SettingItemText;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplaySizeItem:Lsmartisanos/widget/SettingItemText;

.field private final mEyesProtectionModeObserver:Landroid/database/ContentObserver;

.field private mEyesProtectionUtils:Lcom/android/settings/eyesprotection/EyesProtectionUtils;

.field private mFontSize:Lsmartisanos/widget/SettingItemText;

.field private mHandler:Landroid/os/Handler;

.field private mInTrack:Z

.field private mItemAutoLockScreenTime:Lsmartisanos/widget/SettingItemText;

.field private mItemScreenRefreshRate:Lsmartisanos/widget/SettingItemText;

.field private mItemStatusBarStyle:Lsmartisanos/widget/SettingItemText;

.field private mLightArea:Landroid/view/View;

.field private mLightChange:Z

.field private final mLightClickObserver:Landroid/database/ContentObserver;

.field private mLightClickSwitch:Lsmartisanos/widget/SettingItemSwitch;

.field private final mLightPickupObserver:Landroid/database/ContentObserver;

.field private mLightPickupSwitch:Lsmartisanos/widget/SettingItemSwitch;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLimitedMinBrightness:I

.field private mLockScreenChargingAnimationItem:Lsmartisanos/widget/SettingItemText;

.field private mLockTips:Landroid/widget/TextView;

.field private mLowBatteryModeObserver:Landroid/database/ContentObserver;

.field private mPm:Landroid/os/PowerManager;

.field private mPowerManager:Lsmartisanos/api/PowerManagerSmt;

.field private mPreLimitedMinBrightness:I

.field private mProtectEyes:Lsmartisanos/widget/SettingItemText;

.field private final mReadModeObserver:Landroid/database/ContentObserver;

.field private mReadModeSwitch:Lsmartisanos/widget/SettingItemSwitch;

.field private mReadModeTips:Lsmartisanos/widget/TipsView;

.field private mReduceStrobeSwitch:Lsmartisanos/widget/SettingItemSwitch;

.field private mReduceStrobeSwitchTips:Lsmartisanos/widget/TipsView;

.field private mRotationEnabler:Lcom/android/settings/AutoRotationEnabler;

.field private mScreenBrightnessMaximum:I

.field private mScreenBrightnessMinimum:I

.field private mScreenTimeoutController:Lcom/android/settings/ScreenTimeoutController;

.field private mSeekBar:Lsmartisanos/widget/SliderWithIcons;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/BrightnessSettingsFragment;->IS_DARWIN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mInTrack:Z

    .line 88
    new-instance v1, Lcom/android/settings/eyesprotection/EyesProtectionUtils;

    invoke-direct {v1, v0}, Lcom/android/settings/eyesprotection/EyesProtectionUtils;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mEyesProtectionUtils:Lcom/android/settings/eyesprotection/EyesProtectionUtils;

    .line 97
    iput v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPreLimitedMinBrightness:I

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightChange:Z

    .line 111
    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$1;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessSettingsFragment$1;-><init>(Lcom/android/settings/BrightnessSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 118
    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/BrightnessSettingsFragment$2;-><init>(Lcom/android/settings/BrightnessSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 348
    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessSettingsFragment$3;-><init>(Lcom/android/settings/BrightnessSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLowBatteryModeObserver:Landroid/database/ContentObserver;

    .line 360
    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$4;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessSettingsFragment$4;-><init>(Lcom/android/settings/BrightnessSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 367
    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$5;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessSettingsFragment$5;-><init>(Lcom/android/settings/BrightnessSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 374
    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$6;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessSettingsFragment$6;-><init>(Lcom/android/settings/BrightnessSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mEyesProtectionModeObserver:Landroid/database/ContentObserver;

    .line 381
    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$7;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessSettingsFragment$7;-><init>(Lcom/android/settings/BrightnessSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightClickObserver:Landroid/database/ContentObserver;

    .line 388
    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$8;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessSettingsFragment$8;-><init>(Lcom/android/settings/BrightnessSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightPickupObserver:Landroid/database/ContentObserver;

    .line 395
    new-instance v0, Lcom/android/settings/BrightnessSettingsFragment$9;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessSettingsFragment$9;-><init>(Lcom/android/settings/BrightnessSettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BrightnessSettingsFragment;)Lcom/android/settings/AutoRotationEnabler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mRotationEnabler:Lcom/android/settings/AutoRotationEnabler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessSettingsFragment;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutomaticMode:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/BrightnessSettingsFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->updateColorTemperatureEnableIfNeed()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/BrightnessSettingsFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onLightClickChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/BrightnessSettingsFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onLightPickupChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/BrightnessSettingsFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onReadModeChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/BrightnessSettingsFragment;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/BrightnessSettingsFragment;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLimitedMinBrightness:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/BrightnessSettingsFragment;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLimitedMinBrightness:I

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/settings/BrightnessSettingsFragment;->IS_DARWIN:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/BrightnessSettingsFragment;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMinimum:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/BrightnessSettingsFragment;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPreLimitedMinBrightness:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/settings/BrightnessSettingsFragment;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPreLimitedMinBrightness:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/BrightnessSettingsFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->setSeekBarMax()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/BrightnessSettingsFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/BrightnessSettingsFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onBrightnessModeChanged()V

    return-void
.end method

.method private getBrightness()I
    .locals 1

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "realtime_screen_brightness"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private getBrightnessByProgress(I)I
    .locals 0

    .line 484
    iget p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMinimum:I

    add-int/2addr p0, p1

    return p0
.end method

.method private getBrightnessMode()I
    .locals 1

    const/4 v0, 0x0

    .line 460
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessSettingsFragment;->getBrightnessMode(I)I

    move-result p0

    return p0
.end method

.method private getBrightnessMode(I)I
    .locals 1

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1
.end method

.method private getProgressByCurBrightness()I
    .locals 2

    .line 475
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getBrightness()I

    move-result v0

    .line 476
    iget v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMinimum:I

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 478
    :cond_0
    iget v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMaximum:I

    if-le v0, v1, :cond_1

    move v0, v1

    .line 480
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLimitedMinBrightness()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutomaticMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightChange:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLimitedMinBrightness:I

    if-ge v0, v1, :cond_2

    iget p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMinimum:I

    sub-int/2addr v1, p0

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMinimum:I

    sub-int v1, v0, p0

    :goto_0
    return v1
.end method

.method private isNeedShowAutolockTips()Z
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isUseStrictLockScreen(Landroid/content/Context;)Z

    move-result v0

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string/jumbo v2, "quick_unlock_when_screen_off"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private onBrightnessChanged()V
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mInTrack:Z

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mSeekBar:Lsmartisanos/widget/SliderWithIcons;

    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getProgressByCurBrightness()I

    move-result p0

    invoke-virtual {v0, p0}, Lsmartisanos/widget/SliderWithIcons;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 2

    .line 443
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getBrightnessMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutomaticMode:Z

    .line 445
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutoBrightnessSwitch:Lsmartisanos/widget/SettingItemSwitch;

    iget-boolean p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutomaticMode:Z

    invoke-virtual {v0, p0}, Lsmartisanos/widget/SettingItemSwitch;->setChecked(Z)V

    return-void
.end method

.method private onLightClickChanged()V
    .locals 4

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/android/settings/BrightnessSettingsFragment;->IS_DARWIN:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "click_enable_screen_on"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 417
    :goto_0
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightClickSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p0, v2}, Lsmartisanos/widget/SettingItemSwitch;->setChecked(Z)V

    return-void
.end method

.method private onLightPickupChanged()V
    .locals 3

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pickup_enable_fingerprint"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 410
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightPickupSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/SettingItemSwitch;->setChecked(Z)V

    return-void
.end method

.method private onReadModeChanged()V
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "read_mode_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 422
    :cond_0
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/SettingItemSwitch;->setChecked(Z)V

    return-void
.end method

.method private setBrightness(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 498
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {p1, p2}, Lcom/android/settings/MultiSDKAdapter;->setBrightness(ILandroid/hardware/display/DisplayManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 500
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 503
    :cond_0
    iget-object p2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 504
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPowerManager:Lsmartisanos/api/PowerManagerSmt;

    invoke-virtual {v0, p2, p1}, Lsmartisanos/api/PowerManagerSmt;->setBrightness(Landroid/os/PowerManager;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 507
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set brightness due to exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private setSeekBarMax()V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMinimum:I

    .line 427
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMaximum:I

    .line 428
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mSeekBar:Lsmartisanos/widget/SliderWithIcons;

    iget v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMaximum:I

    iget v2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMinimum:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SliderWithIcons;->setMax(I)V

    .line 429
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLimitedMinBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMinimum:I

    iput v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLimitedMinBrightness:I

    .line 431
    iget v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLimitedMinBrightness:I

    iput v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPreLimitedMinBrightness:I

    :cond_0
    return-void
.end method

.method private updateColorTemperatureEnableIfNeed()V
    .locals 2

    .line 403
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isEyesProtectionRejectColorTemperature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mColorTemperatureItem:Lsmartisanos/widget/SettingItemText;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mEyesProtectionUtils:Lcom/android/settings/eyesprotection/EyesProtectionUtils;

    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/settings/eyesprotection/EyesProtectionUtils;->isEyesProtectionEnabled(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lsmartisanos/widget/SettingItemText;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMinProgress()I
    .locals 1

    .line 623
    iget v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLimitedMinBrightness:I

    iget p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenBrightnessMinimum:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public isSetSeekBarMinProgress(Landroid/widget/SeekBar;)Z
    .locals 1

    .line 619
    iget-boolean v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutomaticMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getMinProgress()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutoRotationSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 514
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mRotationEnabler:Lcom/android/settings/AutoRotationEnabler;

    invoke-virtual {p0, p2}, Lcom/android/settings/AutoRotationEnabler;->setAutoRotation(Z)V

    const/16 p0, 0x44d

    .line 515
    invoke-static {p0, p2}, Lcom/android/settings/SettingsTracker;->onSwitcherClick(IZ)V

    goto/16 :goto_0

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutoBrightnessSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 517
    invoke-direct {p0, p2}, Lcom/android/settings/BrightnessSettingsFragment;->setMode(I)V

    const/16 p0, 0x44e

    .line 519
    invoke-static {p0, p2}, Lcom/android/settings/SettingsTracker;->onSwitcherClick(IZ)V

    goto :goto_0

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReduceStrobeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "reduce_screen_strobe"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsProviderUtils;->getSystemScreenBrightness(Landroid/content/Context;)I

    move-result p0

    const/16 p1, 0x244

    if-gt p0, p1, :cond_2

    return-void

    .line 532
    :cond_2
    invoke-static {p2}, Lcom/android/settings/Calibration;->setReduceScreenStrobeEnable(Z)V

    goto :goto_0

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightClickSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "click_enable_screen_on"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 536
    :cond_4
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightPickupSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 537
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "pickup_enable_fingerprint"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 539
    :cond_5
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemSwitch;->getSwitch()Lsmartisanos/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "read_mode_enable"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemAutoLockScreenTime:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_0

    .line 586
    const-class p1, Lcom/android/settings/ScreenOffTimeoutFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0x44f

    .line 587
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLockScreenChargingAnimationItem:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_1

    .line 589
    const-class p1, Lcom/android/settings/ChargingAnimationFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->start(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 590
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04ab

    if-ne v0, v1, :cond_2

    .line 591
    const-class p1, Lcom/android/settings/ColorProfilesFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0x450

    .line 592
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04c4

    if-ne v0, v1, :cond_3

    .line 594
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->_mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings/FontScaleSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f120847

    .line 595
    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    iget v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mTitleResId:I

    const-string v1, "back_text_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 597
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 p0, 0x452

    .line 598
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto :goto_0

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mProtectEyes:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_4

    .line 600
    const-class p1, Lcom/android/settings/eyesprotection/EyesProtectionFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0x451

    .line 601
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto :goto_0

    .line 602
    :cond_4
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mDisplaySizeItem:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_5

    .line 603
    const-class p1, Lcom/android/settings/DisplaySizeSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0x453

    .line 604
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto :goto_0

    .line 605
    :cond_5
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemStatusBarStyle:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_6

    .line 606
    const-class p1, Lcom/android/settings/ImmersiveModeFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->start(Ljava/lang/Class;)V

    goto :goto_0

    .line 607
    :cond_6
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemScreenRefreshRate:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_7

    .line 608
    const-class p1, Lcom/android/settings/ScreenRefreshRateFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->start(Ljava/lang/Class;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    const v0, 0x7f0d007e

    .line 153
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mRootView:Landroid/view/View;

    const p1, 0x7f1203b1

    .line 154
    iput p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mTitleResId:I

    .line 156
    invoke-static {}, Lsmartisanos/api/PowerManagerSmt;->getInstance()Lsmartisanos/api/PowerManagerSmt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPowerManager:Lsmartisanos/api/PowerManagerSmt;

    const-string/jumbo p1, "power"

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPm:Landroid/os/PowerManager;

    .line 158
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getBrightnessMode()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutomaticMode:Z

    const p1, 0x7f0a08e5

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemSwitch;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutoRotationSwitch:Lsmartisanos/widget/SettingItemSwitch;

    .line 162
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutoRotationSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0a08e3

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemSwitch;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutoBrightnessSwitch:Lsmartisanos/widget/SettingItemSwitch;

    .line 164
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutoBrightnessSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 165
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutoBrightnessSwitch:Lsmartisanos/widget/SettingItemSwitch;

    iget-boolean v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutomaticMode:Z

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemSwitch;->setChecked(Z)V

    const p1, 0x7f0a010a

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SliderWithIcons;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mSeekBar:Lsmartisanos/widget/SliderWithIcons;

    .line 167
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mSeekBar:Lsmartisanos/widget/SliderWithIcons;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SliderWithIcons;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 168
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->setSeekBarMax()V

    .line 169
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mSeekBar:Lsmartisanos/widget/SliderWithIcons;

    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getProgressByCurBrightness()I

    move-result v0

    invoke-virtual {p1, v0}, Lsmartisanos/widget/SliderWithIcons;->setProgress(I)V

    const p1, 0x7f0a0499

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemAutoLockScreenTime:Lsmartisanos/widget/SettingItemText;

    .line 171
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemAutoLockScreenTime:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance p1, Lcom/android/settings/ScreenTimeoutController;

    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemAutoLockScreenTime:Lsmartisanos/widget/SettingItemText;

    invoke-direct {p1, v0, v1, p3}, Lcom/android/settings/ScreenTimeoutController;-><init>(Landroid/content/Context;Lsmartisanos/widget/SettingItemText;I)V

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenTimeoutController:Lcom/android/settings/ScreenTimeoutController;

    const p1, 0x7f0a00ce

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLockTips:Landroid/widget/TextView;

    const p1, 0x7f0a0523

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLockScreenChargingAnimationItem:Lsmartisanos/widget/SettingItemText;

    .line 178
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLockScreenChargingAnimationItem:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04ab

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mColorTemperatureItem:Lsmartisanos/widget/SettingItemText;

    .line 180
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mColorTemperatureItem:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04c4

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mFontSize:Lsmartisanos/widget/SettingItemText;

    .line 182
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mFontSize:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04b9

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mDisplaySizeItem:Lsmartisanos/widget/SettingItemText;

    .line 184
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mDisplaySizeItem:Lsmartisanos/widget/SettingItemText;

    sget-boolean v0, Lcom/android/settings/SettingsFeature;->SUPPORT_DISPLAY_SIZE:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    move v0, p3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mDisplaySizeItem:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a08f6

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemSwitch;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightPickupSwitch:Lsmartisanos/widget/SettingItemSwitch;

    const p1, 0x7f0a08f5

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemSwitch;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightClickSwitch:Lsmartisanos/widget/SettingItemSwitch;

    const p1, 0x7f0a08f4

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightArea:Landroid/view/View;

    const p1, 0x7f0a08eb

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemSwitch;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReduceStrobeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    const p1, 0x7f0a08ec

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TipsView;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReduceStrobeSwitchTips:Lsmartisanos/widget/TipsView;

    .line 191
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 192
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReduceStrobeSwitchTips:Lsmartisanos/widget/TipsView;

    const v0, 0x7f12103a

    invoke-virtual {p1, v0}, Lsmartisanos/widget/TipsView;->setText(I)V

    .line 194
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLightScreen()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 195
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightArea:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightPickupSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightClickSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightArea:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const p1, 0x7f0a054f

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mProtectEyes:Lsmartisanos/widget/SettingItemText;

    const p1, 0x7f0a050b

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemStatusBarStyle:Lsmartisanos/widget/SettingItemText;

    .line 204
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemStatusBarStyle:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a055c

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemScreenRefreshRate:Lsmartisanos/widget/SettingItemText;

    .line 207
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemScreenRefreshRate:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mProtectEyes:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportEyesProtection()Z

    move-result p1

    if-nez p1, :cond_4

    .line 211
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mColorTemperatureItem:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setBackgroundStyle(I)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mProtectEyes:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v1}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 214
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDarwin()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportDC()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 215
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReduceStrobeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p1, p3}, Lsmartisanos/widget/SettingItemSwitch;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReduceStrobeSwitchTips:Lsmartisanos/widget/TipsView;

    invoke-virtual {p1, p3}, Lsmartisanos/widget/TipsView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReduceStrobeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    :cond_5
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportReadMode()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f0a08fe

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemSwitch;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    .line 221
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p1, p3}, Lsmartisanos/widget/SettingItemSwitch;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0a08ff

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/TipsView;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeTips:Lsmartisanos/widget/TipsView;

    .line 224
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeTips:Lsmartisanos/widget/TipsView;

    invoke-virtual {p1, p3}, Lsmartisanos/widget/TipsView;->setVisibility(I)V

    .line 226
    :cond_6
    iget-boolean p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mIsExtDisplaying:Z

    if-eqz p1, :cond_7

    .line 227
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemStatusBarStyle:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v1}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 229
    :cond_7
    new-instance p1, Lcom/android/settings/AutoRotationEnabler;

    iget-object p2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAutoRotationSwitch:Lsmartisanos/widget/SettingItemSwitch;

    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/settings/AutoRotationEnabler;-><init>(Landroid/content/Context;Lsmartisanos/widget/SettingItemSwitch;Landroid/database/ContentObserver;)V

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mRotationEnabler:Lcom/android/settings/AutoRotationEnabler;

    .line 230
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLimitedMinBrightness()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 231
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mSensorManager:Landroid/hardware/SensorManager;

    .line 232
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightSensor:Landroid/hardware/Sensor;

    .line 234
    :cond_8
    iget-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 236
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/SettingsTracker;->trackerDisplaySettings(Landroid/content/Context;)V

    .line 615
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onDestroy()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 547
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLimitedMinBrightness()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 548
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->isSetSeekBarMinProgress(Landroid/widget/SeekBar;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 549
    iget p2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPreLimitedMinBrightness:I

    iget v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLimitedMinBrightness:I

    if-ge p2, v0, :cond_0

    .line 550
    iget-boolean p2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mInTrack:Z

    if-nez p2, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getMinProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getMinProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 557
    :cond_1
    :goto_0
    iget p2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLimitedMinBrightness:I

    iput p2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mPreLimitedMinBrightness:I

    :cond_2
    if-eqz p3, :cond_3

    .line 560
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->getBrightnessByProgress(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/BrightnessSettingsFragment;->setBrightness(IZ)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    .line 566
    iput-boolean v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mInTrack:Z

    .line 567
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLimitedMinBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->isSetSeekBarMinProgress(Landroid/widget/SeekBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getMinProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->unregisterContentObserver()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    .line 575
    iput-boolean v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mInTrack:Z

    .line 576
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLimitedMinBrightness()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->isSetSeekBarMinProgress(Landroid/widget/SeekBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getMinProgress()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 579
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/BrightnessSettingsFragment;->getBrightnessByProgress(I)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/BrightnessSettingsFragment;->setBrightness(IZ)V

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->registerContentObserver()V

    return-void
.end method

.method public onSupportInvisible()V
    .locals 1

    .line 241
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportInvisible()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenTimeoutController:Lcom/android/settings/ScreenTimeoutController;

    invoke-virtual {v0}, Lcom/android/settings/ScreenTimeoutController;->onPause()V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->unregisterContentObserver()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mRotationEnabler:Lcom/android/settings/AutoRotationEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AutoRotationEnabler;->pause()V

    .line 245
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLimitedMinBrightness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public onSupportVisible()V
    .locals 5

    .line 252
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->registerContentObserver()V

    .line 256
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onBrightnessChanged()V

    .line 258
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onBrightnessModeChanged()V

    .line 259
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLightScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onLightPickupChanged()V

    .line 261
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onLightClickChanged()V

    .line 263
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportReadMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->onReadModeChanged()V

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenTimeoutController:Lcom/android/settings/ScreenTimeoutController;

    invoke-virtual {v0}, Lcom/android/settings/ScreenTimeoutController;->updateTimeoutItem()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenTimeoutController:Lcom/android/settings/ScreenTimeoutController;

    invoke-virtual {v0}, Lcom/android/settings/ScreenTimeoutController;->onResume()V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->isNeedShowAutolockTips()Z

    move-result v0

    const v1, 0x7f0a00d3

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLockTips:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/BrightnessSettingsFragment;->mScreenTimeoutController:Lcom/android/settings/ScreenTimeoutController;

    invoke-virtual {v4}, Lcom/android/settings/ScreenTimeoutController;->getAutoLockTips()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLockTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLockTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mFontSize:Lsmartisanos/widget/SettingItemText;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentFontScaleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemText;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mDisplaySizeItem:Lsmartisanos/widget/SettingItemText;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/DisplaySizeSettingsFragment;->getCurrentDisplaySizeTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemText;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mRotationEnabler:Lcom/android/settings/AutoRotationEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AutoRotationEnabler;->resume()V

    .line 280
    invoke-direct {p0}, Lcom/android/settings/BrightnessSettingsFragment;->updateColorTemperatureEnableIfNeed()V

    .line 281
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportDC()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReduceStrobeSwitch:Lsmartisanos/widget/SettingItemSwitch;

    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "reduce_screen_strobe"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemSwitch;->setChecked(Z)V

    .line 285
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLimitedMinBrightness()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 286
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 288
    :cond_5
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportScreenRefresh()Z

    move-result v0

    if-nez v0, :cond_6

    .line 289
    iget-object v0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mItemScreenRefreshRate:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {v0, v2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    const v0, 0x7f0a055d

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/settings/BrightnessSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public registerContentObserver()V
    .locals 4

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    .line 297
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLowBatteryModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 296
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "realtime_screen_brightness"

    .line 300
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 299
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "screen_brightness_mode"

    .line 303
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 302
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "protect_eyes_enable"

    .line 306
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mEyesProtectionModeObserver:Landroid/database/ContentObserver;

    .line 305
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 308
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLightScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "pickup_enable_fingerprint"

    .line 310
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightPickupObserver:Landroid/database/ContentObserver;

    .line 309
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "click_enable_screen_on"

    .line 313
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightClickObserver:Landroid/database/ContentObserver;

    .line 312
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 316
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportReadMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "read_mode_enable"

    .line 318
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeObserver:Landroid/database/ContentObserver;

    .line 317
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/BrightnessSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLowBatteryModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 326
    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 327
    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 328
    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mEyesProtectionModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportLightScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightPickupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 331
    iget-object v1, p0, Lcom/android/settings/BrightnessSettingsFragment;->mLightClickObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 333
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isSupportReadMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    iget-object p0, p0, Lcom/android/settings/BrightnessSettingsFragment;->mReadModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
