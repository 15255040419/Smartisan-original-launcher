.class public abstract Landroid/support/v4/app/LoaderManager;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method

.method public static getInstance(Landroid/arch/lifecycle/l;)Landroid/support/v4/app/LoaderManager;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v1, p0

    check-cast v1, Landroid/arch/lifecycle/H;

    invoke-interface {v1}, Landroid/arch/lifecycle/H;->getViewModelStore()Landroid/arch/lifecycle/G;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Landroid/arch/lifecycle/l;Landroid/arch/lifecycle/G;)V

    return-object v0
.end method


# virtual methods
.method public abstract destroyLoader(I)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLoader(I)Landroid/support/v4/content/Loader;
.end method

.method public hasRunningLoaders()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
.end method

.method public abstract markForRedelivery()V
.end method

.method public abstract restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
.end method
