.class public Lcom/android/settingslib/suggestions/SuggestionParser;
.super Ljava/lang/Object;
.source "SuggestionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMART_DISMISS_CONTROL:Ljava/lang/String; = "0"

.field private static final IS_DISMISSED:Ljava/lang/String; = "_is_dismissed"

.field private static final META_DATA_ADMIN_USER_TYPE_VALUE:Ljava/lang/String; = "admin"

.field public static final META_DATA_DISMISS_CONTROL:Ljava/lang/String; = "com.android.settings.dismiss"

.field private static final META_DATA_GUEST_USER_TYPE_VALUE:Ljava/lang/String; = "guest"

.field private static final META_DATA_IS_CONNECTION_REQUIRED:Ljava/lang/String; = "com.android.settings.require_connection"

.field private static final META_DATA_IS_SUPPORTED:Ljava/lang/String; = "com.android.settings.is_supported"

.field private static final META_DATA_PRIMARY_USER_TYPE_VALUE:Ljava/lang/String; = "primary"

.field private static final META_DATA_REQUIRE_ACCOUNT:Ljava/lang/String; = "com.android.settings.require_account"

.field public static final META_DATA_REQUIRE_FEATURE:Ljava/lang/String; = "com.android.settings.require_feature"

.field private static final META_DATA_REQUIRE_USER_TYPE:Ljava/lang/String; = "com.android.settings.require_user_type"

.field private static final META_DATA_RESTRICTED_USER_TYPE_VALUE:Ljava/lang/String; = "restricted"

.field public static final SETUP_TIME:Ljava/lang/String; = "_setup_time"

.field private static final TAG:Ljava/lang/String; = "SuggestionParser"


# instance fields
.field private final mAddCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDismissControl:Ljava/lang/String;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mSuggestionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    .locals 1

    const-string v0, "0"

    .line 116
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;ILjava/lang/String;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;

    invoke-direct {v0, p1}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v0, p3}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->parse(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/suggestions/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mAddCache:Landroid/util/ArrayMap;

    .line 125
    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    .line 126
    iput-object p3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    .line 127
    iput-object p2, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 128
    iput-object p4, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mDefaultDismissControl:Ljava/lang/String;

    return-void
.end method

.method private getDismissControl(Lcom/android/settingslib/drawer/Tile;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 393
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mDefaultDismissControl:Ljava/lang/String;

    return-object p0

    .line 395
    :cond_0
    iget-object p0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string p1, "com.android.settings.dismiss"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEndTime(JI)J
    .locals 4

    int-to-long v0, p3

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private isAvailable(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 8

    .line 218
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.require_feature"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ","

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 221
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "SuggestionParser"

    if-eqz v6, :cond_0

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found empty substring when parsing required features: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 224
    :cond_0
    iget-object v6, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " requires unavailable feature "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isExclusiveCategoryExpired(Lcom/android/settingslib/suggestions/SuggestionCategory;)Z
    .locals 7

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_setup_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 330
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    iget-object v3, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 332
    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 333
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    :cond_0
    iget-wide v3, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusiveExpireDaysInMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-gez v3, :cond_1

    return v4

    .line 339
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v5, 0x5265c00

    div-long v5, v1, v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SuggestionParser"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-wide p0, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusiveExpireDaysInMillis:J

    cmp-long p0, v1, p0

    if-lez p0, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method private parseDismissString(Ljava/lang/String;)I
    .locals 0

    const-string p0, ","

    .line 387
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 388
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private satisfiesConnectivity(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 2

    .line 299
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.require_connection"

    .line 300
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 304
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 305
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 306
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 307
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is missing required connection."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuggestionParser"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method private satisifesRequiredUserType(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 11

    .line 235
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.require_user_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 237
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 238
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    const-string v2, "\\|"

    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v2, v5

    .line 240
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "primary"

    .line 241
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v1

    goto :goto_1

    :cond_0
    move v7, v4

    .line 242
    :goto_1
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "admin"

    .line 243
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v1

    goto :goto_2

    :cond_1
    move v8, v4

    .line 244
    :goto_2
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "guest"

    .line 245
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v1

    goto :goto_3

    :cond_2
    move v9, v4

    .line 246
    :goto_3
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "restricted"

    .line 247
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v1

    goto :goto_4

    :cond_3
    move v6, v4

    :goto_4
    if-nez v7, :cond_5

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    return v1

    .line 253
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " requires user type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuggestionParser"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    return v1
.end method


# virtual methods
.method public dismissSuggestion(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 1

    .line 166
    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_is_dismissed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 168
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 169
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v0
.end method

.method public filterSuggestions(Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;IZ)V"
        }
    .end annotation

    .line 176
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 177
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->isAvailable(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->isSupported(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->satisifesRequiredUserType(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->satisfiesRequiredAccount(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v0}, Lcom/android/settingslib/suggestions/SuggestionParser;->satisfiesConnectivity(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    invoke-virtual {p0, v0, p3}, Lcom/android/settingslib/suggestions/SuggestionParser;->isDismissed(Lcom/android/settingslib/drawer/Tile;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 183
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p2, v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getSuggestions(Z)Lcom/android/settingslib/suggestions/SuggestionList;
    .locals 7

    .line 132
    new-instance v0, Lcom/android/settingslib/suggestions/SuggestionList;

    invoke-direct {v0}, Lcom/android/settingslib/suggestions/SuggestionList;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 135
    iget-object v4, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSuggestionList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/suggestions/SuggestionCategory;

    .line 136
    iget-boolean v5, v4, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusive:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/android/settingslib/suggestions/SuggestionParser;->isExclusiveCategoryExpired(Lcom/android/settingslib/suggestions/SuggestionCategory;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 140
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/settingslib/suggestions/SuggestionParser;->readSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;Z)V

    .line 145
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 146
    new-instance p0, Lcom/android/settingslib/suggestions/SuggestionList;

    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionList;-><init>()V

    .line 147
    invoke-virtual {p0, v4, v5}, Lcom/android/settingslib/suggestions/SuggestionList;->addSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;)V

    return-object p0

    .line 153
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/settingslib/suggestions/SuggestionParser;->readSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;Z)V

    .line 155
    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/suggestions/SuggestionList;->addSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public isCategoryDone(Ljava/lang/String;)Z
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suggested.completed_category."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isDismissed(Lcom/android/settingslib/drawer/Tile;Z)Z
    .locals 9

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/suggestions/SuggestionParser;->getDismissControl(Lcom/android/settingslib/drawer/Tile;Z)Ljava/lang/String;

    move-result-object p2

    .line 348
    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    .line 349
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_setup_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_is_dismissed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    return v4

    .line 364
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settingslib/suggestions/SuggestionParser;->parseDismissString(Ljava/lang/String;)I

    move-result p2

    .line 365
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct {p0, v5, v6, p2}, Lcom/android/settingslib/suggestions/SuggestionParser;->getEndTime(JI)J

    move-result-wide v5

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long p2, v7, v5

    if-ltz p2, :cond_3

    .line 369
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 371
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v4

    :cond_3
    return v1
.end method

.method public isSupported(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 6

    const-string v0, "Cannot find resources for "

    const-string v1, "SuggestionParser"

    .line 275
    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.is_supported"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 277
    :try_start_0
    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v4, :cond_0

    return v3

    .line 280
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v4, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 281
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 280
    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v2, :cond_1

    .line 283
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    if-nez p0, :cond_2

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " requires unsupported resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p0

    :catch_0
    move-exception p0

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    .line 290
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public markCategoryDone(Ljava/lang/String;)V
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suggested.completed_category."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method readSuggestions(Lcom/android/settingslib/suggestions/SuggestionCategory;Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/suggestions/SuggestionCategory;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z)V"
        }
    .end annotation

    .line 191
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 192
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    iget-object v1, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v1, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->pkg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v4, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mAddCache:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, p2

    invoke-static/range {v1 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZZ)V

    .line 199
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/settingslib/suggestions/SuggestionParser;->filterSuggestions(Ljava/util/List;IZ)V

    .line 200
    iget-boolean p3, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->multiple:Z

    if-nez p3, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 v1, v0, 0x1

    if-le p3, v1, :cond_3

    .line 203
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settingslib/drawer/Tile;

    .line 204
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 205
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 206
    iget v2, v1, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget v3, p3, Lcom/android/settingslib/drawer/Tile;->priority:I

    if-le v2, v3, :cond_1

    move-object p3, v1

    goto :goto_0

    .line 211
    :cond_2
    iget-object p1, p1, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/suggestions/SuggestionParser;->isCategoryDone(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 212
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public satisfiesRequiredAccount(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    .line 260
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.require_account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionParser;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/AccountManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    .line 265
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 266
    array-length p0, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 268
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " requires unavailable account type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuggestionParser"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method
