.class public final Lcom/android/settingslib/users/UserManagerHelper;
.super Ljava/lang/Object;
.source "UserManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HEADLESS_SYSTEM_USER:Ljava/lang/String; = "android.car.systemuser.headless"

.field private static final TAG:Ljava/lang/String; = "UserManagerHelper"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mUpdateListener:Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;

.field private final mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settingslib/users/UserManagerHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/users/UserManagerHelper$1;-><init>(Lcom/android/settingslib/users/UserManagerHelper;)V

    iput-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    .line 60
    iget-object p1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    .line 61
    iget-object p1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/users/UserManagerHelper;)Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUpdateListener:Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;

    return-object p0
.end method

.method private assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;
    .locals 1

    .line 472
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getGuestDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->getUserDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 473
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private registerReceiver()V
    .locals 6

    .line 455
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 456
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_ADDED"

    .line 457
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    .line 458
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 459
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STOPPED"

    .line 460
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 461
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private switchToUserId(I)V
    .locals 1

    .line 479
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UserManagerHelper"

    const-string v0, "Couldn\'t switch user."

    .line 481
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public createNewUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "UserManagerHelper"

    const-string p1, "can\'t create user."

    .line 336
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 339
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public currentProcessCanAddUsers()Z
    .locals 1

    const-string v0, "no_add_user"

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessHasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public currentProcessCanModifyAccounts()Z
    .locals 1

    const-string v0, "no_modify_accounts"

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessHasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessRunningAsDemoUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessRunningAsGuestUser()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public currentProcessCanRemoveUsers()Z
    .locals 1

    const-string v0, "no_remove_user"

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessHasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public currentProcessCanSwitchUsers()Z
    .locals 1

    const-string v0, "no_user_switch"

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->currentProcessHasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public currentProcessHasUserRestriction(Ljava/lang/String;)Z
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public currentProcessRunningAsDemoUser()Z
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p0

    return p0
.end method

.method public currentProcessRunningAsGuestUser()Z
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result p0

    return p0
.end method

.method public currentProcessRunningAsSystemUser()Z
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    return p0
.end method

.method public foregroundUserCanAddUsers()Z
    .locals 1

    const-string v0, "no_add_user"

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->foregroundUserHasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public foregroundUserHasUserRestriction(Ljava/lang/String;)Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public foregroundUserIsGuestUser()Z
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    return p0
.end method

.method public getAllUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->isHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsersExcludesSystemUser()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllUsersExceptUser(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 169
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 171
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, p1, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getAllUsersExcludesCurrentProcessUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getCurrentProcessUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsersExceptUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllUsersExcludesForegroundUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsersExceptUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllUsersExcludesSystemUser()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsersExceptUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentProcessUserId()I
    .locals 0

    .line 129
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    return p0
.end method

.method public getCurrentProcessUserInfo()Landroid/content/pm/UserInfo;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getCurrentProcessUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundUserId()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0
.end method

.method public getForegroundUserInfo()Landroid/content/pm/UserInfo;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public getGuestDefaultIcon()Landroid/graphics/Bitmap;
    .locals 2

    .line 450
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/16 v0, -0x2710

    const/4 v1, 0x0

    .line 450
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getUserDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;
    .locals 1

    .line 440
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 440
    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getUserIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public isHeadlessSystemUser()Z
    .locals 1

    const-string p0, "android.car.systemuser.headless"

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public registerOnUsersUpdateListener(Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUpdateListener:Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;

    .line 71
    invoke-direct {p0}, Lcom/android/settingslib/users/UserManagerHelper;->registerReceiver()V

    return-void
.end method

.method public removeUser(Landroid/content/pm/UserInfo;)Z
    .locals 3

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->userIsSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 353
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is system user, could not be removed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserManagerHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 357
    :cond_0
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getCurrentProcessUserId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 358
    invoke-direct {p0, v1}, Lcom/android/settingslib/users/UserManagerHelper;->switchToUserId(I)V

    .line 361
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    move-result p0

    return p0
.end method

.method public scaleUserIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    .line 418
    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 420
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public setUserName(Landroid/content/pm/UserInfo;Ljava/lang/String;)V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    return-void
.end method

.method public startNewGuestSession(Ljava/lang/String;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/settingslib/users/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settingslib/users/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "UserManagerHelper"

    const-string p1, "can\'t create user."

    .line 387
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 390
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->assignDefaultIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    .line 391
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->switchToUserId(I)V

    return-void
.end method

.method public switchToUser(Landroid/content/pm/UserInfo;)V
    .locals 2

    .line 370
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 374
    :cond_0
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->switchToUserId(I)V

    return-void
.end method

.method public unregisterOnUsersUpdateListener()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/settingslib/users/UserManagerHelper;->unregisterReceiver()V

    return-void
.end method

.method public userCanBeRemoved(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->userIsSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public userIsForegroundUser(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 218
    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public userIsRunningCurrentProcess(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/android/settingslib/users/UserManagerHelper;->getCurrentProcessUserId()I

    move-result p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public userIsSystemUser(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 198
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
