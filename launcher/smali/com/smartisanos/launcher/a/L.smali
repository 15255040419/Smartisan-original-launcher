.class public Lcom/smartisanos/launcher/a/L;
.super Ljava/lang/Object;
.source "ShortcutAction.java"


# static fields
.field public static final Lj:[Ljava/lang/String;

.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/smartisanos/launcher/a/L;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.eg.android.AlipayGphone"

    aput-object v2, v0, v1

    .line 2
    sget-object v1, Lcom/smartisanos/launcher/data/T;->PHONE:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/T;->BROWSER:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smartisanos/launcher/data/T;->SETTINGS:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/smartisanos/launcher/a/L;->Lj:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Lcom/smartisanos/launcher/data/QuickLaunchItem;
    .locals 3

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    .line 21
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x10200000

    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/L;->c(Landroid/content/Context;Landroid/content/Intent;)Lcom/smartisanos/launcher/data/QuickLaunchItem;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 29
    iget-object v2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-static {p0, p2, v2}, Lcom/smartisanos/launcher/a/L;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    const/4 p0, -0x1

    const-string p2, "extra_uid"

    .line 30
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p0, :cond_3

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 32
    :cond_3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_4

    .line 33
    iput p2, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    goto :goto_1

    .line 34
    :cond_4
    invoke-static {v1}, Lcom/smartisanos/launcher/e/s;->pa(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p0, 0x0

    .line 35
    iput p0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    goto :goto_1

    .line 36
    :cond_5
    iput p0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    :goto_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, ""

    if-nez p2, :cond_0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v0

    :cond_0
    :goto_0
    return-object p2
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "INSTALL_SHORTCUT failed, lose EXTRA_SHORTCUT_INTENT !"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/a/L;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-boolean v2, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v3, "]"

    if-eqz v2, :cond_2

    sget-object v2, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInstallShortcut ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    :cond_2
    sget-boolean v1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lunch intent ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/a/L;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Lcom/smartisanos/launcher/data/QuickLaunchItem;

    move-result-object p0

    if-nez p0, :cond_4

    .line 9
    sget-object p0, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "handleInstallShortcut failed by shortcutInfo is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 11
    sget-object p0, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "handleInstallShortcut return by pkg is null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_5
    invoke-static {p1}, Lcom/smartisanos/launcher/a/L;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 13
    sget-object p0, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "don\'t support shortcut ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->maa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "android.intent.extra.shortcut.INTENT"

    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "duplicate"

    .line 5
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object p0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->naa:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 p1, 0x0

    invoke-static {p0, p1, v1}, Lcom/smartisanos/launcher/data/F;->b(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void

    .line 11
    :cond_2
    :goto_0
    sget-object p1, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUninstallShortcut return by ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;)Lcom/smartisanos/launcher/data/QuickLaunchItem;
    .locals 5

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    const-string p1, "Can\'t construct ShorcutInfo with null intent"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-object v3

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    instance-of v4, v2, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 6
    move-object v3, v2

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 7
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    instance-of v2, p1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_2

    .line 9
    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/content/Intent$ShortcutIconResource;

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 11
    iget-object v4, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 12
    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 13
    invoke-static {p0, v2}, Lcom/smartisanos/launcher/e/s;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 15
    :catch_0
    sget-object p0, Lcom/smartisanos/launcher/a/L;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load shortcut icon: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 16
    :cond_2
    :goto_0
    new-instance p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    invoke-direct {p0}, Lcom/smartisanos/launcher/data/QuickLaunchItem;-><init>()V

    if-nez v3, :cond_3

    .line 17
    invoke-static {}, Lcom/smartisanos/launcher/e/s;->sg()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 19
    :cond_3
    iput-object v3, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->icon:Landroid/graphics/Bitmap;

    .line 20
    iput-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/smartisanos/launcher/a/L;->Lj:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
