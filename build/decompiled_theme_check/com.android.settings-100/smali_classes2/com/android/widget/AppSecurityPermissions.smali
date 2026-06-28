.class public Lcom/android/widget/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/widget/AppSecurityPermissions$PermissionInfoComparator;,
        Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;,
        Lcom/android/widget/AppSecurityPermissions$PermissionItemView;,
        Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;,
        Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSecurityPermissions"

.field public static final WHICH_ALL:I = 0xffff

.field public static final WHICH_NEW:I = 0x4

.field private static final localLOGV:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mNewPermPrefix:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPermComparator:Lcom/android/widget/AppSecurityPermissions$PermissionInfoComparator;

.field private final mPermGroupComparator:Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

.field private final mPermGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermGroupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>(Lcom/android/widget/AppSecurityPermissions$1;)V

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroupComparator:Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    .line 82
    new-instance v0, Lcom/android/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v0}, Lcom/android/widget/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPermComparator:Lcom/android/widget/AppSecurityPermissions$PermissionInfoComparator;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 278
    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 279
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 280
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 282
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v0, 0x1040622

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 4

    .line 305
    invoke-direct {p0, p1}, Lcom/android/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    .line 306
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    if-nez p2, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 315
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :catch_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V

    .line 324
    :cond_1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 327
    :try_start_1
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v0

    .line 328
    invoke-direct {p0, v0, p1}, Lcom/android/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 330
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t retrieve shared user id for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppSecurityPermissions"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 335
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 286
    invoke-direct {p0, p1}, Lcom/android/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;)V

    .line 287
    iput-object p2, p0, Lcom/android/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    .line 288
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 298
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p2, p1}, Lcom/android/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 300
    :cond_0
    iget-object p2, p0, Lcom/android/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    return-void

    .line 293
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Couldn\'t retrieve permissions for package:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppSecurityPermissions"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addPermToList(Ljava/util/List;Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ")V"
        }
    .end annotation

    .line 616
    iget-object v0, p2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const v1, 0x469c4000    # 20000.0f

    const/4 v2, 0x5

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 620
    :cond_0
    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions;->mPermComparator:Lcom/android/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-gez p0, :cond_1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    .line 624
    invoke-interface {p1, p0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "IZ)V"
        }
    .end annotation

    .line 497
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 501
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 502
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 503
    invoke-direct {p0, v2, p3}, Lcom/android/widget/AppSecurityPermissions;->getPermissionList(Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v9

    move v10, v0

    .line 504
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_2

    .line 505
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    if-nez v10, :cond_0

    const/4 v3, 0x1

    move v6, v3

    goto :goto_2

    :cond_0
    move v6, v0

    :goto_2
    const/4 v3, 0x4

    if-eq p3, v3, :cond_1

    .line 506
    iget-object v3, p0, Lcom/android/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    :goto_3
    move-object v7, v3

    move-object v3, p0

    move-object v4, v2

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/widget/AppSecurityPermissions;->getPermissionItemView(Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Lcom/android/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object v3

    .line 508
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 520
    invoke-virtual {p2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    .line 374
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 375
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v0, :cond_c

    .line 376
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 379
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_c

    .line 380
    aget-object v3, v0, v2

    .line 382
    :try_start_0
    iget-object v4, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v5, -0x1

    if-eqz p3, :cond_3

    .line 387
    iget-object v6, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_3

    move v6, v1

    .line 389
    :goto_1
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 390
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ltz v5, :cond_4

    .line 396
    iget-object v6, p3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v5, v6, v5

    goto :goto_3

    :cond_4
    move v5, v1

    .line 398
    :goto_3
    aget v6, p1, v2

    invoke-direct {p0, v4, v6, v5}, Lcom/android/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_7

    .line 403
    :cond_5
    iget-object v6, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 406
    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 407
    iput-object v7, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v7, v6

    .line 409
    :goto_4
    iget-object v8, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-nez v7, :cond_a

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    .line 413
    iget-object v7, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    :cond_7
    if-eqz v7, :cond_8

    .line 416
    new-instance v6, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v6, v7}, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    goto :goto_5

    .line 422
    :cond_8
    iget-object v6, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 423
    iget-object v6, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-nez v6, :cond_9

    .line 425
    new-instance v6, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v6, v4}, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 427
    :cond_9
    new-instance v6, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {v6, v4}, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 429
    :goto_5
    iget-object v7, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v8, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz p3, :cond_b

    and-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    move v6, v1

    .line 433
    :goto_6
    new-instance v7, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-direct {v7, v4}, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 434
    aget v4, p1, v2

    iput v4, v7, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    .line 435
    iput v5, v7, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    .line 438
    iput-boolean v6, v7, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    .line 439
    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 441
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring unknown permission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppSecurityPermissions"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    :goto_8
    return-void
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 355
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 358
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 359
    invoke-direct {p0, v2, p2}, Lcom/android/widget/AppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 7

    const-string v0, "layout_inflater"

    .line 345
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/LayoutInflater;

    if-eqz p3, :cond_0

    const v0, 0x108047b

    goto :goto_0

    :cond_0
    const v0, 0x10806b5

    .line 347
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 349
    invoke-static/range {v1 .. v6}, Lcom/android/widget/AppSecurityPermissions;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Lcom/android/widget/AppSecurityPermissions$PermissionItemView;
    .locals 7

    const p0, 0x109003b

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 536
    invoke-virtual/range {v0 .. v6}, Lcom/android/widget/AppSecurityPermissions$PermissionItemView;->setPermission(Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V

    return-object p0
.end method

.method private getPermissionItemView(Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Z)Lcom/android/widget/AppSecurityPermissions$PermissionItemView;
    .locals 8

    .line 527
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/widget/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)Lcom/android/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object p0

    return-object p0
.end method

.method private static getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1

    const p0, 0x109003d

    const/4 p4, 0x0

    .line 542
    invoke-virtual {p1, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p1, 0x10203e5

    .line 544
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p4, 0x10203e7

    .line 545
    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v0, 0x10203e1

    .line 547
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 548
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    .line 550
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 554
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p0
.end method

.method private getPermissionList(Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    .line 452
    iget-object p0, p1, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    return-object p0

    .line 454
    :cond_0
    iget-object p0, p1, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 366
    invoke-direct {p0, v0, p2, v0}, Lcom/android/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t retrieve permissions for package: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppSecurityPermissions"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getPermissionsView(IZ)Landroid/view/View;
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/android/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x10203e8

    .line 480
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x1020397

    .line 481
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 483
    iget-object v3, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-direct {p0, v3, v1, p1, p2}, Lcom/android/widget/AppSecurityPermissions;->displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;IZ)V

    .line 484
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    .line 485
    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object v0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z
    .locals 3

    .line 561
    iget p0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    return v0

    :cond_1
    if-eq p0, v1, :cond_3

    .line 569
    iget p0, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v1

    :goto_2
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v0

    .line 573
    :goto_3
    iget p1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_5

    move p1, v1

    goto :goto_4

    :cond_5
    move p1, v0

    :goto_4
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    move p3, v1

    goto :goto_5

    :cond_6
    move p3, v0

    :goto_5
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_6

    :cond_7
    move p2, v0

    :goto_6
    if-eqz p0, :cond_9

    if-nez v2, :cond_8

    if-nez p3, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    return v1

    :cond_9
    if-eqz p1, :cond_a

    if-eqz p3, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    const v1, 0x469c4000    # 20000.0f

    if-eqz p1, :cond_2

    .line 631
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 633
    iget v3, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    iget v4, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 637
    :cond_1
    iget-object v3, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v3, :cond_0

    .line 639
    iget-object v4, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4, v1, v0}, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 642
    iget-object v4, v3, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v2}, Lcom/android/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;)V

    .line 643
    iget-boolean v4, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v4, :cond_0

    .line 644
    iget-object v3, v3, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Lcom/android/widget/AppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_0

    .line 650
    :cond_2
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 651
    iget v3, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->labelRes:I

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    goto :goto_2

    .line 657
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 658
    iget-object v4, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4, v1, v0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 661
    :catch_0
    iget-object v3, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    goto :goto_3

    .line 652
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    .line 666
    :goto_3
    iget-object v3, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 668
    :cond_5
    iget-object p1, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroupComparator:Lcom/android/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getPermissionCount()I
    .locals 1

    const v0, 0xffff

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result p0

    return p0
.end method

.method public getPermissionCount(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 460
    :goto_0
    iget-object v2, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {p0, v2, p1}, Lcom/android/widget/AppSecurityPermissions;->getPermissionList(Lcom/android/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 2

    const v0, 0xffff

    const/4 v1, 0x0

    .line 467
    invoke-direct {p0, v0, v1}, Lcom/android/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionsView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/android/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionsViewWithRevokeButtons()Landroid/view/View;
    .locals 2

    const v0, 0xffff

    const/4 v1, 0x1

    .line 471
    invoke-direct {p0, v0, v1}, Lcom/android/widget/AppSecurityPermissions;->getPermissionsView(IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
