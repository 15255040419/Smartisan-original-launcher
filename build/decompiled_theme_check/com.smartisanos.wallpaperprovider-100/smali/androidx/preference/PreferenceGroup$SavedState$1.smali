.class final Landroidx/preference/PreferenceGroup$SavedState$1;
.super Ljava/lang/Object;
.source "PreferenceGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceGroup$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/preference/PreferenceGroup$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/preference/PreferenceGroup$SavedState;
    .locals 0

    .line 580
    new-instance p0, Landroidx/preference/PreferenceGroup$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/preference/PreferenceGroup$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/preference/PreferenceGroup$SavedState;
    .locals 0

    .line 585
    new-array p0, p1, [Landroidx/preference/PreferenceGroup$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup$SavedState$1;->newArray(I)[Landroidx/preference/PreferenceGroup$SavedState;

    move-result-object p0

    return-object p0
.end method
