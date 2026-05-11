.class public Landroid/content/pm/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# static fields
.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final UNINSTALL_COMPLETE:I = 0x2

.field private static log:Lcom/smartisanos/launcher/va;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mObserverdelete:Landroid/content/pm/a;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUninstallmethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/content/pm/ApplicationManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ApplicationManager;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Landroid/content/pm/a;

    invoke-direct {v0, p0}, Landroid/content/pm/a;-><init>(Landroid/content/pm/ApplicationManager;)V

    iput-object v0, p0, Landroid/content/pm/ApplicationManager;->mObserverdelete:Landroid/content/pm/a;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5
    iput-object p2, p0, Landroid/content/pm/ApplicationManager;->mHandler:Landroid/os/Handler;

    .line 6
    invoke-direct {p0}, Landroid/content/pm/ApplicationManager;->initUninstallMethod()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ApplicationManager;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/pm/ApplicationManager;->sendResultMessage(ILjava/lang/String;)V

    return-void
.end method

.method private initUninstallMethod()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    .line 1
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/content/pm/IPackageDeleteObserver;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "deletePackage"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationManager;->mUninstallmethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private sendResultMessage(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/content/pm/ApplicationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Landroid/content/pm/ApplicationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public enableApplication(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    new-instance p1, Landroid/content/ComponentName;

    sget-object v0, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    sget-object v1, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->Fr:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_1

    sget-object p1, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disable setupWizard fail, exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unInstallPackage(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    sget-object v4, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    iget-object v4, v4, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    sget-object v5, Lcom/smartisanos/launcher/data/T;->WIZARD:Lcom/smartisanos/launcher/data/S;

    iget-object v5, v5, Lcom/smartisanos/launcher/data/S;->Fr:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v4, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable setupWizard fail, exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, v2, p1}, Landroid/content/pm/ApplicationManager;->sendResultMessage(ILjava/lang/String;)V

    goto :goto_3

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/content/pm/ApplicationManager;->mUninstallmethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 8
    invoke-static {p1, v3}, Lcom/smartisanos/launcher/e/s;->m(Ljava/lang/String;I)V

    .line 9
    invoke-static {v3, p1, v3}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/lang/String;I)V

    .line 10
    iget-object v0, p0, Landroid/content/pm/ApplicationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_1
    iget-object v4, p0, Landroid/content/pm/ApplicationManager;->mUninstallmethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/content/pm/ApplicationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    iget-object p0, p0, Landroid/content/pm/ApplicationManager;->mObserverdelete:Landroid/content/pm/a;

    aput-object p0, v6, v2

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    .line 13
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 14
    :try_start_2
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    sget-object p1, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 15
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    sget-object p1, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 16
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_3

    sget-object p1, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 17
    :cond_3
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 18
    :cond_4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    sget-object p0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "UninstallMethod is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public unInstallPackageWithAppGlobals(Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 4
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_1

    sget-object p0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "unInstallPackageWithAppGlobals userId != 10"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-byte v1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v1, :cond_4

    .line 6
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_3

    sget-object p0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unInstallPackageWithAppGlobals itemType != ITEM_TYPE_APPLICATION. itemType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 7
    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationManager;->unInstallPackageWithAppGlobals(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_5
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_6

    sget-object p0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "unInstallPackageWithAppGlobals packagename == null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public unInstallPackageWithAppGlobals(Ljava/lang/String;)V
    .locals 12

    if-eqz p1, :cond_5

    const-string p0, ""

    .line 9
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 p0, 0xa

    .line 10
    invoke-static {p1, p0}, Lcom/smartisanos/launcher/e/s;->m(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 11
    invoke-static {v0, p1, p0}, Lcom/smartisanos/launcher/e/s;->a(ZLjava/lang/String;I)V

    .line 12
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1a

    const/4 v4, 0x0

    const-string v5, "deletePackageAsUser"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x4

    if-lt v2, v3, :cond_2

    .line 14
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x5

    new-array v10, v3, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v8

    const-class v11, Landroid/content/pm/IPackageDeleteObserver;

    aput-object v11, v10, v7

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v9

    invoke-virtual {v2, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, -0x1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    aput-object v4, v3, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v9

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "error. deletePackageAsUser method is null 1"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v3, v0

    const-class v10, Landroid/content/pm/IPackageDeleteObserver;

    aput-object v10, v3, v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v3, v7

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v3, v6

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object v4, v3, v8

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_3
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_4

    sget-object p0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "error. deletePackageAsUser method is null 2"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_4

    sget-object p1, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    .line 21
    :cond_5
    :goto_1
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_6

    sget-object p0, Landroid/content/pm/ApplicationManager;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "unInstallPackageWithAppGlobals packagename == null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
