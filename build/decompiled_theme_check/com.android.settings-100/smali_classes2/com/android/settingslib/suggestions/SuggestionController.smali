.class public Lcom/android/settingslib/suggestions/SuggestionController;
.super Ljava/lang/Object;
.source "SuggestionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SuggestionController"


# instance fields
.field private mConnectionListener:Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

.field private final mContext:Landroid/content/Context;

.field private mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mConnectionListener:Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    .line 74
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceIntent:Landroid/content/Intent;

    .line 75
    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settingslib/suggestions/SuggestionController;Landroid/service/settings/suggestions/ISuggestionService;)Landroid/service/settings/suggestions/ISuggestionService;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mConnectionListener:Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    return-object p0
.end method

.method private createServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 152
    new-instance v0, Lcom/android/settingslib/suggestions/SuggestionController$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/suggestions/SuggestionController$1;-><init>(Lcom/android/settingslib/suggestions/SuggestionController;)V

    return-object v0
.end method

.method private isReady()Z
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dismissSuggestions(Landroid/service/settings/suggestions/Suggestion;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->isReady()Z

    move-result v0

    const-string v1, "SuggestionController"

    if-nez v0, :cond_0

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SuggestionController not ready, cannot dismiss "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-interface {p0, p1}, Landroid/service/settings/suggestions/ISuggestionService;->dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error when calling dismissSuggestion()"

    .line 124
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    const-string v0, "SuggestionController"

    .line 102
    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->isReady()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 106
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-interface {p0}, Landroid/service/settings/suggestions/ISuggestionService;->getSuggestions()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Error when calling getSuggestion()"

    .line 111
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_1
    move-exception p0

    const-string v1, "mRemote service detached before able to query"

    .line 108
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->isReady()Z

    move-result v0

    const-string v1, "SuggestionController"

    if-nez v0, :cond_0

    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SuggestionController not ready, cannot launch "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-interface {p0, p1}, Landroid/service/settings/suggestions/ISuggestionService;->launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error when calling launchSuggestion()"

    .line 137
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 83
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    .line 82
    invoke-virtual {v0, v1, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
