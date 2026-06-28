.class final Landroid/support/design/widget/g;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/CoordinatorLayout$SavedState;
    .locals 1

    .line 4
    new-instance p0, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/CoordinatorLayout$SavedState;
    .locals 0

    .line 3
    new-instance p0, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/design/widget/g;->createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/CoordinatorLayout$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/g;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/CoordinatorLayout$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/support/design/widget/CoordinatorLayout$SavedState;
    .locals 0

    .line 2
    new-array p0, p1, [Landroid/support/design/widget/CoordinatorLayout$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/design/widget/g;->newArray(I)[Landroid/support/design/widget/CoordinatorLayout$SavedState;

    move-result-object p0

    return-object p0
.end method
