.class public Lcom/android/settings/AppIconsSettingsFragment;
.super Lcom/android/settings/SupportFragment;
.source "AppIconsSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/SimpleImageLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppIconsSettingsFragment$Asset;,
        Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_ASSET:Ljava/lang/String; = "asset"

.field public static final EXTRA_IS_PRIMARY_PKG:Ljava/lang/String; = "is_primary_pkg"

.field public static final EXTRA_REDIRECTED_PATH:Ljava/lang/String; = "redirected_icon_path"

.field public static final PRIMARY_REDIRECTED:I = 0x1

.field public static final SECONDARY_REDIRECTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AppIconsSettingsFragment"

.field public static final UNREDIRECTED:I = 0x3


# instance fields
.field private listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

.field private mAssetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheOfficial:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheUnOfficial:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/widget/TextView;

.field private mFooterView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIconManager:Landroid/content/res/IconManager;

.field private mIconSettingsAdapter:Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

.field private mImageDownloader:Lcom/android/settings/ImageDownloader;

.field private mImageLoader:Lcom/android/settings/SimpleImageLoader;

.field private mIsAccessibilityEnabled:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPrimaryRedirectedCount:I

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field private mUnPrimaryRedirectedCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SupportFragment;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheOfficial:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheUnOfficial:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mChangedPackages:Ljava/util/Set;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIsAccessibilityEnabled:Z

    .line 100
    new-instance v0, Lcom/android/settings/AppIconsSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AppIconsSettingsFragment$1;-><init>(Lcom/android/settings/AppIconsSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 476
    new-instance v0, Lcom/android/settings/AppIconsSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/AppIconsSettingsFragment$4;-><init>(Lcom/android/settings/AppIconsSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/AppIconsSettingsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/HashMap;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheOfficial:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/AppIconsSettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->updatePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/AppIconsSettingsFragment;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPrimaryRedirectedCount:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/AppIconsSettingsFragment;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settings/AppIconsSettingsFragment;)Lcom/android/settings/ImageDownloader;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mImageDownloader:Lcom/android/settings/ImageDownloader;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/AppIconsSettingsFragment;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/HashMap;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheUnOfficial:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/AppIconsSettingsFragment;)Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconSettingsAdapter:Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/AppIconsSettingsFragment;->initApplicationList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/AppIconsSettingsFragment;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->updateEmptyView(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/AppIconsSettingsFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/AppIconsSettingsFragment;->setFooterView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/AppIconsSettingsFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/AppIconsSettingsFragment;->initImageLoaderAndStartLoad()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/AppIconsSettingsFragment;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIsAccessibilityEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings/AppIconsSettingsFragment;Lcom/android/settings/AppIconsSettingsFragment$Asset;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->pickIconForAsset(Lcom/android/settings/AppIconsSettingsFragment$Asset;)V

    return-void
.end method

.method private getAssetForResolveInfo(Landroid/content/pm/ResolveInfo;I)Lcom/android/settings/AppIconsSettingsFragment$Asset;
    .locals 2

    .line 380
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/AppIconsSettingsFragment;->isPackageBlocked(Ljava/lang/String;)Z

    move-result p0

    .line 381
    new-instance v0, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    const/4 p0, 0x1

    :cond_0
    invoke-direct {v0, p1, p0, p2}, Lcom/android/settings/AppIconsSettingsFragment$Asset;-><init>(Landroid/content/pm/ResolveInfo;ZI)V

    return-object v0
.end method

.method private getOriginalIndexInAssetList(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/settings/AppIconsSettingsFragment$Asset;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            ")I"
        }
    .end annotation

    const/4 p0, -0x1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 257
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    move v1, p0

    .line 258
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 265
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    .line 266
    invoke-virtual {p3}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    iget v3, p3, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p3, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    iget v5, v2, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    if-eq v3, v5, :cond_1

    :cond_0
    iget v2, v2, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    if-eq v2, v4, :cond_2

    iget v2, p3, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    if-eq v2, v4, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, p0

    .line 274
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "indexInRemovedList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " asset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AppIconsSettingsFragment"

    invoke-static {p3, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, p0, :cond_5

    .line 277
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 279
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "originalIndexInAssetList:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private getPackageIndexInDataList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 580
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 581
    iget-object v2, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    invoke-virtual {v2}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 586
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "result index:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIconsSettingsFragment"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private initApplicationList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            ">;"
        }
    .end annotation

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {v1}, Landroid/content/res/IconManager;->getIconPrimarilyRedirectedResolveInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 499
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/AppIconsSettingsFragment;->shouldIgnore(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/AppIconsSettingsFragment;->isPackageBlocked(Ljava/lang/String;)Z

    move-result v4

    .line 501
    new-instance v5, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    invoke-direct {v5, v2, v4, v3}, Lcom/android/settings/AppIconsSettingsFragment$Asset;-><init>(Landroid/content/pm/ResolveInfo;ZI)V

    .line 502
    iget-object v2, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {v5, v2}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->ensureRedirectedIconPath(Landroid/content/res/IconManager;)V

    .line 503
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPrimaryRedirectedCount:I

    .line 507
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {v1}, Landroid/content/res/IconManager;->getIconSecondarilyRedirectedResolveInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 508
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/AppIconsSettingsFragment;->shouldIgnore(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 509
    :cond_2
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/AppIconsSettingsFragment;->isPackageBlocked(Ljava/lang/String;)Z

    move-result v4

    .line 510
    new-instance v5, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v4, v6}, Lcom/android/settings/AppIconsSettingsFragment$Asset;-><init>(Landroid/content/pm/ResolveInfo;ZI)V

    .line 511
    iget-object v2, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {v5, v2}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->ensureRedirectedIconPath(Landroid/content/res/IconManager;)V

    .line 512
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {v1}, Landroid/content/res/IconManager;->getIconUnRedirectedResolveInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 517
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/AppIconsSettingsFragment;->shouldIgnore(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 518
    :cond_4
    new-instance v4, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v3, v5}, Lcom/android/settings/AppIconsSettingsFragment$Asset;-><init>(Landroid/content/pm/ResolveInfo;ZI)V

    .line 519
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 522
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPrimaryRedirectedCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    .line 523
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private initImageLoaderAndStartLoad()V
    .locals 4

    .line 198
    new-instance v0, Lcom/android/settings/SimpleImageLoader;

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->_mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/SimpleImageLoader;-><init>(Landroid/content/Context;ILcom/android/settings/SimpleImageLoader$Callback;)V

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mImageLoader:Lcom/android/settings/SimpleImageLoader;

    .line 199
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mImageLoader:Lcom/android/settings/SimpleImageLoader;

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/settings/SimpleImageLoader;->setAssetList(Ljava/util/ArrayList;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mImageLoader:Lcom/android/settings/SimpleImageLoader;

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/settings/SimpleImageLoader;->setHandler(Landroid/os/Handler;)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mImageLoader:Lcom/android/settings/SimpleImageLoader;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheOfficial:Ljava/util/HashMap;

    aput-object v3, v1, v2

    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheUnOfficial:Ljava/util/HashMap;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/SimpleImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private isPackageBlocked(Ljava/lang/String;)Z
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {p0, p1}, Landroid/content/res/IconManager;->isIconBlockedForPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static loadOfficialIcon(Lcom/android/settings/AppIconsSettingsFragment$Asset;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 979
    invoke-static {}, Lcom/android/settings/SettingsApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/IconManager;

    .line 980
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p0}, Landroid/content/res/IconManager;->getUnRedirectedIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static loadUnOfficialIcon(Lcom/android/settings/AppIconsSettingsFragment$Asset;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 974
    invoke-static {}, Lcom/android/settings/SettingsApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/IconManager;

    .line 975
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p0}, Landroid/content/res/IconManager;->getRedirectedIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private pickIconForAsset(Lcom/android/settings/AppIconsSettingsFragment$Asset;)V
    .locals 4

    .line 180
    new-instance v0, Lcom/android/settings/CommonIconPickerFragment;

    invoke-direct {v0}, Lcom/android/settings/CommonIconPickerFragment;-><init>()V

    .line 181
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "asset"

    .line 182
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 183
    iget-object v2, p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedIconPath:Ljava/lang/String;

    const-string/jumbo v3, "redirected_icon_path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget p1, p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string p1, "is_primary_pkg"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    invoke-virtual {v0, v1}, Lcom/android/settings/CommonIconPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/settings/AppIconsSettingsFragment;->start(Lme/yokeyword/fragmentation/ISupportFragment;)V

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    .line 239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AppIconsSettingsFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.smartisanos.launcher.update_icon"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AppIconsSettingsFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removePackageInDataList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
            ">;"
        }
    .end annotation

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 566
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    .line 568
    invoke-virtual {v1}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 570
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 574
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "result asset:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppIconsSettingsFragment"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setFooterView()V
    .locals 6

    .line 544
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1, v0}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->removeFooterView(Landroid/view/View;)V

    .line 547
    :cond_0
    iget v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d02f9

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mFooterView:Landroid/view/View;

    .line 549
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mFooterView:Landroid/view/View;

    const v2, 0x7f0a0560

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mFooterView:Landroid/view/View;

    const v2, 0x7f0a0958

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/TipsView;

    const v2, 0x7f120966

    .line 551
    invoke-virtual {v0, v2}, Lsmartisanos/widget/TipsView;->setText(I)V

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 553
    iget-object v3, p0, Lcom/android/settings/AppIconsSettingsFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 554
    invoke-virtual {v0}, Lsmartisanos/widget/TipsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 556
    invoke-virtual {v0, v1}, Lsmartisanos/widget/TipsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mFooterView:Landroid/view/View;

    .line 560
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method private shouldIgnore(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-lez p2, :cond_1

    .line 531
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    goto :goto_0

    .line 533
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 535
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->isPackageInstalledAndIsSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "com.google"

    .line 536
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const-string v2, "com.android.vending"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v0

    :goto_2
    if-eqz v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    const-string v1, "com.smartisan"

    .line 537
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mContext:Landroid/content/Context;

    .line 538
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/settings/Utils;->isPackageLocked(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.bullet.messenger"

    .line 539
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.lbt.gms"

    .line 540
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.google.android.gms"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    :cond_6
    :goto_3
    return v0
.end method

.method private unregisterPackageReceiver()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/AppIconsSettingsFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateEmptyView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mEmptyView:Landroid/widget/TextView;

    const v0, 0x7f1201e2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mEmptyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f130121

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 229
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 p1, 0x2

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mEmptyView:Landroid/widget/TextView;

    const v0, 0x7f12096a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mEmptyView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mContext:Landroid/content/Context;

    const v0, 0x1030044

    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePackage(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/android/settings/AppIconsSettingsFragment;->shouldIgnore(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 286
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->getPackageIndexInDataList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->removePackageInDataList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " removedAsset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppIconsSettingsFragment"

    invoke-static {v4, v3}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    if-eqz v5, :cond_1

    .line 291
    iget v5, v5, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    if-ne v5, v6, :cond_2

    .line 292
    iget v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPrimaryRedirectedCount:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPrimaryRedirectedCount:I

    goto :goto_0

    .line 294
    :cond_2
    iget v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    .line 295
    iget v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/settings/AppIconsSettingsFragment;->setFooterView()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 301
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x2000

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v3, :cond_4

    .line 305
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mChangedPackages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v5, v6

    goto/16 :goto_7

    .line 307
    :cond_4
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {p1, v3}, Landroid/content/res/IconManager;->getIconRedirectedPrimarilyResolvesForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object p1

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "size:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v6

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 311
    invoke-direct {p0, v8, v6}, Lcom/android/settings/AppIconsSettingsFragment;->getAssetForResolveInfo(Landroid/content/pm/ResolveInfo;I)Lcom/android/settings/AppIconsSettingsFragment$Asset;

    move-result-object v8

    .line 312
    iget-object v9, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {v8, v9}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->ensureRedirectedIconPath(Landroid/content/res/IconManager;)V

    .line 313
    iget-object v9, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheUnOfficial:Ljava/util/HashMap;

    invoke-static {v8}, Lcom/android/settings/AppIconsSettingsFragment;->loadUnOfficialIcon(Lcom/android/settings/AppIconsSettingsFragment$Asset;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v9, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheOfficial:Ljava/util/HashMap;

    invoke-static {v8}, Lcom/android/settings/AppIconsSettingsFragment;->loadOfficialIcon(Lcom/android/settings/AppIconsSettingsFragment$Asset;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0, v2, v1, v8}, Lcom/android/settings/AppIconsSettingsFragment;->getOriginalIndexInAssetList(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/settings/AppIconsSettingsFragment$Asset;)I

    move-result v9

    if-ltz v9, :cond_5

    .line 319
    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v5, v0

    goto :goto_2

    .line 322
    :cond_5
    iget-object v9, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPrimaryRedirectedCount:I

    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    :goto_2
    iget v8, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPrimaryRedirectedCount:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPrimaryRedirectedCount:I

    goto :goto_1

    :cond_6
    move v5, v6

    .line 327
    :cond_7
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {p1, v3}, Landroid/content/res/IconManager;->getIconRedirectedSecondarilyResolvesForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object p1

    .line 328
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    .line 330
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    const/4 v9, 0x2

    .line 331
    invoke-direct {p0, v8, v9}, Lcom/android/settings/AppIconsSettingsFragment;->getAssetForResolveInfo(Landroid/content/pm/ResolveInfo;I)Lcom/android/settings/AppIconsSettingsFragment$Asset;

    move-result-object v8

    .line 332
    iget-object v9, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {v8, v9}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->ensureRedirectedIconPath(Landroid/content/res/IconManager;)V

    .line 334
    iget-object v9, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheOfficial:Ljava/util/HashMap;

    invoke-static {v8}, Lcom/android/settings/AppIconsSettingsFragment;->loadOfficialIcon(Lcom/android/settings/AppIconsSettingsFragment$Asset;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v9, p0, Lcom/android/settings/AppIconsSettingsFragment;->mImageDownloader:Lcom/android/settings/ImageDownloader;

    iget-object v10, v8, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedIconPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/settings/ImageDownloader;->removeBitmapFromCache(Ljava/lang/String;)V

    .line 336
    iget-object v9, p0, Lcom/android/settings/AppIconsSettingsFragment;->mImageDownloader:Lcom/android/settings/ImageDownloader;

    iget-object v10, v8, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedIconPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/settings/ImageDownloader;->updateBitmap(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v2, v1, v8}, Lcom/android/settings/AppIconsSettingsFragment;->getOriginalIndexInAssetList(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/settings/AppIconsSettingsFragment$Asset;)I

    move-result v9

    if-ltz v9, :cond_9

    .line 341
    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v5, v0

    goto :goto_4

    .line 344
    :cond_9
    iget-object v9, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPrimaryRedirectedCount:I

    add-int/2addr v10, v6

    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 346
    :goto_4
    iget v8, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    .line 347
    iget v8, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    if-ne v8, v6, :cond_8

    invoke-direct {p0}, Lcom/android/settings/AppIconsSettingsFragment;->setFooterView()V

    goto :goto_3

    .line 350
    :cond_a
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {p1, v3}, Landroid/content/res/IconManager;->getIconUnRedirectedResolvesForPackage(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object p1

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    .line 353
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    const/4 v4, 0x3

    .line 354
    invoke-direct {p0, v3, v4}, Lcom/android/settings/AppIconsSettingsFragment;->getAssetForResolveInfo(Landroid/content/pm/ResolveInfo;I)Lcom/android/settings/AppIconsSettingsFragment$Asset;

    move-result-object v3

    .line 355
    iget-object v4, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheOfficial:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/android/settings/AppIconsSettingsFragment;->loadOfficialIcon(Lcom/android/settings/AppIconsSettingsFragment$Asset;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-direct {p0, v2, v1, v3}, Lcom/android/settings/AppIconsSettingsFragment;->getOriginalIndexInAssetList(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/settings/AppIconsSettingsFragment$Asset;)I

    move-result v4

    if-ltz v4, :cond_c

    .line 360
    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v5, v0

    goto :goto_6

    .line 363
    :cond_c
    iget-object v4, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 365
    :goto_6
    iget v3, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    .line 366
    iget v3, p0, Lcom/android/settings/AppIconsSettingsFragment;->mUnPrimaryRedirectedCount:I

    if-ne v3, v6, :cond_b

    invoke-direct {p0}, Lcom/android/settings/AppIconsSettingsFragment;->setFooterView()V

    goto :goto_5

    :cond_d
    :goto_7
    if-eqz v5, :cond_e

    .line 370
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 371
    :cond_e
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconSettingsAdapter:Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    invoke-virtual {p1}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->notifyDataSetChanged()V

    .line 372
    invoke-direct {p0, v0}, Lcom/android/settings/AppIconsSettingsFragment;->updateEmptyView(Z)V

    :cond_f
    :goto_8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 592
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a06bf

    if-eq v0, v1, :cond_0

    const v2, 0x7f0a09cf

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 595
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    .line 597
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mAssetList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    .line 598
    iget v1, v0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 599
    invoke-direct {p0, v0}, Lcom/android/settings/AppIconsSettingsFragment;->pickIconForAsset(Lcom/android/settings/AppIconsSettingsFragment$Asset;)V

    return-void

    .line 603
    :cond_2
    iget-boolean v1, v0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mShowOfficial:Z

    if-eq v1, p1, :cond_4

    .line 604
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mChangedPackages:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 605
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mChangedPackages:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 607
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mChangedPackages:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    :goto_1
    iput-boolean p1, v0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mShowOfficial:Z

    .line 610
    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {v0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Landroid/content/res/IconManager;->setIconBlockedForPackage(Ljava/lang/String;Z)V

    .line 611
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconSettingsAdapter:Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    invoke-virtual {p1}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->notifyDataSetChanged()V

    .line 613
    :cond_4
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktop(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 614
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {p1}, Landroid/content/res/IconManager;->persistentIconBlockingInfo()V

    .line 615
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/IconManager;->notifyIconUpdate(Ljava/util/Collection;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0d0049

    .line 116
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mRootView:Landroid/view/View;

    const p1, 0x7f12096c

    .line 117
    iput p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mTitleResId:I

    const-string p1, "icon"

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/IconManager;

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "enabled_accessibility_services"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string v0, "com.google.android.marvin.talkback"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIsAccessibilityEnabled:Z

    .line 126
    new-instance p1, Lcom/android/settings/AppIconsSettingsFragment$2;

    invoke-direct {p1, p0}, Lcom/android/settings/AppIconsSettingsFragment$2;-><init>(Lcom/android/settings/AppIconsSettingsFragment;)V

    new-array v0, p3, [Ljava/lang/Void;

    .line 145
    invoke-virtual {p1, v0}, Lcom/android/settings/AppIconsSettingsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const p1, 0x7f0a0385

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    const p1, 0x7f0a02a0

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mEmptyView:Landroid/widget/TextView;

    .line 150
    invoke-direct {p0, p2}, Lcom/android/settings/AppIconsSettingsFragment;->updateEmptyView(Z)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    iget-object p2, p0, Lcom/android/settings/AppIconsSettingsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->setEmptyView(Landroid/view/View;)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    iget-object p2, p0, Lcom/android/settings/AppIconsSettingsFragment;->_mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, Lcom/android/settings/Utils;->inflateListTransparentHeader(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->addHeaderView(Landroid/view/View;)V

    .line 154
    new-instance p1, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    iget-object p2, p0, Lcom/android/settings/AppIconsSettingsFragment;->_mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;-><init>(Lcom/android/settings/AppIconsSettingsFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconSettingsAdapter:Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    .line 155
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    iget-object p2, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconSettingsAdapter:Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    invoke-virtual {p1, p2}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->setAdapter(Lcom/android/settings/stickylistheaders/StickyListHeadersAdapter;)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {p1, p3}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->setAreHeadersSticky(Z)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->listView:Lcom/android/settings/stickylistheaders/StickyListHeadersListView;

    new-instance p2, Lcom/android/settings/AppIconsSettingsFragment$3;

    invoke-direct {p2, p0}, Lcom/android/settings/AppIconsSettingsFragment$3;-><init>(Lcom/android/settings/AppIconsSettingsFragment;)V

    invoke-virtual {p1, p2}, Lcom/android/settings/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/AppIconsSettingsFragment;->registerPackageReceiver()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;Z)Lcom/android/settings/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/ImageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/settings/ImageDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mImageDownloader:Lcom/android/settings/ImageDownloader;

    .line 176
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheOfficial:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 192
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mCacheUnOfficial:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 193
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onDestroyView()V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/AppIconsSettingsFragment;->unregisterPackageReceiver()V

    return-void
.end method

.method public onLoadFailed()V
    .locals 0

    return-void
.end method

.method public onLoadFinished()V
    .locals 0

    .line 985
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconSettingsAdapter:Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSupportInvisible()V
    .locals 5

    .line 206
    invoke-super {p0}, Lcom/android/settings/SupportFragment;->onSupportInvisible()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mChangedPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    invoke-virtual {v0}, Landroid/content/res/IconManager;->persistentIconBlockingInfo()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mIconManager:Landroid/content/res/IconManager;

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment;->mChangedPackages:Ljava/util/Set;

    invoke-virtual {v0, v1}, Landroid/content/res/IconManager;->notifyIconUpdate(Ljava/util/Collection;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mChangedPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/android/settings/AppIconsSettingsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/applications/ApplicationsState;->getEntryByUserId(Ljava/lang/String;I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->setDirty(Z)V

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AppIconsSettingsFragment;->mState:Lcom/android/settings/applications/ApplicationsState;

    const/16 v4, 0xa

    invoke-virtual {v2, v1, v4}, Lcom/android/settings/applications/ApplicationsState;->getEntryByUserId(Ljava/lang/String;I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v1, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->setDirty(Z)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment;->mChangedPackages:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_3
    return-void
.end method
