.class public Landroid/support/v4/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "FragmentManagerNonConfig.java"


# instance fields
.field private final mChildNonConfigs:Ljava/util/List;

.field private final mFragments:Ljava/util/List;

.field private final mViewModelStores:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    .line 3
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    .line 4
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mViewModelStores:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getChildNonConfigs()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-object p0
.end method

.method getFragments()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    return-object p0
.end method

.method getViewModelStores()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mViewModelStores:Ljava/util/List;

    return-object p0
.end method
