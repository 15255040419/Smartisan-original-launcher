.class public abstract Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AbstractUptimePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field static final KEY_UPTIME:Ljava/lang/String; = "up_time"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mUptime:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->updateTimes()V

    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;-><init>(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Landroid/os/Handler;

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private updateTimes()V
    .locals 2

    .line 91
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mUptime:Landroidx/preference/Preference;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "up_time"

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mUptime:Landroidx/preference/Preference;

    .line 80
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->updateTimes()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "up_time"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
