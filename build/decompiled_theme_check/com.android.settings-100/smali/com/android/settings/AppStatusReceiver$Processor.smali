.class public final Lcom/android/settings/AppStatusReceiver$Processor;
.super Ljava/lang/Object;
.source "AppStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Processor"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    return-void
.end method

.method private handleCmelRemove(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.ttdj.cmel"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "smart_key_click_function"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "feature_cmel"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p0, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/FunctionSmartKeyOptionsFragment;->disableSmartKey(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private handleQuickFingerprintSettings(Ljava/lang/String;)V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    iget-object p0, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "quick_app_via_fingerprint_id_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/settings/InvisibleApi;->getFingerId(Landroid/hardware/fingerprint/Fingerprint;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppStatusReceiver"

    invoke-static {v3, v2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 178
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private handleRemoveTheme(Ljava/lang/String;)V
    .locals 3

    .line 111
    iget-object p0, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 114
    :try_start_0
    invoke-static {}, Lsmartisanos/api/ActivityManagerSmt;->getInstance()Lsmartisanos/api/ActivityManagerSmt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsmartisanos/api/ActivityManagerSmt;->getConfiguration(Landroid/app/ActivityManager;)Landroid/content/res/Configuration;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    invoke-static {}, Lsmartisanos/api/ConfigurationSmt;->getInstance()Lsmartisanos/api/ConfigurationSmt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsmartisanos/api/ConfigurationSmt;->get_customTheme(Landroid/content/res/Configuration;)Landroid/content/res/CustomTheme;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/CustomTheme;->getThemePackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    new-instance p1, Landroid/content/res/CustomTheme;

    const-string v1, "SmartisanOSDefault"

    const-string v2, "com.smartisanos.theme.default"

    invoke-direct {p1, v1, v2}, Landroid/content/res/CustomTheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lsmartisanos/api/ConfigurationSmt;->getInstance()Lsmartisanos/api/ConfigurationSmt;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lsmartisanos/api/ConfigurationSmt;->set_customTheme(Landroid/content/res/Configuration;Landroid/content/res/CustomTheme;)V

    .line 124
    :try_start_1
    invoke-static {}, Lsmartisanos/api/ActivityManagerSmt;->getInstance()Lsmartisanos/api/ActivityManagerSmt;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lsmartisanos/api/ActivityManagerSmt;->updateConfiguration(Landroid/app/ActivityManager;Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private handleSearchItems(Ljava/lang/String;Z)V
    .locals 4

    .line 133
    iget-object p0, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/settingitemsprovider/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/settingitemsprovider/DatabaseHelper;

    move-result-object p0

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2f293bd2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, -0xf365530

    if-eq v0, v1, :cond_1

    const v1, 0x26cbb59e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.smartisanos.recharge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "com.smartisanos.phone_number_assistant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_2
    const-string v0, "com.redteamobile.global.roaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 144
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/settings/settingitemsprovider/DatabaseHelper;->updateGlobalRoaming(Z)V

    goto :goto_2

    :cond_5
    const p1, 0x7f120877

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/settingitemsprovider/DatabaseHelper;->updateSearchable(IZ)V

    goto :goto_2

    :cond_6
    const p1, 0x7f120ea1

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/settingitemsprovider/DatabaseHelper;->updateSearchable(IZ)V

    :goto_2
    return-void
.end method

.method private onAppInstalled(Ljava/lang/String;)V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppInstalled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStatusReceiver"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/android/settings/AppStatusReceiver$Processor;->handleSearchItems(Ljava/lang/String;Z)V

    return-void
.end method

.method private onAppRemoved(Ljava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStatusReceiver"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/AppStatusReceiver$Processor;->handleQuickFingerprintSettings(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/AppStatusReceiver$Processor;->resetSideKeyOptionsToScreenShot(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lcom/android/settings/AppStatusReceiver$Processor;->handleSearchItems(Ljava/lang/String;Z)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/AppStatusReceiver$Processor;->handleRemoveTheme(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/AppStatusReceiver$Processor;->handleCmelRemove(Ljava/lang/String;)V

    return-void
.end method

.method private onAppUpdated(Ljava/lang/String;)V
    .locals 1

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAppUpdated "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppStatusReceiver"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetSideKeyOptionsToScreenShot(Ljava/lang/String;)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "squeeze_side_buttons"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "\\/"

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    .line 156
    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    iget-object p0, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screenshot"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public process(Landroid/content/Intent;)V
    .locals 4

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android.intent.extra.REPLACING"

    .line 60
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , isReplacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppStatusReceiver"

    invoke-static {v3, v2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 64
    invoke-direct {p0, v1}, Lcom/android/settings/AppStatusReceiver$Processor;->onAppUpdated(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 68
    invoke-direct {p0, v1}, Lcom/android/settings/AppStatusReceiver$Processor;->onAppInstalled(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 70
    invoke-direct {p0, v1}, Lcom/android/settings/AppStatusReceiver$Processor;->onAppRemoved(Ljava/lang/String;)V

    .line 74
    :cond_3
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/AppStatusReceiver$Processor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/applock/data/AppLockListInfo;->newInstance(Landroid/content/Context;)Lcom/android/settings/applock/data/AppLockListInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/applock/data/AppLockListInfo;->loadApplicationInBackground()V
    :try_end_0
    .catch Lcom/smartisanos/securitycenter/exception/ServiceNotBindException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "AppStatusReceiver could not loadApplicationInBackground!"

    .line 76
    invoke-static {v3, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/android/settings/applock/event/AppStateChangeEvent;

    invoke-direct {p1}, Lcom/android/settings/applock/event/AppStateChangeEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method
