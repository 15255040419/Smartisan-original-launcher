.class public Lcom/android/settings/AdvancedSettingsFragment;
.super Lcom/android/settings/SupportFragment;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TRACKER_DEVELOPMENT:I = 0xa32


# instance fields
.field private mBackup:Lsmartisanos/widget/SettingItemText;

.field private mCameraLocation:Lsmartisanos/widget/SettingItemText;

.field private mDataTransfer:Lsmartisanos/widget/SettingItemText;

.field private mDateTimeSettings:Lsmartisanos/widget/SettingItemText;

.field private mEldershipMode:Lsmartisanos/widget/SettingItemText;

.field private mGoogleSettings:Lsmartisanos/widget/SettingItemText;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsmartisanos/widget/SettingItemText;",
            ">;"
        }
    .end annotation
.end field

.field private mLedBrightness:Lsmartisanos/widget/SettingItemText;

.field private mNotificationCustom:Lsmartisanos/widget/SettingItemText;

.field private mScreenOrientationItem:Lsmartisanos/widget/SettingItemText;

.field private mThirdPartyCustomize:Lsmartisanos/widget/SettingItemText;

.field private mTitleStringResId:I

.field private mViewAccount:Lsmartisanos/widget/SettingItemText;

.field private mViewAssistFunc:Lsmartisanos/widget/SettingItemText;

.field private mViewDevelopment:Lsmartisanos/widget/SettingItemText;

.field private mViewRestore:Lsmartisanos/widget/SettingItemText;

.field private mViewStorage:Lsmartisanos/widget/SettingItemText;

.field private showDevelopmentItem:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    return-void
.end method

.method private addInfoButtonForEldershipItem()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mEldershipMode:Lsmartisanos/widget/SettingItemText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 185
    new-instance v2, Lcom/android/settings/AdvancedSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AdvancedSettingsFragment$1;-><init>(Lcom/android/settings/AdvancedSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Lsmartisanos/widget/SettingItemText;->setupInfoButton(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setBackgroundForLastVisibleItem()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 225
    iget-object v2, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisanos/widget/SettingItemText;

    .line 226
    invoke-virtual {v2}, Lsmartisanos/widget/SettingItemText;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-le v0, v1, :cond_0

    const/4 v3, 0x4

    .line 228
    invoke-virtual {v2, v3}, Lsmartisanos/widget/SettingItemText;->setBackgroundStyle(I)V

    .line 229
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsmartisanos/widget/SettingItemText;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lsmartisanos/widget/SettingItemText;->setBackgroundStyle(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateDevelomentSettingItem()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "development"

    .line 214
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AdvancedSettingsFragment;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "show"

    .line 215
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->showDevelopmentItem:Z

    .line 216
    iget-boolean v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->showDevelopmentItem:Z

    if-nez v1, :cond_0

    .line 217
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewDevelopment:Lsmartisanos/widget/SettingItemText;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewDevelopment:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p0, v0}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    iget v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mTitleStringResId:I

    const-string v2, "back_text_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mDateTimeSettings:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_0

    .line 241
    const-class p1, Lcom/android/settings/DateTimeSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0xa29

    .line 242
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_1

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mEldershipMode:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v1, :cond_1

    .line 244
    const-class p1, Lcom/android/settings/eldership/EldershipModeSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAssistFunc:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_2

    .line 246
    const-class p1, Lcom/android/settings/accessibility/AccessibilitySettingsFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0xa2b

    .line 247
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_1

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAccount:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_3

    .line 249
    const-class p1, Lcom/android/settings/accounts/AccountSettingsFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0xa2c

    .line 250
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_1

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewStorage:Lsmartisanos/widget/SettingItemText;

    const/4 v3, 0x1

    const-string v4, "from_settings"

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    if-ne v1, p1, :cond_5

    const-string p1, "com.smartisanos.security"

    const-string v1, "com.smartisanos.storage.StorageActivity"

    .line 252
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "from_security_center"

    .line 256
    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back_text_res_name"

    const-string v1, "advanced_settings_header_title"

    .line 257
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 258
    fill-array-data p1, :array_0

    const-string/jumbo v1, "smartisanos.intent.extra.ANIM_RESOURCE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettingsFragment;->getActivityStackView()Lsmartisanos/view/ActivityStackView;

    move-result-object p1

    if-eqz p1, :cond_4

    const/high16 v1, 0x14000000

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    invoke-virtual {p1, v6}, Lsmartisanos/view/ActivityStackView;->setVisibility(I)V

    .line 266
    invoke-virtual {p1, v0}, Lsmartisanos/view/ActivityStackView;->startActivity(Landroid/content/Intent;)V

    .line 267
    const-class p1, Lcom/android/settings/EmptyFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    goto :goto_0

    .line 269
    :cond_4
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    const-class p1, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    :goto_0
    const/16 p0, 0xa34

    .line 274
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_1

    .line 275
    :cond_5
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewRestore:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_6

    .line 276
    const-class p1, Lcom/android/settings/MasterClear;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0xa2d

    .line 277
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_1

    .line 278
    :cond_6
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mBackup:Lsmartisanos/widget/SettingItemText;

    const-string v7, "com.smartisanos.backup"

    if-ne v1, p1, :cond_7

    const-string p1, "com.smartisanos.backup.activity.BackupListActivity"

    .line 279
    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 p0, 0xa2e

    .line 284
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    return-void

    .line 286
    :cond_7
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mDataTransfer:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_8

    const-string p1, "com.smartisanos.backup.activity.OldPhoneActivity"

    .line 287
    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mTitleStringResId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "back_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 p0, 0xa2f

    .line 290
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_1

    .line 291
    :cond_8
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mCameraLocation:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_9

    .line 292
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings/CameraSettingsActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 293
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, v0, v6}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 294
    :cond_9
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mNotificationCustom:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_a

    .line 295
    const-class p1, Lcom/android/settings/NotificationCustomFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0xa30

    .line 296
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_1

    .line 297
    :cond_a
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewDevelopment:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_d

    const/16 p1, 0xa32

    .line 298
    invoke-static {p1}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    .line 299
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 300
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->TAG:Ljava/lang/String;

    const-string p1, "isMonkeyRunning, ignore monkey operation"

    invoke-static {p0, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_b
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettingsFragment;->getActivityStackView()Lsmartisanos/view/ActivityStackView;

    move-result-object p1

    if-eqz p1, :cond_c

    const v1, 0x10008000

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    invoke-virtual {p1, v6}, Lsmartisanos/view/ActivityStackView;->setVisibility(I)V

    .line 308
    invoke-virtual {p1, v0}, Lsmartisanos/view/ActivityStackView;->startActivity(Landroid/content/Intent;)V

    .line 309
    const-class p1, Lcom/android/settings/EmptyFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    goto :goto_1

    .line 311
    :cond_c
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, v0, v6}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_1

    .line 313
    :cond_d
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mLedBrightness:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_e

    .line 314
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings/LedBrightnessSettings;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 p1, 0xa33

    .line 315
    invoke-static {p1}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    .line 316
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, v0, v6}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_1

    .line 317
    :cond_e
    iget-object v1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mGoogleSettings:Lsmartisanos/widget/SettingItemText;

    if-ne v1, p1, :cond_f

    .line 318
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.app.settings.GoogleSettingsLink"

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 p1, 0xa31

    .line 320
    invoke-static {p1}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    .line 321
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, v0, v6}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_1

    .line 322
    :cond_f
    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mScreenOrientationItem:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_10

    .line 323
    new-instance p1, Lcom/android/settings/ScreenRotationSettingFragment;

    invoke-direct {p1}, Lcom/android/settings/ScreenRotationSettingFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Lme/yokeyword/fragmentation/ISupportFragment;)V

    goto :goto_1

    .line 324
    :cond_10
    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mThirdPartyCustomize:Lsmartisanos/widget/SettingItemText;

    if-ne p1, v0, :cond_11

    .line 325
    const-class p1, Lcom/android/settings/ThirdPartyAppCustomizeFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->start(Ljava/lang/Class;)V

    :cond_11
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x2030002
        0x2030005
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0d0035

    .line 79
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mRootView:Landroid/view/View;

    const p1, 0x7f120105

    .line 81
    iput p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mTitleStringResId:I

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    const p1, 0x7f0a0219

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mDateTimeSettings:Lsmartisanos/widget/SettingItemText;

    .line 86
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mDateTimeSettings:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0294

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mEldershipMode:Lsmartisanos/widget/SettingItemText;

    .line 89
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/SettingsFeature;->isFeatureDomestic(Landroid/content/Context;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mIsExtDisplaying:Z

    if-nez p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mEldershipMode:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/AdvancedSettingsFragment;->addInfoButtonForEldershipItem()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mEldershipMode:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0a0497

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAssistFunc:Lsmartisanos/widget/SettingItemText;

    .line 97
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAssistFunc:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAssistFunc:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a048b

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAccount:Lsmartisanos/widget/SettingItemText;

    .line 101
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAccount:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAccount:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a0563

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewStorage:Lsmartisanos/widget/SettingItemText;

    .line 105
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewStorage:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewStorage:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a0557

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewRestore:Lsmartisanos/widget/SettingItemText;

    .line 109
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewRestore:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewRestore:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a049a

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mBackup:Lsmartisanos/widget/SettingItemText;

    .line 113
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mBackup:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mBackup:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a04ad

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mDataTransfer:Lsmartisanos/widget/SettingItemText;

    .line 117
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mDataTransfer:Lsmartisanos/widget/SettingItemText;

    invoke-static {}, Lcom/android/settings/SettingsFeature;->isDataTransferEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p3

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    invoke-virtual {p1, v0}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mDataTransfer:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mDataTransfer:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a04a0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mCameraLocation:Lsmartisanos/widget/SettingItemText;

    .line 122
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mCameraLocation:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isCameraLocationSettingsAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mCameraLocation:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mCameraLocation:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a051f

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mLedBrightness:Lsmartisanos/widget/SettingItemText;

    .line 129
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mLedBrightness:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isLEDBrightnessSettingsEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 131
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mLedBrightness:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p3}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mLedBrightness:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a053b

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mNotificationCustom:Lsmartisanos/widget/SettingItemText;

    .line 136
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isNotificationCustomAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 137
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mNotificationCustom:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p3}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mNotificationCustom:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mNotificationCustom:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 141
    :cond_4
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mNotificationCustom:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    :goto_2
    const p1, 0x7f0a0411

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mScreenOrientationItem:Lsmartisanos/widget/SettingItemText;

    .line 145
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mScreenOrientationItem:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    sget-boolean p1, Lcom/android/settings/SettingsFeature;->ADVANCE_SCREEN_ROTATION_MANUAL:Z

    if-eqz p1, :cond_5

    .line 147
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mScreenOrientationItem:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p3}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 149
    :cond_5
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mScreenOrientationItem:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a04ca

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mGoogleSettings:Lsmartisanos/widget/SettingItemText;

    .line 152
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mGoogleSettings:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mGoogleSettings:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a057c

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mThirdPartyCustomize:Lsmartisanos/widget/SettingItemText;

    .line 157
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mThirdPartyCustomize:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mThirdPartyCustomize:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0a04b5

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/settings/AdvancedSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewDevelopment:Lsmartisanos/widget/SettingItemText;

    .line 161
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewDevelopment:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewDevelopment:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mContext:Landroid/content/Context;

    const-string v0, "com.smartisanos.backup"

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->isPackageInstalledAndIsSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 165
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mBackup:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 168
    :cond_6
    iget-boolean p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mIsExtDisplaying:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mIsLandScreen:Z

    if-eqz p1, :cond_7

    .line 169
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAssistFunc:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewAccount:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mViewRestore:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mBackup:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mDataTransfer:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mCameraLocation:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mLedBrightness:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mScreenOrientationItem:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/android/settings/AdvancedSettingsFragment;->mThirdPartyCustomize:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p3}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 180
    :cond_7
    iget-object p0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/SettingsTracker;->trackAdvanceSettings(Landroid/content/Context;)V

    .line 332
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onDestroy()V

    return-void
.end method

.method public onSupportVisible()V
    .locals 2

    .line 203
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/SettingsFeature;->isGoogleSettingsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mIsExtDisplaying:Z

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mGoogleSettings:Lsmartisanos/widget/SettingItemText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AdvancedSettingsFragment;->mGoogleSettings:Lsmartisanos/widget/SettingItemText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 209
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/AdvancedSettingsFragment;->updateDevelomentSettingItem()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/AdvancedSettingsFragment;->setBackgroundForLastVisibleItem()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 337
    invoke-super {p0, p1}, Lcom/android/settings/SupportFragment;->onWindowFocusChanged(Z)V

    .line 338
    invoke-direct {p0}, Lcom/android/settings/AdvancedSettingsFragment;->updateDevelomentSettingItem()V

    .line 339
    invoke-direct {p0}, Lcom/android/settings/AdvancedSettingsFragment;->setBackgroundForLastVisibleItem()V

    return-void
.end method
