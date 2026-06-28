.class public Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/AccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBadgeCache"
.end annotation


# instance fields
.field private final mBadges:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    .line 326
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->getUserBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getUserBadge(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
