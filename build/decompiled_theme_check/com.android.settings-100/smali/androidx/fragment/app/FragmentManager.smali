.class public abstract Landroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Landroidx/fragment/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field static final DEFAULT_FACTORY:Landroidx/fragment/app/FragmentFactory;

.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1


# instance fields
.field private mFragmentFactory:Landroidx/fragment/app/FragmentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroidx/fragment/app/FragmentFactory;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentFactory;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentManager;->DEFAULT_FACTORY:Landroidx/fragment/app/FragmentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0

    .line 434
    sput-boolean p0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public abstract addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract beginTransaction()Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentById(I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;
.end method

.method public abstract getBackStackEntryCount()I
.end method

.method public abstract getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public getFragmentFactory()Landroidx/fragment/app/FragmentFactory;
    .locals 1

    .line 411
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Landroidx/fragment/app/FragmentManager;->DEFAULT_FACTORY:Landroidx/fragment/app/FragmentFactory;

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 414
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    return-object p0
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isStateSaved()Z
.end method

.method public openTransaction()Landroidx/fragment/app/FragmentTransaction;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    return-object p0
.end method

.method public abstract popBackStack()V
.end method

.method public abstract popBackStack(II)V
.end method

.method public abstract popBackStack(Ljava/lang/String;I)V
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract popBackStackImmediate(II)Z
.end method

.method public abstract popBackStackImmediate(Ljava/lang/String;I)Z
.end method

.method public abstract putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
.end method

.method public abstract removeOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
.end method

.method public setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V
    .locals 0

    .line 401
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    return-void
.end method

.method public abstract unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
.end method
