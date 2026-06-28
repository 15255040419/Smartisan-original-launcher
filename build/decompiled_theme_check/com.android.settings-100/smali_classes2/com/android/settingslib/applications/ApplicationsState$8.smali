.class final Lcom/android/settingslib/applications/ApplicationsState$8;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    .line 1573
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 1575
    :cond_0
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    .line 1577
    :cond_1
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    .line 1579
    :cond_2
    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    if-eqz p0, :cond_3

    return v1

    .line 1581
    :cond_3
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method
