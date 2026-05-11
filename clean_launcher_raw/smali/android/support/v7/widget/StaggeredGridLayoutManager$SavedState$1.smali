.class final Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState$1;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    .locals 0

    .line 2
    new-instance p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;
    .locals 0

    .line 2
    new-array p0, p1, [Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState$1;->newArray(I)[Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    move-result-object p0

    return-object p0
.end method
