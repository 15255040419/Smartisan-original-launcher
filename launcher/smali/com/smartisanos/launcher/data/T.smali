.class public Lcom/smartisanos/launcher/data/T;
.super Ljava/lang/Object;
.source "SystemPreInstallApps.java"


# static fields
.field public static final AIRDROID:Lcom/smartisanos/launcher/data/S;

.field public static final AOA:Lcom/smartisanos/launcher/data/S;

.field public static final APP_STORE:Lcom/smartisanos/launcher/data/S;

.field public static final AUTO_NAVI:Lcom/smartisanos/launcher/data/S;

.field public static final BROWSER:Lcom/smartisanos/launcher/data/S;

.field public static final CALCULATOR:Lcom/smartisanos/launcher/data/S;

.field public static final CALENDAR:Lcom/smartisanos/launcher/data/S;

.field public static final CAMERA:Lcom/smartisanos/launcher/data/S;

.field public static final CLOCK:Lcom/smartisanos/launcher/data/S;

.field public static final CLOUD_SYNC:Lcom/smartisanos/launcher/data/S;

.field public static final DAXIANG:Lcom/smartisanos/launcher/data/S;

.field public static final DOWNLOAD:Lcom/smartisanos/launcher/data/S;

.field public static final DRIVING_MODE:Lcom/smartisanos/launcher/data/S;

.field public static final DXY:Lcom/smartisanos/launcher/data/S;

.field public static final EMAIL:Lcom/smartisanos/launcher/data/S;

.field public static final FM_RADIO:Lcom/smartisanos/launcher/data/S;

.field public static final FORCE_TOUCH:[Lcom/smartisanos/launcher/data/S;

.field public static final GALLERY:Lcom/smartisanos/launcher/data/S;

.field public static final GAME_STORE:Lcom/smartisanos/launcher/data/S;

.field public static final HANDBOOK:Lcom/smartisanos/launcher/data/S;

.field public static final Ir:Lcom/smartisanos/launcher/data/S;

.field public static final Jr:Lcom/smartisanos/launcher/data/S;

.field public static final Kr:Lcom/smartisanos/launcher/data/S;

.field public static Lr:[[Lcom/smartisanos/launcher/data/S;

.field public static final MMS:Lcom/smartisanos/launcher/data/S;

.field public static final MOMO:Lcom/smartisanos/launcher/data/S;

.field public static final MUSIC:Lcom/smartisanos/launcher/data/S;

.field public static Mr:[[Lcom/smartisanos/launcher/data/S;

.field public static final NOTE:Lcom/smartisanos/launcher/data/S;

.field public static Nr:[Lcom/smartisanos/launcher/data/S;

.field private static final Or:[Lcom/smartisanos/launcher/data/S;

.field public static final PHONE:Lcom/smartisanos/launcher/data/S;

.field private static final Pr:[Lcom/smartisanos/launcher/data/S;

.field private static final Qr:[Lcom/smartisanos/launcher/data/S;

.field public static final RECORDER:Lcom/smartisanos/launcher/data/S;

.field public static final REMOTE_ASSISTANCE:Lcom/smartisanos/launcher/data/S;

.field private static final Rr:[Lcom/smartisanos/launcher/data/S;

.field public static final SARA:Lcom/smartisanos/launcher/data/S;

.field public static final SEARCH:Lcom/smartisanos/launcher/data/S;

.field public static final SECURITY_CENTER:Lcom/smartisanos/launcher/data/S;

.field public static final SETTINGS:Lcom/smartisanos/launcher/data/S;

.field public static final SHOU_JI_GUAN_LI:Lcom/smartisanos/launcher/data/S;

.field public static final SIDEBAR:Lcom/smartisanos/launcher/data/S;

.field public static final SMARTISAN_BBS:Lcom/smartisanos/launcher/data/S;

.field public static final SMARTISAN_SCREEN_RECORDER:Lcom/smartisanos/launcher/data/S;

.field public static final SUPPORT:Lcom/smartisanos/launcher/data/S;

.field public static final SYSTEM_APPS:[Lcom/smartisanos/launcher/data/S;

.field public static final Sr:[Lcom/smartisanos/launcher/data/S;

.field public static final Tr:[Lcom/smartisanos/launcher/data/S;

.field public static final WALLET:Lcom/smartisanos/launcher/data/S;

.field public static final WEATHER:Lcom/smartisanos/launcher/data/S;

.field public static final WECHAT:Lcom/smartisanos/launcher/data/S;

.field public static final WEIBO:Lcom/smartisanos/launcher/data/S;

.field public static final WIZARD:Lcom/smartisanos/launcher/data/S;

.field public static final WPS:Lcom/smartisanos/launcher/data/S;

.field public static final XUEQIU:Lcom/smartisanos/launcher/data/S;

.field public static final YOUDAO:Lcom/smartisanos/launcher/data/S;

.field public static final YOUKU:Lcom/smartisanos/launcher/data/S;

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 1
    const-class v0, Lcom/smartisanos/launcher/data/T;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const/4 v1, 0x0

    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v0, v2, v3, v1}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->PHONE:Lcom/smartisanos/launcher/data/S;

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->BROWSER:Lcom/smartisanos/launcher/data/S;

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->MMS:Lcom/smartisanos/launcher/data/S;

    .line 5
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.appstore"

    const-string v3, "com.smartisanos.appstore.AppStoreActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->APP_STORE:Lcom/smartisanos/launcher/data/S;

    .line 6
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.camera2"

    const-string v3, "com.android.camera.CameraLauncher"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->CAMERA:Lcom/smartisanos/launcher/data/S;

    .line 7
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.gallery3d.app.Gallery"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->GALLERY:Lcom/smartisanos/launcher/data/S;

    .line 8
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v3, "com.android.gallery3d.app.MovieActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->Ir:Lcom/smartisanos/launcher/data/S;

    .line 9
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.notes"

    const-string v3, "com.smartisanos.notes.NotesActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->NOTE:Lcom/smartisanos/launcher/data/S;

    .line 10
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.calendar"

    const-string v3, "com.android.calendar.AllInOneActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->CALENDAR:Lcom/smartisanos/launcher/data/S;

    .line 11
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.clock"

    const-string v3, "com.smartisanos.clock.activity.ClockActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->CLOCK:Lcom/smartisanos/launcher/data/S;

    .line 12
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.music"

    const-string v3, "com.smartisanos.music.activities.MusicMain"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->MUSIC:Lcom/smartisanos/launcher/data/S;

    .line 13
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SETTINGS:Lcom/smartisanos/launcher/data/S;

    .line 14
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.email"

    const-string v3, "com.android.email.activity.Welcome"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->EMAIL:Lcom/smartisanos/launcher/data/S;

    .line 15
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.calculator"

    const-string v3, "com.smartisanos.calculator.Calculator"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->CALCULATOR:Lcom/smartisanos/launcher/data/S;

    .line 16
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.recorder"

    const-string v3, "com.smartisanos.recorder.activity.EmptyActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->RECORDER:Lcom/smartisanos/launcher/data/S;

    .line 17
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.weather"

    const-string v3, "com.smartisanos.weather.CityWeather"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->WEATHER:Lcom/smartisanos/launcher/data/S;

    .line 18
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.quicksearchbox;com.android.quicksearchbox.SearchActivity"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.smartisanos.quicksearch"

    const-string v4, "com.android.quicksearchbox.SearchActivity"

    invoke-direct {v0, v3, v4, v2}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    .line 19
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.setupwizard"

    const-string v3, "com.smartisanos.setupwizard.launcherguidance.LauncherGuidanceActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    .line 20
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.cloudsync;com.smartisanos.accounts.AccountsActivity"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.smartisanos.cloudsync"

    const-string v4, "com.smartisanos.cloudsync.AccountsActivityLauncher"

    invoke-direct {v0, v3, v4, v2}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->CLOUD_SYNC:Lcom/smartisanos/launcher/data/S;

    .line 21
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.providers.downloads.ui"

    const-string v3, "com.android.providers.downloads.ui.SplashActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->DOWNLOAD:Lcom/smartisanos/launcher/data/S;

    .line 22
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.gamestore"

    const-string v3, "com.smartisanos.gamestore.GameStoreActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->GAME_STORE:Lcom/smartisanos/launcher/data/S;

    .line 23
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.sara"

    const-string v3, "com.smartisanos.sara.SpeechNowActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SARA:Lcom/smartisanos/launcher/data/S;

    .line 24
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.securitycenter"

    const-string v3, "com.smartisanos.securitycenter.SecurityCenterActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SECURITY_CENTER:Lcom/smartisanos/launcher/data/S;

    .line 25
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.security"

    const-string v3, "com.smartisanos.securitycenter.MainActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SHOU_JI_GUAN_LI:Lcom/smartisanos/launcher/data/S;

    .line 26
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.handinhand"

    const-string v3, "com.smartisanos.handinhand.activity.HomeActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->REMOTE_ASSISTANCE:Lcom/smartisanos/launcher/data/S;

    .line 27
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.drivingmode"

    const-string v3, "com.smartisanos.drivingmode.MainActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->DRIVING_MODE:Lcom/smartisanos/launcher/data/S;

    .line 28
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.filemanager"

    const-string v3, "com.smartisan.filemanager.MainActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->Jr:Lcom/smartisanos/launcher/data/S;

    .line 29
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.smartdisplay"

    const-string v3, "com.smartisanos.smartdisplay.MainActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->Kr:Lcom/smartisanos/launcher/data/S;

    .line 30
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.fmradio"

    const-string v3, "com.android.fmradio.FmRadio"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->FM_RADIO:Lcom/smartisanos/launcher/data/S;

    .line 31
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.screenrecorder"

    const-string v3, "com.smartisanos.screenrecorder.EmptyActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SMARTISAN_SCREEN_RECORDER:Lcom/smartisanos/launcher/data/S;

    .line 32
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.wallet"

    const-string v3, "com.smartisanos.wallet.WalletMainActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->WALLET:Lcom/smartisanos/launcher/data/S;

    .line 33
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.sidebar"

    const-string v3, "com.smartisanos.sidebar.setting.SettingActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SIDEBAR:Lcom/smartisanos/launcher/data/S;

    .line 34
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.support"

    const-string v3, "com.smartisanos.support.activity.MainActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SUPPORT:Lcom/smartisanos/launcher/data/S;

    .line 35
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.handbook"

    const-string v3, "com.smartisanos.handbook.activity.MainActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->HANDBOOK:Lcom/smartisanos/launcher/data/S;

    .line 36
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisan.bbs"

    const-string v3, "com.smartisan.bbs.activity.MainActivity_"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SMARTISAN_BBS:Lcom/smartisanos/launcher/data/S;

    .line 37
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "org.idaxiang.android"

    const-string v3, "org.idaxiang.android.ui.SplashActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->DAXIANG:Lcom/smartisanos/launcher/data/S;

    .line 38
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.immomo.momo"

    const-string v3, "com.immomo.momo.android.activity.WelcomeActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->MOMO:Lcom/smartisanos/launcher/data/S;

    .line 39
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.sina.weibo"

    const-string v3, "com.sina.weibo.SplashActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->WEIBO:Lcom/smartisanos/launcher/data/S;

    .line 40
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.xueqiu.android"

    const-string v3, "com.xueqiu.android.view.WelcomeActivityAlias"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->XUEQIU:Lcom/smartisanos/launcher/data/S;

    .line 41
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.sand.airdroid"

    const-string v3, "com.sand.airdroid.ui.splash.SplashActivity_"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->AIRDROID:Lcom/smartisanos/launcher/data/S;

    .line 42
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.youdao.dict"

    const-string v3, "com.youdao.dict.activity.DictSplashActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->YOUDAO:Lcom/smartisanos/launcher/data/S;

    .line 43
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "cn.dxy.android.aspirin"

    const-string v3, "cn.dxy.android.aspirin.ui.activity.StartupActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->DXY:Lcom/smartisanos/launcher/data/S;

    .line 44
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.youku.phone"

    const-string v3, "com.youku.phone.ActivityWelcomeCopy"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->YOUKU:Lcom/smartisanos/launcher/data/S;

    .line 45
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.autonavi.minimap"

    const-string v3, "com.autonavi.minimap.Splashy"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->AUTO_NAVI:Lcom/smartisanos/launcher/data/S;

    .line 46
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "cn.wps.moffice_eng"

    const-string v3, "cn.wps.moffice.documentmanager.PreStartActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->WPS:Lcom/smartisanos/launcher/data/S;

    .line 47
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->WECHAT:Lcom/smartisanos/launcher/data/S;

    .line 48
    new-instance v0, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.smartfolder.aoa"

    const-string v3, "com.smartisanos.smartfolder.aoa.MainActivity"

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/smartisanos/launcher/data/T;->AOA:Lcom/smartisanos/launcher/data/S;

    const/16 v0, 0x21

    new-array v0, v0, [Lcom/smartisanos/launcher/data/S;

    .line 49
    sget-object v2, Lcom/smartisanos/launcher/data/T;->PHONE:Lcom/smartisanos/launcher/data/S;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v4, Lcom/smartisanos/launcher/data/T;->BROWSER:Lcom/smartisanos/launcher/data/S;

    const/4 v5, 0x1

    aput-object v4, v0, v5

    sget-object v6, Lcom/smartisanos/launcher/data/T;->MMS:Lcom/smartisanos/launcher/data/S;

    const/4 v7, 0x2

    aput-object v6, v0, v7

    sget-object v8, Lcom/smartisanos/launcher/data/T;->APP_STORE:Lcom/smartisanos/launcher/data/S;

    const/4 v9, 0x3

    aput-object v8, v0, v9

    sget-object v10, Lcom/smartisanos/launcher/data/T;->CAMERA:Lcom/smartisanos/launcher/data/S;

    const/4 v11, 0x4

    aput-object v10, v0, v11

    sget-object v12, Lcom/smartisanos/launcher/data/T;->GALLERY:Lcom/smartisanos/launcher/data/S;

    const/4 v13, 0x5

    aput-object v12, v0, v13

    sget-object v14, Lcom/smartisanos/launcher/data/T;->NOTE:Lcom/smartisanos/launcher/data/S;

    const/4 v15, 0x6

    aput-object v14, v0, v15

    sget-object v16, Lcom/smartisanos/launcher/data/T;->CALENDAR:Lcom/smartisanos/launcher/data/S;

    const/16 v17, 0x7

    aput-object v16, v0, v17

    sget-object v18, Lcom/smartisanos/launcher/data/T;->CLOCK:Lcom/smartisanos/launcher/data/S;

    const/16 v19, 0x8

    aput-object v18, v0, v19

    sget-object v20, Lcom/smartisanos/launcher/data/T;->MUSIC:Lcom/smartisanos/launcher/data/S;

    const/16 v15, 0x9

    aput-object v20, v0, v15

    sget-object v22, Lcom/smartisanos/launcher/data/T;->SETTINGS:Lcom/smartisanos/launcher/data/S;

    const/16 v23, 0xa

    aput-object v22, v0, v23

    sget-object v24, Lcom/smartisanos/launcher/data/T;->EMAIL:Lcom/smartisanos/launcher/data/S;

    const/16 v25, 0xb

    aput-object v24, v0, v25

    sget-object v26, Lcom/smartisanos/launcher/data/T;->CALCULATOR:Lcom/smartisanos/launcher/data/S;

    const/16 v27, 0xc

    aput-object v26, v0, v27

    sget-object v28, Lcom/smartisanos/launcher/data/T;->GAME_STORE:Lcom/smartisanos/launcher/data/S;

    const/16 v29, 0xd

    aput-object v28, v0, v29

    sget-object v29, Lcom/smartisanos/launcher/data/T;->WEATHER:Lcom/smartisanos/launcher/data/S;

    const/16 v30, 0xe

    aput-object v29, v0, v30

    sget-object v30, Lcom/smartisanos/launcher/data/T;->SECURITY_CENTER:Lcom/smartisanos/launcher/data/S;

    const/16 v31, 0xf

    aput-object v30, v0, v31

    sget-object v31, Lcom/smartisanos/launcher/data/T;->SHOU_JI_GUAN_LI:Lcom/smartisanos/launcher/data/S;

    const/16 v32, 0x10

    aput-object v31, v0, v32

    sget-object v31, Lcom/smartisanos/launcher/data/T;->RECORDER:Lcom/smartisanos/launcher/data/S;

    const/16 v32, 0x11

    aput-object v31, v0, v32

    sget-object v32, Lcom/smartisanos/launcher/data/T;->SEARCH:Lcom/smartisanos/launcher/data/S;

    const/16 v33, 0x12

    aput-object v32, v0, v33

    sget-object v33, Lcom/smartisanos/launcher/data/T;->CLOUD_SYNC:Lcom/smartisanos/launcher/data/S;

    const/16 v34, 0x13

    aput-object v33, v0, v34

    sget-object v34, Lcom/smartisanos/launcher/data/T;->DOWNLOAD:Lcom/smartisanos/launcher/data/S;

    const/16 v35, 0x14

    aput-object v34, v0, v35

    sget-object v35, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    const/16 v36, 0x15

    aput-object v35, v0, v36

    sget-object v36, Lcom/smartisanos/launcher/data/T;->SARA:Lcom/smartisanos/launcher/data/S;

    const/16 v37, 0x16

    aput-object v36, v0, v37

    sget-object v37, Lcom/smartisanos/launcher/data/T;->DRIVING_MODE:Lcom/smartisanos/launcher/data/S;

    const/16 v38, 0x17

    aput-object v37, v0, v38

    sget-object v37, Lcom/smartisanos/launcher/data/T;->REMOTE_ASSISTANCE:Lcom/smartisanos/launcher/data/S;

    const/16 v38, 0x18

    aput-object v37, v0, v38

    sget-object v37, Lcom/smartisanos/launcher/data/T;->Jr:Lcom/smartisanos/launcher/data/S;

    const/16 v38, 0x19

    aput-object v37, v0, v38

    sget-object v37, Lcom/smartisanos/launcher/data/T;->FM_RADIO:Lcom/smartisanos/launcher/data/S;

    const/16 v38, 0x1a

    aput-object v37, v0, v38

    sget-object v37, Lcom/smartisanos/launcher/data/T;->SMARTISAN_SCREEN_RECORDER:Lcom/smartisanos/launcher/data/S;

    const/16 v38, 0x1b

    aput-object v37, v0, v38

    sget-object v37, Lcom/smartisanos/launcher/data/T;->WALLET:Lcom/smartisanos/launcher/data/S;

    const/16 v38, 0x1c

    aput-object v37, v0, v38

    sget-object v37, Lcom/smartisanos/launcher/data/T;->SIDEBAR:Lcom/smartisanos/launcher/data/S;

    const/16 v38, 0x1d

    aput-object v37, v0, v38

    sget-object v38, Lcom/smartisanos/launcher/data/T;->SUPPORT:Lcom/smartisanos/launcher/data/S;

    const/16 v39, 0x1e

    aput-object v38, v0, v39

    sget-object v38, Lcom/smartisanos/launcher/data/T;->AOA:Lcom/smartisanos/launcher/data/S;

    const/16 v39, 0x1f

    aput-object v38, v0, v39

    sget-object v38, Lcom/smartisanos/launcher/data/T;->HANDBOOK:Lcom/smartisanos/launcher/data/S;

    const/16 v39, 0x20

    aput-object v38, v0, v39

    sput-object v0, Lcom/smartisanos/launcher/data/T;->SYSTEM_APPS:[Lcom/smartisanos/launcher/data/S;

    .line 50
    sput-object v1, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    .line 51
    sput-object v1, Lcom/smartisanos/launcher/data/T;->Mr:[[Lcom/smartisanos/launcher/data/S;

    .line 52
    sput-object v1, Lcom/smartisanos/launcher/data/T;->Nr:[Lcom/smartisanos/launcher/data/S;

    new-array v0, v15, [Lcom/smartisanos/launcher/data/S;

    aput-object v8, v0, v3

    aput-object v10, v0, v5

    aput-object v12, v0, v7

    aput-object v14, v0, v9

    aput-object v16, v0, v11

    aput-object v18, v0, v13

    const/4 v1, 0x6

    aput-object v20, v0, v1

    aput-object v22, v0, v17

    aput-object v24, v0, v19

    .line 53
    sput-object v0, Lcom/smartisanos/launcher/data/T;->Or:[Lcom/smartisanos/launcher/data/S;

    new-array v0, v15, [Lcom/smartisanos/launcher/data/S;

    aput-object v26, v0, v3

    aput-object v28, v0, v5

    aput-object v29, v0, v7

    aput-object v30, v0, v9

    aput-object v31, v0, v11

    aput-object v32, v0, v13

    aput-object v33, v0, v1

    aput-object v34, v0, v17

    aput-object v35, v0, v19

    .line 54
    sput-object v0, Lcom/smartisanos/launcher/data/T;->Pr:[Lcom/smartisanos/launcher/data/S;

    new-array v0, v15, [Lcom/smartisanos/launcher/data/S;

    .line 55
    sget-object v1, Lcom/smartisanos/launcher/data/T;->SMARTISAN_BBS:Lcom/smartisanos/launcher/data/S;

    aput-object v1, v0, v3

    sget-object v38, Lcom/smartisanos/launcher/data/T;->MOMO:Lcom/smartisanos/launcher/data/S;

    aput-object v38, v0, v5

    sget-object v38, Lcom/smartisanos/launcher/data/T;->WEIBO:Lcom/smartisanos/launcher/data/S;

    aput-object v38, v0, v7

    sget-object v38, Lcom/smartisanos/launcher/data/T;->YOUKU:Lcom/smartisanos/launcher/data/S;

    aput-object v38, v0, v9

    sget-object v38, Lcom/smartisanos/launcher/data/T;->YOUDAO:Lcom/smartisanos/launcher/data/S;

    aput-object v38, v0, v11

    sget-object v38, Lcom/smartisanos/launcher/data/T;->AIRDROID:Lcom/smartisanos/launcher/data/S;

    aput-object v38, v0, v13

    sget-object v38, Lcom/smartisanos/launcher/data/T;->WPS:Lcom/smartisanos/launcher/data/S;

    const/16 v21, 0x6

    aput-object v38, v0, v21

    sget-object v38, Lcom/smartisanos/launcher/data/T;->DXY:Lcom/smartisanos/launcher/data/S;

    aput-object v38, v0, v17

    sget-object v38, Lcom/smartisanos/launcher/data/T;->XUEQIU:Lcom/smartisanos/launcher/data/S;

    aput-object v38, v0, v19

    sput-object v0, Lcom/smartisanos/launcher/data/T;->Qr:[Lcom/smartisanos/launcher/data/S;

    new-array v0, v7, [Lcom/smartisanos/launcher/data/S;

    .line 56
    sget-object v38, Lcom/smartisanos/launcher/data/T;->AUTO_NAVI:Lcom/smartisanos/launcher/data/S;

    aput-object v38, v0, v3

    sget-object v38, Lcom/smartisanos/launcher/data/T;->DAXIANG:Lcom/smartisanos/launcher/data/S;

    aput-object v38, v0, v5

    sput-object v0, Lcom/smartisanos/launcher/data/T;->Rr:[Lcom/smartisanos/launcher/data/S;

    new-array v0, v7, [Lcom/smartisanos/launcher/data/S;

    aput-object v29, v0, v3

    aput-object v16, v0, v5

    .line 57
    sput-object v0, Lcom/smartisanos/launcher/data/T;->Sr:[Lcom/smartisanos/launcher/data/S;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/smartisanos/launcher/data/S;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    const/4 v2, 0x6

    aput-object v14, v0, v2

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    aput-object v20, v0, v15

    aput-object v22, v0, v23

    aput-object v24, v0, v25

    aput-object v26, v0, v27

    const/16 v2, 0xd

    aput-object v31, v0, v2

    const/16 v2, 0xe

    aput-object v29, v0, v2

    const/16 v2, 0xf

    aput-object v32, v0, v2

    const/16 v2, 0x10

    aput-object v35, v0, v2

    const/16 v2, 0x11

    aput-object v33, v0, v2

    const/16 v2, 0x12

    aput-object v34, v0, v2

    const/16 v2, 0x13

    aput-object v28, v0, v2

    const/16 v2, 0x14

    aput-object v36, v0, v2

    const/16 v2, 0x15

    aput-object v30, v0, v2

    .line 58
    sput-object v0, Lcom/smartisanos/launcher/data/T;->Tr:[Lcom/smartisanos/launcher/data/S;

    new-array v0, v13, [Lcom/smartisanos/launcher/data/S;

    aput-object v36, v0, v3

    aput-object v1, v0, v5

    aput-object v33, v0, v7

    aput-object v24, v0, v9

    aput-object v37, v0, v11

    .line 59
    sput-object v0, Lcom/smartisanos/launcher/data/T;->FORCE_TOUCH:[Lcom/smartisanos/launcher/data/S;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Q(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/T;->Sr:[Lcom/smartisanos/launcher/data/S;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2
    iget-object v4, v4, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static R(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/T;->FORCE_TOUCH:[Lcom/smartisanos/launcher/data/S;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2
    iget-object v4, v4, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static S(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/T;->Tr:[Lcom/smartisanos/launcher/data/S;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2
    iget-object v4, v4, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static b(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/smartisanos/launcher/data/S;
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, p0}, Lcom/smartisanos/launcher/data/T;->d(Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2
    array-length v1, p1

    if-lez v1, :cond_5

    const/4 v1, 0x0

    .line 3
    aget-object v2, p1, v1

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, ";"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 7
    aget-object v1, v2, v1

    .line 8
    aget-object v2, v2, v5

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    new-instance v3, Lcom/smartisanos/launcher/data/S;

    invoke-direct {v3, v1, v2}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error pkgAndCmp length ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_3

    .line 14
    array-length v1, p1

    if-le v1, v5, :cond_3

    .line 15
    array-length v1, p1

    sub-int/2addr v1, v5

    new-array v1, v1, [Ljava/lang/String;

    .line 16
    :goto_1
    array-length v2, p1

    if-ge v5, v2, :cond_2

    add-int/lit8 v2, v5, -0x1

    .line 17
    aget-object v4, p1, v5

    aput-object v4, v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iput-object v1, v3, Lcom/smartisanos/launcher/data/S;->Gr:[Ljava/lang/String;

    :cond_3
    move-object v0, v3

    goto :goto_2

    .line 19
    :cond_4
    sget-object p1, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "info is empty"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_5
    sget-object p1, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "infos is null"

    invoke-virtual {p1, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-nez v0, :cond_6

    .line 22
    sget-object p1, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] to app error !"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method private static b(Landroid/content/res/Resources;I)[Ljava/lang/String;
    .locals 1

    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 24
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 25
    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 26
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    :cond_1
    return-object p0
.end method

.method private static d(Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "array"

    const-string v2, "com.smartisanos.launcher"

    .line 1
    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v0

    :goto_0
    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/T;->b(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    move-object v1, p0

    const-string v0, "com.smartisan.folder"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 2
    :cond_0
    const-string p0, "com.smartisanos.launcher"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_launcher_settings

    const-string p0, "com.smartisanos.launcher.theme.ThemeChooserActivity"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_launcher_settings

    return v0

    :cond_launcher_settings
    sget-object p0, Lcom/smartisanos/launcher/data/T;->Ir:Lcom/smartisanos/launcher/data/S;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/S;->Fr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/smartisanos/launcher/data/T;->GALLERY:Lcom/smartisanos/launcher/data/S;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/S;->Fr:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static h(Landroid/content/Context;I)Z
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/T;->i(Landroid/content/Context;I)V

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/data/A;->Le()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error. loadDataForUpdate() baseMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/data/T;->SETTINGS:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/smartisanos/launcher/data/T;->SETTINGS:Lcom/smartisanos/launcher/data/S;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/S;->Fr:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static i(Landroid/content/Context;I)V
    .locals 17

    move/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5
    sget v5, Lcom/smartisanos/launcher/gb;->SYSTEM_APPS:I

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Dg()Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_0

    const-string v8, "_oversea"

    goto :goto_0

    :cond_0
    move-object v8, v7

    .line 7
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->Ag()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v8, "_exp"

    :cond_1
    if-eqz v6, :cond_2

    if-eqz v9, :cond_2

    .line 8
    sget-object v10, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    const-string v11, "error!. not support oversea_exp version."

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/smartisanos/launcher/data/M;->USER_SETUP_COMPLETE:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    goto :goto_1

    :cond_3
    move v11, v12

    .line 10
    :goto_1
    sget-object v10, Lcom/smartisanos/launcher/sa;->DELTA:Lcom/smartisanos/launcher/ra;

    invoke-static {}, Lcom/smartisanos/launcher/sa;->qb()Lcom/smartisanos/launcher/ra;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x14

    if-eqz v11, :cond_4

    if-ne v0, v10, :cond_4

    .line 11
    sget-boolean v11, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez v11, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 12
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/e/s;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    move-object v11, v7

    :goto_2
    if-eq v0, v10, :cond_5

    const/4 v10, 0x3

    move-object/from16 v13, p0

    .line 13
    invoke-static {v13, v10}, Lcom/smartisanos/launcher/data/N;->e(Landroid/content/Context;I)V

    goto :goto_3

    :cond_5
    move-object/from16 v13, p0

    move-object v7, v11

    goto :goto_3

    :cond_6
    move-object/from16 v13, p0

    .line 14
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app_display_order_"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "com.smartisanos.launcher"

    const-string v14, "array"

    invoke-virtual {v10, v7, v14, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v7, -0x1

    .line 15
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dock_apps_"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v14, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_8

    goto :goto_5

    :cond_8
    const/4 v10, -0x1

    :goto_5
    if-nez v9, :cond_9

    if-eqz v6, :cond_a

    .line 16
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "folder_order"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v14, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    move v6, v0

    goto :goto_6

    :cond_a
    const/4 v6, -0x1

    :goto_6
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2b

    if-eq v10, v8, :cond_2b

    const/4 v8, 0x0

    .line 17
    :try_start_0
    invoke-static {v1, v7}, Lcom/smartisanos/launcher/data/T;->b(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_10

    const/4 v0, 0x0

    .line 18
    :goto_7
    :try_start_1
    array-length v9, v7

    if-ge v0, v9, :cond_11

    .line 19
    aget-object v9, v7, v0

    if-nez v9, :cond_b

    goto :goto_a

    .line 20
    :cond_b
    invoke-static {v1, v9}, Lcom/smartisanos/launcher/data/T;->d(Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 21
    array-length v12, v11

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v12, :cond_e

    aget-object v14, v11, v13

    if-nez v14, :cond_c

    goto :goto_9

    .line 22
    :cond_c
    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 23
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 24
    :cond_e
    invoke-interface {v3, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 25
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v9, "app_display_order is null !"

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v7, v8

    .line 26
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_11
    :try_start_2
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v9, :cond_13

    const/4 v0, 0x0

    .line 28
    :goto_c
    :try_start_3
    array-length v10, v9

    if-ge v0, v10, :cond_13

    .line 29
    aget-object v10, v9, v0

    .line 30
    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 31
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v9, v8

    .line 32
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    :cond_13
    :try_start_4
    invoke-static {v1, v5}, Lcom/smartisanos/launcher/data/T;->b(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v0

    .line 34
    array-length v5, v0

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v5, :cond_16

    aget-object v11, v0, v10

    if-nez v11, :cond_14

    goto :goto_f

    .line 35
    :cond_14
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 36
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 37
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_15
    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :catch_4
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    const/4 v5, -0x1

    if-eq v6, v5, :cond_1c

    .line 39
    invoke-static {v1, v6}, Lcom/smartisanos/launcher/data/T;->b(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1c

    const/4 v0, 0x0

    .line 40
    :goto_10
    array-length v5, v8

    if-ge v0, v5, :cond_1c

    .line 41
    aget-object v5, v8, v0

    if-nez v5, :cond_17

    goto :goto_13

    .line 42
    :cond_17
    invoke-static {v1, v5}, Lcom/smartisanos/launcher/data/T;->d(Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 43
    array-length v10, v6

    const/4 v11, 0x0

    :goto_11
    if-ge v11, v10, :cond_1a

    aget-object v12, v6, v11

    if-nez v12, :cond_18

    goto :goto_12

    .line 44
    :cond_18
    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    .line 45
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 46
    :cond_1a
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 47
    :cond_1c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1e

    goto :goto_14

    :cond_1e
    const-string v6, "folder_page_"

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 50
    new-instance v6, Lcom/smartisanos/launcher/data/S;

    const-string v10, "com.smartisan.folder"

    invoke-direct {v6, v10, v5}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 52
    :cond_1f
    invoke-static {v5, v1}, Lcom/smartisanos/launcher/data/T;->b(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/smartisanos/launcher/data/S;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 53
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 54
    :cond_20
    array-length v1, v7

    new-array v1, v1, [[Lcom/smartisanos/launcher/data/S;

    sput-object v1, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    const/4 v1, 0x0

    .line 55
    :goto_15
    array-length v2, v7

    const-string v5, "] in page ["

    const-string v6, "can\'t find app ["

    const-string v10, "lose page by name ==> ["

    const-string v11, "], index ["

    const-string v12, "]"

    if-ge v1, v2, :cond_24

    .line 56
    aget-object v2, v7, v1

    .line 57
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    if-nez v13, :cond_21

    .line 58
    sget-object v14, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 59
    :cond_21
    array-length v10, v13

    new-array v10, v10, [Lcom/smartisanos/launcher/data/S;

    const/4 v14, 0x0

    .line 60
    :goto_16
    array-length v15, v13

    if-ge v14, v15, :cond_23

    .line 61
    aget-object v15, v13, v14

    .line 62
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/smartisanos/launcher/data/S;

    .line 63
    aput-object v16, v10, v14

    if-nez v16, :cond_22

    move-object/from16 v16, v3

    .line 64
    sget-object v3, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    move-object/from16 p0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_17

    :cond_22
    move-object/from16 v16, v3

    move-object/from16 p0, v7

    :goto_17
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p0

    move-object/from16 v3, v16

    goto :goto_16

    :cond_23
    move-object/from16 v16, v3

    move-object/from16 p0, v7

    .line 65
    sget-object v2, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    aput-object v10, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_24
    if-eqz v8, :cond_28

    .line 66
    array-length v1, v8

    if-lez v1, :cond_28

    .line 67
    array-length v1, v8

    new-array v1, v1, [[Lcom/smartisanos/launcher/data/S;

    sput-object v1, Lcom/smartisanos/launcher/data/T;->Mr:[[Lcom/smartisanos/launcher/data/S;

    const/4 v1, 0x0

    .line 68
    :goto_18
    array-length v2, v8

    if-ge v1, v2, :cond_28

    .line 69
    aget-object v2, v8, v1

    .line 70
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-nez v3, :cond_25

    .line 71
    sget-object v7, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 72
    :cond_25
    array-length v7, v3

    new-array v7, v7, [Lcom/smartisanos/launcher/data/S;

    const/4 v13, 0x0

    .line 73
    :goto_19
    array-length v14, v3

    if-ge v13, v14, :cond_27

    .line 74
    aget-object v14, v3, v13

    .line 75
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/data/S;

    .line 76
    aput-object v15, v7, v13

    if-nez v15, :cond_26

    .line 77
    sget-object v15, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    move-object/from16 p0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1a

    :cond_26
    move-object/from16 p0, v3

    :goto_1a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p0

    goto :goto_19

    .line 78
    :cond_27
    sget-object v2, Lcom/smartisanos/launcher/data/T;->Mr:[[Lcom/smartisanos/launcher/data/S;

    aput-object v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_28
    if-eqz v9, :cond_2a

    .line 79
    array-length v1, v9

    new-array v1, v1, [Lcom/smartisanos/launcher/data/S;

    sput-object v1, Lcom/smartisanos/launcher/data/T;->Nr:[Lcom/smartisanos/launcher/data/S;

    const/4 v1, 0x0

    .line 80
    :goto_1b
    array-length v2, v9

    if-ge v1, v2, :cond_2a

    .line 81
    aget-object v2, v9, v1

    .line 82
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/S;

    .line 83
    sget-object v4, Lcom/smartisanos/launcher/data/T;->Nr:[Lcom/smartisanos/launcher/data/S;

    aput-object v3, v4, v1

    if-nez v3, :cond_29

    .line 84
    sget-object v3, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t find dock app ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2a
    return-void

    .line 85
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "loadData error. id is -1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/data/M;->dr:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getPageModeFromMode(I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/data/Constants;->checkPageModeWithDevice(Landroid/content/ContentResolver;I)I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getModeFromPageMode(I)I

    move-result v0

    .line 5
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/T;->i(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    .line 7
    sput-object v0, Lcom/smartisanos/launcher/data/T;->Nr:[Lcom/smartisanos/launcher/data/S;

    .line 8
    sput-object v0, Lcom/smartisanos/launcher/data/T;->Mr:[[Lcom/smartisanos/launcher/data/S;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    sget-object p0, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/smartisanos/launcher/data/T;->Nr:[Lcom/smartisanos/launcher/data/S;

    if-nez p0, :cond_3

    .line 11
    :cond_0
    sget-object p0, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    if-nez p0, :cond_1

    .line 12
    sget-object p0, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "PREDEFINED_PAGES is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 13
    :cond_1
    sget-object p0, Lcom/smartisanos/launcher/data/T;->Nr:[Lcom/smartisanos/launcher/data/S;

    if-nez p0, :cond_2

    .line 14
    sget-object p0, Lcom/smartisanos/launcher/data/T;->log:Lcom/smartisanos/launcher/va;

    const-string v0, "PREDEFINED_DOCK is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x4

    new-array p0, p0, [[Lcom/smartisanos/launcher/data/S;

    .line 15
    sget-object v0, Lcom/smartisanos/launcher/data/T;->Or:[Lcom/smartisanos/launcher/data/S;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/smartisanos/launcher/data/T;->Pr:[Lcom/smartisanos/launcher/data/S;

    const/4 v2, 0x1

    aput-object v0, p0, v2

    sget-object v0, Lcom/smartisanos/launcher/data/T;->Qr:[Lcom/smartisanos/launcher/data/S;

    const/4 v3, 0x2

    aput-object v0, p0, v3

    sget-object v0, Lcom/smartisanos/launcher/data/T;->Rr:[Lcom/smartisanos/launcher/data/S;

    const/4 v4, 0x3

    aput-object v0, p0, v4

    sput-object p0, Lcom/smartisanos/launcher/data/T;->Lr:[[Lcom/smartisanos/launcher/data/S;

    new-array p0, v4, [Lcom/smartisanos/launcher/data/S;

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/data/T;->PHONE:Lcom/smartisanos/launcher/data/S;

    aput-object v0, p0, v1

    sget-object v0, Lcom/smartisanos/launcher/data/T;->BROWSER:Lcom/smartisanos/launcher/data/S;

    aput-object v0, p0, v2

    sget-object v0, Lcom/smartisanos/launcher/data/T;->MMS:Lcom/smartisanos/launcher/data/S;

    aput-object v0, p0, v3

    sput-object p0, Lcom/smartisanos/launcher/data/T;->Nr:[Lcom/smartisanos/launcher/data/S;

    :cond_3
    const/4 p0, 0x3

    new-array p0, p0, [Lcom/smartisanos/launcher/data/S;

    const/4 v0, 0x0

    new-instance v1, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.dialer"

    const-string v3, "com.android.dialer.main.impl.MainActivity"

    invoke-direct {v1, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p0, v0

    const/4 v0, 0x1

    new-instance v1, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.smartisanos.launcher"

    const-string v3, "com.smartisanos.launcher.theme.ThemeChooserActivity"

    invoke-direct {v1, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p0, v0

    const/4 v0, 0x2

    new-instance v1, Lcom/smartisanos/launcher/data/S;

    const-string v2, "com.android.messaging"

    const-string v3, "com.android.messaging.ui.conversationlist.ConversationListActivity"

    invoke-direct {v1, v2, v3}, Lcom/smartisanos/launcher/data/S;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p0, v0

    sput-object p0, Lcom/smartisanos/launcher/data/T;->Nr:[Lcom/smartisanos/launcher/data/S;

    return-void
.end method
