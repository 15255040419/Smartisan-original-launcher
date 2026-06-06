.class public Lcom/smartisanos/launcher/Cb;
.super Ljava/lang/Object;
.source "UserPackageService.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final mCallback:Lcom/smartisanos/launcher/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/Cb;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/Cb;->log:Lcom/smartisanos/launcher/va;

    .line 2
    new-instance v0, Lcom/smartisanos/launcher/c/b;

    invoke-direct {v0}, Lcom/smartisanos/launcher/c/b;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/Cb;->mCallback:Lcom/smartisanos/launcher/c/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->doppelgangerBadgeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/pm/PackageManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDoppelgangerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->doppelgangerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/Cb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "registerCallback"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/Cb;->ta(Landroid/content/Context;)Landroid/content/pm/LauncherApps;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/Cb;->mCallback:Lcom/smartisanos/launcher/c/b;

    invoke-virtual {p0, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    :cond_1
    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/Cb;->log:Lcom/smartisanos/launcher/va;

    const-string v1, "unregisterCallback"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/Cb;->ta(Landroid/content/Context;)Landroid/content/pm/LauncherApps;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/Cb;->mCallback:Lcom/smartisanos/launcher/c/b;

    invoke-virtual {p0, v0}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    :cond_1
    return-void
.end method

.method private static ta(Landroid/content/Context;)Landroid/content/pm/LauncherApps;
    .locals 1

    const-string v0, "launcherapps"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    return-object p0
.end method
