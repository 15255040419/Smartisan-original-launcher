.class public Lcom/android/settingslib/applications/InterestingConfigChanges;
.super Ljava/lang/Object;
.source "InterestingConfigChanges.java"


# instance fields
.field private final mFlags:I

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDensity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, -0x7ffffcfc

    .line 29
    invoke-direct {p0, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 35
    iput p1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mFlags:I

    return-void
.end method


# virtual methods
.method public applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 40
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 41
    iget v1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-nez v1, :cond_2

    .line 42
    iget v1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v4

    .line 43
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    return v3
.end method
