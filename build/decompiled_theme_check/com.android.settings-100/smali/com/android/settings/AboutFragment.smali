.class public Lcom/android/settings/AboutFragment;
.super Lcom/android/settings/SupportFragment;
.source "AboutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AboutFragment$FakeInfo;
    }
.end annotation


# static fields
.field static final CPU_855PLUS:Ljava/lang/String; = "Qualcomm\u00ae Snapdragon\u2122 855 Plus"

.field static final CPU_865:Ljava/lang/String; = "Qualcomm\u00ae Snapdragon\u2122 865"

.field private static final FILENAME_MSV:Ljava/lang/String; = "/sys/board_properties/soc/msv"

.field private static final FILENAME_PROC_CPUINFO:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final FILENAME_PROC_MEMINFO:Ljava/lang/String; = "/proc/meminfo"

.field private static final FILENAME_PROC_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final LOG_TAG:Ljava/lang/String; = "DeviceInfoSettings"

.field public static final PREF_FILE:Ljava/lang/String; = "development"

.field public static final PREF_SHOW:Ljava/lang/String; = "show"

.field private static final REQUEST_CONFIRM_PWD_CODE:I = 0x1

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7

.field private static mShowFakeInfo:Z


# instance fields
.field private count:I

.field private lastClickTime:J

.field private mAboutContainer:Landroid/widget/ScrollView;

.field private mActivityStackView:Lsmartisanos/view/ActivityStackView;

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mDeviceName:Lsmartisanos/widget/SettingItemText;

.field private mDeviceStatus:Lsmartisanos/widget/SettingItemText;

.field private mLawInfo:Lsmartisanos/widget/SettingItemText;

.field private mLogoView:Landroid/widget/ImageView;

.field private mOSVersionOnLogo:Landroid/widget/TextView;

.field private mTitleStringResId:I

.field private mUserFeedback:Lsmartisanos/widget/SettingItemText;

.field private mViewBasebandVersion:Lcom/android/settings/AboutStaticItem;

.field private mViewBuildDate:Lcom/android/settings/AboutStaticItem;

.field private mViewDeviceCpu:Lcom/android/settings/AboutStaticItem;

.field private mViewDeviceMemory:Lcom/android/settings/AboutStaticItem;

.field private mViewDeviceModel:Lcom/android/settings/AboutStaticItem;

.field private mViewDeviceVersionVS:Landroid/view/ViewStub;

.field private mViewFirmwareVersion:Lcom/android/settings/AboutStaticItem;

.field private mViewHarewareVersionVS:Landroid/view/ViewStub;

.field private mViewKernelVersion:Lcom/android/settings/AboutStaticItem;

.field private mViewModVersion:Lcom/android/settings/AboutStaticItem;

.field private mViewSpecialVersionVS:Landroid/view/ViewStub;

.field private mWarranty:Lsmartisanos/widget/SettingItemText;

.field private prefMgr:Lcom/android/settings/PreferenceMgr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    const/4 v0, 0x7

    .line 117
    iput v0, p0, Lcom/android/settings/AboutFragment;->mDevHitCountdown:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AboutFragment;)Landroid/view/ViewStub;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->mViewDeviceVersionVS:Landroid/view/ViewStub;

    return-object p0
.end method

.method private enableDevelopSettings()V
    .locals 3

    const-string v0, "development"

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AboutFragment;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 387
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f12127c

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    .line 389
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getBasebandSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 425
    invoke-static {v0, p1}, Lcom/android/settings/MultiSDKAdapter;->getBasebandInfo(Landroid/telephony/TelephonyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120667

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getDeviceProcessorInfo()Ljava/lang/String;
    .locals 4

    const v0, 0x7f120667

    .line 544
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "Hardware"

    .line 549
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Hardware\\s*:\\s*(.*)$"

    .line 550
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 551
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 552
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 556
    :cond_1
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 559
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "DeviceInfoSettings"

    const-string v3, "IO Exception when getting cpuinfo for Device Info screen"

    .line 561
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    invoke-virtual {p0, v0}, Lcom/android/settings/AboutFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 7

    const-string p0, "\n"

    const-string v0, "Unavailable"

    const-string v1, "DeviceInfoSettings"

    :try_start_0
    const-string v2, "/proc/version"

    .line 451
    invoke-static {v2}, Lcom/android/settings/AboutFragment;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 453
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+@[^\\s@]+)\\)+\\s+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const-string v3, "\\(clang.*\\)\\s+"

    goto :goto_1

    :cond_1
    const-string v3, "\\(gcc.*\\)\\s+"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "([^\\s]+)\\s+(?:SMP\\s+)?(?:PREEMPT\\s+)?(.+)"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 467
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 468
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_2

    .line 469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex did not match on /proc/version: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 471
    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_3

    .line 472
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regex match on /proc/version only returned "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " groups"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 476
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    .line 477
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    .line 480
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private getHardwareVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo p0, "ro.product.hw.version"

    const-string v0, ""

    .line 574
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 575
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 578
    :cond_0
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "OD101"

    .line 579
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MMR500030"

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "OD103"

    .line 581
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "OD105"

    .line 583
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "MMR500032"

    goto :goto_0

    :cond_3
    const-string v0, "OS105"

    .line 585
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string v1, "MMR500040"

    goto :goto_0

    :cond_4
    const-string v1, "XXXXXXX"

    :goto_0
    return-object v1
.end method

.method private getMemInfo()Ljava/lang/String;
    .locals 5

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->getMemInfoKBSize()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " MB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMemInfoKBSize()J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    const-string p0, "/proc/meminfo"

    .line 522
    invoke-static {p0}, Lcom/android/settings/AboutFragment;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "\\s+"

    .line 524
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 525
    array-length v2, p0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 526
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 530
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-wide v0
.end method

.method public static getMsvSuffix()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "/sys/board_properties/soc/msv"

    .line 497
    invoke-static {v0}, Lcom/android/settings/AboutFragment;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 500
    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getShortSmartisanOSVersion()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "ro.smartisan.version"

    .line 254
    invoke-direct {p0, v0}, Lcom/android/settings/AboutFragment;->getValueSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "-"

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    array-length v1, v0

    if-lez v1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getValueSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120667

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 415
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isNeedShowHardwareVersion()Z
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lsmartisanos/util/config/Features;->isFeatureCMCCEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x100

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 442
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 445
    throw p0
.end method

.method private setShowRightModVersion(Z)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->prefMgr:Lcom/android/settings/PreferenceMgr;

    const-string/jumbo v1, "show_right_mod_version"

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/PreferenceMgr;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewModVersion:Lcom/android/settings/AboutStaticItem;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "ro.smartisan.version"

    invoke-direct {p0, p1}, Lcom/android/settings/AboutFragment;->getValueSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->getShortSmartisanOSVersion()Ljava/lang/String;

    move-result-object p0

    .line 405
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method private showBugReportDialog()V
    .locals 2

    .line 369
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040120

    .line 370
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104011a

    .line 371
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/AboutFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AboutFragment$2;-><init>(Lcom/android/settings/AboutFragment;)V

    const p0, 0x1040697

    .line 372
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f1203dd

    const/4 v1, 0x0

    .line 378
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 379
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRightModVersion()Z
    .locals 2

    .line 410
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->prefMgr:Lcom/android/settings/PreferenceMgr;

    const-string/jumbo v0, "show_right_mod_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/PreferenceMgr;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private startByActivityStackView(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x10008000

    .line 597
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 598
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mActivityStackView:Lsmartisanos/view/ActivityStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/view/ActivityStackView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mActivityStackView:Lsmartisanos/view/ActivityStackView;

    invoke-virtual {v0, p1}, Lsmartisanos/view/ActivityStackView;->startActivity(Landroid/content/Intent;)V

    .line 600
    const-class p1, Lcom/android/settings/EmptyFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->start(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 394
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SupportFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->enableDevelopSettings()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 267
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mActivityStackView:Lsmartisanos/view/ActivityStackView;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lsmartisanos/view/ActivityStackView;->clearContent()V

    .line 269
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mActivityStackView:Lsmartisanos/view/ActivityStackView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lsmartisanos/view/ActivityStackView;->setVisibility(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mDeviceStatus:Lsmartisanos/widget/SettingItemText;

    const-string v1, "android.intent.action.MAIN"

    if-ne v0, p1, :cond_2

    .line 273
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 274
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->_mActivity:Landroid/app/Activity;

    const-class v1, Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "back_text_id"

    .line 276
    iget v1, p0, Lcom/android/settings/AboutFragment;->mTitleStringResId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mActivityStackView:Lsmartisanos/view/ActivityStackView;

    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0, p1}, Lcom/android/settings/AboutFragment;->startByActivityStackView(Landroid/content/Intent;)V

    return-void

    .line 281
    :cond_1
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/16 p0, 0xb55

    .line 285
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_2

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mDeviceName:Lsmartisanos/widget/SettingItemText;

    if-ne v0, p1, :cond_3

    .line 287
    const-class p1, Lcom/android/settings/DeviceNameFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0xb57

    .line 288
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_2

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mLawInfo:Lsmartisanos/widget/SettingItemText;

    if-ne v0, p1, :cond_4

    .line 290
    const-class p1, Lcom/android/settings/LawInfoFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->start(Ljava/lang/Class;)V

    const/16 p0, 0xb58

    .line 291
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_2

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mWarranty:Lsmartisanos/widget/SettingItemText;

    if-ne v0, p1, :cond_6

    .line 293
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 294
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.smartisanos.cloudsync"

    const-string v1, "com.smartisanos.support.SupportActivity"

    .line 295
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "smartisan_origin_app_tag"

    const-string/jumbo v1, "settings"

    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mActivityStackView:Lsmartisanos/view/ActivityStackView;

    if-eqz v0, :cond_5

    .line 299
    invoke-direct {p0, p1}, Lcom/android/settings/AboutFragment;->startByActivityStackView(Landroid/content/Intent;)V

    return-void

    :cond_5
    const/high16 v0, 0x20000000

    .line 302
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const/16 p0, 0xb59

    .line 304
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onItemClick(I)V

    goto/16 :goto_2

    :cond_6
    const v0, 0x7f0a000b

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_9

    .line 306
    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->showRightModVersion()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 308
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 309
    iget-wide v3, p0, Lcom/android/settings/AboutFragment;->lastClickTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x12c

    cmp-long p1, v3, v5

    if-ltz p1, :cond_8

    .line 310
    iput v2, p0, Lcom/android/settings/AboutFragment;->count:I

    goto :goto_1

    .line 312
    :cond_8
    iget p1, p0, Lcom/android/settings/AboutFragment;->count:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/settings/AboutFragment;->count:I

    .line 314
    :goto_1
    iput-wide v0, p0, Lcom/android/settings/AboutFragment;->lastClickTime:J

    .line 315
    iget p1, p0, Lcom/android/settings/AboutFragment;->count:I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_13

    .line 316
    invoke-direct {p0, v2}, Lcom/android/settings/AboutFragment;->setShowRightModVersion(Z)V

    goto/16 :goto_2

    .line 318
    :cond_9
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewModVersion:Lcom/android/settings/AboutStaticItem;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_11

    .line 320
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 322
    :cond_a
    iget p1, p0, Lcom/android/settings/AboutFragment;->mDevHitCountdown:I

    if-lez p1, :cond_f

    sub-int/2addr p1, v2

    .line 323
    iput p1, p0, Lcom/android/settings/AboutFragment;->mDevHitCountdown:I

    .line 324
    iget p1, p0, Lcom/android/settings/AboutFragment;->mDevHitCountdown:I

    if-nez p1, :cond_d

    .line 325
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    if-eqz p1, :cond_b

    .line 326
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 329
    :cond_b
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 331
    new-instance p1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/AboutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/4 p0, 0x0

    const/4 v0, 0x2

    .line 332
    invoke-virtual {p1, v2, p0, v0, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;IZ)Z

    goto/16 :goto_2

    .line 335
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->enableDevelopSettings()V

    goto/16 :goto_2

    :cond_d
    if-lez p1, :cond_13

    const/4 v0, 0x5

    if-ge p1, v0, :cond_13

    .line 339
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    if-eqz p1, :cond_e

    .line 340
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 342
    :cond_e
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/AboutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10001b

    iget v4, p0, Lcom/android/settings/AboutFragment;->mDevHitCountdown:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 343
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 342
    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    .line 345
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_f
    if-gez p1, :cond_13

    .line 348
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    if-eqz p1, :cond_10

    .line 349
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 351
    :cond_10
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f12127b

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    .line 353
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 355
    :cond_11
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mUserFeedback:Lsmartisanos/widget/SettingItemText;

    if-ne v0, p1, :cond_13

    .line 356
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    const-string v0, "com.smartisanos.bug2go"

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 357
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 358
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.smartisanos.bug2go.ui.MainActivity"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "activity"

    .line 360
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 363
    :cond_12
    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->showBugReportDialog()V

    :cond_13
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0d001c

    .line 127
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mRootView:Landroid/view/View;

    .line 129
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/PreferenceMgr;->getInstance(Landroid/content/Context;)Lcom/android/settings/PreferenceMgr;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->prefMgr:Lcom/android/settings/PreferenceMgr;

    .line 130
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lsmartisanos/util/config/Features;->isFeatureCTEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    sput-boolean p3, Lcom/android/settings/AboutFragment;->mShowFakeInfo:Z

    goto :goto_0

    .line 133
    :cond_0
    sget-object p1, Lsmartisanos/util/DeviceType;->UNKNOWN:Lsmartisanos/util/DeviceType;

    invoke-static {p1}, Lsmartisanos/util/DeviceType;->is(Lsmartisanos/util/DeviceType;)Z

    move-result p1

    sput-boolean p1, Lcom/android/settings/AboutFragment;->mShowFakeInfo:Z

    :goto_0
    const p1, 0x7f12002e

    .line 136
    iput p1, p0, Lcom/android/settings/AboutFragment;->mTitleStringResId:I

    const p1, 0x7f0a06e4

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mAboutContainer:Landroid/widget/ScrollView;

    const p1, 0x7f0a04b7

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mDeviceStatus:Lsmartisanos/widget/SettingItemText;

    .line 139
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mDeviceStatus:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a04b6

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mDeviceName:Lsmartisanos/widget/SettingItemText;

    .line 142
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mDeviceName:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a051d

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mLawInfo:Lsmartisanos/widget/SettingItemText;

    .line 145
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mLawInfo:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a058d

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mWarranty:Lsmartisanos/widget/SettingItemText;

    .line 147
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mWarranty:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0589

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisanos/widget/SettingItemText;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mUserFeedback:Lsmartisanos/widget/SettingItemText;

    .line 149
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mUserFeedback:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SettingItemText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    const-string p2, "com.smartisanos.bug2go"

    const-string/jumbo v0, "user_feedback"

    invoke-static {p1, p2, v0}, Lcom/android/settings/Utils;->getPackageString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object p2, p0, Lcom/android/settings/AboutFragment;->mUserFeedback:Lsmartisanos/widget/SettingItemText;

    invoke-virtual {p2, p1}, Lsmartisanos/widget/SettingItemText;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/SettingsFeature;->isFeatureDomestic(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mWarranty:Lsmartisanos/widget/SettingItemText;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mLawInfo:Lsmartisanos/widget/SettingItemText;

    const p2, 0x7f08046b

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SettingItemText;->setBackgroundResource(I)V

    :cond_1
    const p1, 0x7f0a023e

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewDeviceModel:Lcom/android/settings/AboutStaticItem;

    const p1, 0x7f0a02f3

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewFirmwareVersion:Lcom/android/settings/AboutStaticItem;

    const p1, 0x7f0a00df

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewBasebandVersion:Lcom/android/settings/AboutStaticItem;

    const p1, 0x7f0a05ae

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewKernelVersion:Lcom/android/settings/AboutStaticItem;

    const p1, 0x7f0a023c

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewDeviceCpu:Lcom/android/settings/AboutStaticItem;

    const p1, 0x7f0a023d

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewDeviceMemory:Lcom/android/settings/AboutStaticItem;

    const p1, 0x7f0a0367

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewHarewareVersionVS:Landroid/view/ViewStub;

    const p1, 0x7f0a0653

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewModVersion:Lcom/android/settings/AboutStaticItem;

    .line 166
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mViewModVersion:Lcom/android/settings/AboutStaticItem;

    invoke-virtual {p1, p0}, Lcom/android/settings/AboutStaticItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a015a

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewBuildDate:Lcom/android/settings/AboutStaticItem;

    const p1, 0x7f0a087e

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewSpecialVersionVS:Landroid/view/ViewStub;

    .line 170
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lsmartisanos/util/config/Features;->isFeatureCMCCEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mViewSpecialVersionVS:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    const p2, 0x7f121382

    .line 172
    invoke-virtual {p1, p2}, Lcom/android/settings/AboutStaticItem;->setTitle(I)V

    const p2, 0x7f12047c

    .line 173
    invoke-virtual {p1, p2}, Lcom/android/settings/AboutStaticItem;->setSummary(I)V

    :cond_2
    const p1, 0x7f0a0244

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mViewDeviceVersionVS:Landroid/view/ViewStub;

    .line 176
    new-instance p1, Lcom/android/settings/AboutFragment$1;

    invoke-direct {p1, p0}, Lcom/android/settings/AboutFragment$1;-><init>(Lcom/android/settings/AboutFragment;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Void;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, p2, p3

    .line 189
    invoke-virtual {p1, p2}, Lcom/android/settings/AboutFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->isNeedShowHardwareVersion()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 191
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mViewHarewareVersionVS:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AboutStaticItem;

    const p2, 0x7f1208e4

    .line 192
    invoke-virtual {p1, p2}, Lcom/android/settings/AboutStaticItem;->setTitle(I)V

    .line 193
    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->getHardwareVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    :cond_3
    const p1, 0x7f0a000b

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mLogoView:Landroid/widget/ImageView;

    .line 196
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/AboutFragment;->getActivityStackView()Lsmartisanos/view/ActivityStackView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mActivityStackView:Lsmartisanos/view/ActivityStackView;

    .line 198
    iget-boolean p1, p0, Lcom/android/settings/AboutFragment;->mIsExtDisplaying:Z

    if-eqz p1, :cond_4

    .line 199
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mAboutContainer:Landroid/widget/ScrollView;

    invoke-virtual {p1, p3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 200
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mLogoView:Landroid/widget/ImageView;

    const p2, 0x7f080059

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p1, 0x7f0a000d

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mOSVersionOnLogo:Landroid/widget/TextView;

    goto :goto_1

    :cond_4
    const p1, 0x7f0a000c

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AboutFragment;->mOSVersionOnLogo:Landroid/widget/TextView;

    .line 205
    :goto_1
    iget-object p1, p0, Lcom/android/settings/AboutFragment;->mOSVersionOnLogo:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onSupportVisible()V
    .locals 6

    .line 211
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportVisible()V

    const/4 v0, 0x0

    const-string v1, "development"

    .line 212
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AboutFragment;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "show"

    .line 213
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/android/settings/AboutFragment;->mDevHitCountdown:I

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/settings/AboutFragment;->mDevHitToast:Landroid/widget/Toast;

    .line 217
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewDeviceModel:Lcom/android/settings/AboutStaticItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/AboutFragment;->getMsvSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewFirmwareVersion:Lcom/android/settings/AboutStaticItem;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewBasebandVersion:Lcom/android/settings/AboutStaticItem;

    const-string v1, "gsm.version.baseband"

    invoke-direct {p0, v1}, Lcom/android/settings/AboutFragment;->getBasebandSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewKernelVersion:Lcom/android/settings/AboutStaticItem;

    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 222
    sget-object v0, Lsmartisanos/util/DeviceType;->DELTA:Lsmartisanos/util/DeviceType;

    invoke-static {v0}, Lsmartisanos/util/DeviceType;->is(Lsmartisanos/util/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Qualcomm\u00ae Snapdragon\u2122 855 Plus"

    goto :goto_1

    .line 224
    :cond_1
    sget-object v0, Lsmartisanos/util/DeviceType;->DARWIN:Lsmartisanos/util/DeviceType;

    invoke-static {v0}, Lsmartisanos/util/DeviceType;->is(Lsmartisanos/util/DeviceType;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Qualcomm\u00ae Snapdragon\u2122 865"

    goto :goto_1

    .line 227
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->getDeviceProcessorInfo()Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->getMemInfoKBSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 231
    iget-object v2, p0, Lcom/android/settings/AboutFragment;->mViewDeviceCpu:Lcom/android/settings/AboutStaticItem;

    invoke-virtual {v2, v0}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewDeviceMemory:Lcom/android/settings/AboutStaticItem;

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 237
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->getShortSmartisanOSVersion()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/android/settings/AboutFragment;->mViewModVersion:Lcom/android/settings/AboutStaticItem;

    invoke-direct {p0}, Lcom/android/settings/AboutFragment;->showRightModVersion()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ro.smartisan.version"

    .line 239
    invoke-direct {p0, v2}, Lcom/android/settings/AboutFragment;->getValueSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v0

    .line 238
    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/settings/AboutFragment;->mOSVersionOnLogo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewBuildDate:Lcom/android/settings/AboutStaticItem;

    const-string/jumbo v1, "ro.build.date"

    invoke-direct {p0, v1}, Lcom/android/settings/AboutFragment;->getValueSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 244
    sget-boolean v0, Lcom/android/settings/AboutFragment;->mShowFakeInfo:Z

    if-eqz v0, :cond_6

    .line 245
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewFirmwareVersion:Lcom/android/settings/AboutStaticItem;

    const-string v1, "7.1.1"

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewBasebandVersion:Lcom/android/settings/AboutStaticItem;

    const-string v1, "MPSS.TA.2.3.c1-00167-8953_GEN_PACK-1.100667.1.104080.1"

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewKernelVersion:Lcom/android/settings/AboutStaticItem;

    const-string v1, "3.18.31-ge7912c3\nsmartcm@hardcomp2 #1\nTue Jun 27 07:32:14 CST 2017"

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/AboutFragment;->mViewDeviceCpu:Lcom/android/settings/AboutStaticItem;

    const-string v1, "Qualcomm Technologies, Inc MSM8953Pro"

    invoke-virtual {v0, v1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    .line 249
    iget-object p0, p0, Lcom/android/settings/AboutFragment;->mViewDeviceMemory:Lcom/android/settings/AboutStaticItem;

    const-string v0, "4 GB"

    invoke-virtual {p0, v0}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
