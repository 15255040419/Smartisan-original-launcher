.class public Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "WifiLoginAndP2pNotificationBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast$Processor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final OTA_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"

.field private static final TAG:Ljava/lang/String; = "WifiLoginAndP2pNotificationBroadcast"

.field private static final UNUSED_DEVICE_TYPES:[Lsmartisanos/util/DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lsmartisanos/util/DeviceType;

    .line 35
    sget-object v1, Lsmartisanos/util/DeviceType;->TRIDENT:Lsmartisanos/util/DeviceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsmartisanos/util/DeviceType;->OCEAN:Lsmartisanos/util/DeviceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsmartisanos/util/DeviceType;->DELTA:Lsmartisanos/util/DeviceType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsmartisanos/util/DeviceType;->DARWIN:Lsmartisanos/util/DeviceType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast;->UNUSED_DEVICE_TYPES:[Lsmartisanos/util/DeviceType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 28
    invoke-static {}, Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast;->unUsedType()Z

    move-result v0

    return v0
.end method

.method private static unUsedType()Z
    .locals 1

    .line 43
    sget-object v0, Lcom/android/settings/wifi/WifiLoginAndP2pNotificationBroadcast;->UNUSED_DEVICE_TYPES:[Lsmartisanos/util/DeviceType;

    invoke-static {v0}, Lsmartisanos/util/DeviceType;->isOneOf([Lsmartisanos/util/DeviceType;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string p0, "WifiLoginAndP2pNotificationBroadcast"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-class p0, Lcom/android/settings/HandleEventService;

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p0, "type"

    const/16 v0, 0xa

    .line 52
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
