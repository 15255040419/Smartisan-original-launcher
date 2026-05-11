.class final Landroidx/versionedparcelable/b;
.super Ljava/lang/Object;
.source "ParcelImpl.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/versionedparcelable/ParcelImpl;
    .locals 0

    .line 2
    new-instance p0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/b;->createFromParcel(Landroid/os/Parcel;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/versionedparcelable/ParcelImpl;
    .locals 0

    .line 2
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/b;->newArray(I)[Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p0

    return-object p0
.end method
