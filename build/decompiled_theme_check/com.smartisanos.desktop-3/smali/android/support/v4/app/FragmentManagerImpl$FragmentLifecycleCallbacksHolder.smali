.class final Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# instance fields
.field final mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

.field final mRecursive:Z


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 3
    iput-boolean p2, p0, Landroid/support/v4/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    return-void
.end method
