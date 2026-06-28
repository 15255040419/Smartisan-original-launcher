.class public Lcom/android/settingslib/applications/ServiceListing;
.super Ljava/lang/Object;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/ServiceListing$Builder;,
        Lcom/android/settingslib/applications/ServiceListing$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ServiceListing$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mEnabledServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentAction:Ljava/lang/String;

.field private mListening:Z

.field private final mNoun:Ljava/lang/String;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPermission:Ljava/lang/String;

.field private final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetting:Ljava/lang/String;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    .line 167
    new-instance v0, Lcom/android/settingslib/applications/ServiceListing$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/applications/ServiceListing$1;-><init>(Lcom/android/settingslib/applications/ServiceListing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 174
    new-instance v0, Lcom/android/settingslib/applications/ServiceListing$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/applications/ServiceListing$2;-><init>(Lcom/android/settingslib/applications/ServiceListing;)V

    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    iput-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settingslib/applications/ServiceListing;->mTag:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/android/settingslib/applications/ServiceListing;->mIntentAction:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/android/settingslib/applications/ServiceListing;->mPermission:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/android/settingslib/applications/ServiceListing;->mNoun:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/applications/ServiceListing$1;)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/android/settingslib/applications/ServiceListing;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadEnabledServices()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 116
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 117
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v4, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveEnabledServices()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_0
    const/16 v3, 0x3a

    .line 103
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :goto_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    .line 107
    :goto_2
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isEnabled(Landroid/content/ComponentName;)Z
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public reload()V
    .locals 5

    .line 126
    invoke-direct {p0}, Lcom/android/settingslib/applications/ServiceListing;->loadEnabledServices()V

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 130
    new-instance v1, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 132
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settingslib/applications/ServiceListing;->mIntentAction:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 138
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 140
    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mPermission:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/applications/ServiceListing;->mNoun:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": it does not require the permission "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing;->mPermission:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ServiceListing$Callback;

    .line 150
    iget-object v2, p0, Lcom/android/settingslib/applications/ServiceListing;->mServices:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/android/settingslib/applications/ServiceListing$Callback;->onServicesReloaded(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnabled(Landroid/content/ComponentName;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 160
    iget-object p2, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/applications/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/android/settingslib/applications/ServiceListing;->saveEnabledServices()V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 79
    :cond_0
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mListening:Z

    .line 80
    iget-boolean p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mListening:Z

    if-eqz p1, :cond_1

    .line 82
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/applications/ServiceListing;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    iget-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/applications/ServiceListing;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    iget-object p1, p0, Lcom/android/settingslib/applications/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settingslib/applications/ServiceListing;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
