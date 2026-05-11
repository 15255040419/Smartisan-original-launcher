.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source "ParcelImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mParcel:Landroidx/versionedparcelable/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/versionedparcelable/b;

    invoke-direct {v0}, Landroidx/versionedparcelable/b;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/versionedparcelable/d;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/d;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroidx/versionedparcelable/c;->Aa()Landroidx/versionedparcelable/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/e;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/versionedparcelable/d;

    invoke-direct {p2, p1}, Landroidx/versionedparcelable/d;-><init>(Landroid/os/Parcel;)V

    .line 2
    iget-object p0, p0, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/e;

    invoke-virtual {p2, p0}, Landroidx/versionedparcelable/c;->a(Landroidx/versionedparcelable/e;)V

    return-void
.end method
