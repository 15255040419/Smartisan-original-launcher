.class public Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
.super Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEntry"
.end annotation


# instance fields
.field public final apkFile:Ljava/io/File;

.field public externalSize:J

.field public externalSizeStr:Ljava/lang/String;

.field public extraInfo:Ljava/lang/Object;

.field public hasLauncherEntry:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final id:J

.field public info:Landroid/content/pm/ApplicationInfo;

.field public internalSize:J

.field public internalSizeStr:Ljava/lang/String;

.field public isHomeApp:Z

.field public label:Ljava/lang/String;

.field public launcherEntryEnabled:Z

.field public mounted:Z

.field public normalizedLabel:Ljava/lang/String;

.field public size:J

.field public sizeLoadStart:J

.field public sizeStale:Z

.field public sizeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 2

    .line 1406
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;-><init>()V

    .line 1407
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    .line 1408
    iput-wide p3, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    .line 1409
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const-wide/16 p2, -0x1

    .line 1410
    iput-wide p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const/4 p2, 0x1

    .line 1411
    iput-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 1412
    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z
    .locals 3

    .line 1429
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1430
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    return v2

    .line 1434
    :cond_0
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    const p2, 0x1080c60

    .line 1435
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1437
    :cond_1
    iget-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez p1, :cond_2

    .line 1440
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1441
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1442
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public ensureLabel(Landroid/content/Context;)V
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v0, :cond_3

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 1418
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1419
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1421
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    .line 1422
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1423
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method

.method public getNormalizedLabel()Ljava/lang/String;
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    .line 1388
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->normalizedLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1451
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method
