.class public final Lcom/android/settingslib/accounts/AuthenticatorHelper;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthenticatorHelper"


# instance fields
.field private final mAccTypeIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mEnabledAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

.field private mListeningToAccountUpdates:Z

.field private final mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 68
    iput-object p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 70
    iput-object p3, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListener:Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    return-void
.end method

.method private buildAccountTypeToAuthoritiesMap()V
    .locals 8

    .line 253
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 254
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 255
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 254
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 256
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 257
    aget-object v3, v0, v2

    .line 258
    iget-object v4, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 260
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 261
    iget-object v5, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v5, 0x2

    const-string v6, "AuthenticatorHelper"

    .line 263
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added authority "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to accountType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public containsAccountType(Ljava/lang/String;)Z
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AuthenticatorDescription;

    return-object p0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    monitor-exit v0

    return-object p0

    .line 102
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 106
    iget-object v2, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 109
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v4, :cond_1

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    monitor-enter v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    :try_start_2
    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    return-object v1

    :catchall_1
    move-exception p0

    .line 102
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public getEnabledAccountTypes()[Ljava/lang/String;
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "AuthenticatorHelper"

    .line 130
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 133
    iget-object v2, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3, p0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 139
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No label icon for account type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No label name for account type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getLabelIdForType(Ljava/lang/String;)I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AuthenticatorDescription;

    .line 167
    iget p0, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPackageForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AuthenticatorDescription;

    .line 153
    iget-object p0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasAccountPreferences(Ljava/lang/String;)Z
    .locals 1

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 195
    iget p0, p0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public listenToAccountUpdates()V
    .locals 7

    .line 230
    iget-boolean v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_0

    .line 231
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 232
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    .line 235
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    :cond_0
    return-void
.end method

.method onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    if-nez p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 209
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 210
    aget-object v1, p1, v0

    .line 211
    iget-object v2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->buildAccountTypeToAuthoritiesMap()V

    .line 216
    iget-boolean p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-eqz p1, :cond_3

    .line 217
    iget-object p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListener:Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {p1, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;->onAccountsUpdate(Landroid/os/UserHandle;)V

    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 224
    iget-object p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 225
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    return-void
.end method

.method public preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;-><init>(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    check-cast p1, [Ljava/lang/Void;

    .line 87
    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stopListeningToAccountUpdates()V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    :cond_0
    return-void
.end method

.method public updateAuthDescriptions(Landroid/content/Context;)V
    .locals 4

    .line 177
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 178
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p1

    const/4 v0, 0x0

    .line 179
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    aget-object v2, p1, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
