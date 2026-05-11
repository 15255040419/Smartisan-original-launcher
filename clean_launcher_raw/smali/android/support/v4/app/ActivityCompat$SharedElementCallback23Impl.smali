.class Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;
.super Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;
.source "ActivityCompat.java"


# direct methods
.method constructor <init>(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V

    return-void
.end method


# virtual methods
.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;

    new-instance v1, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;

    invoke-direct {v1, p0, p3}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;-><init>(Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    return-void
.end method
