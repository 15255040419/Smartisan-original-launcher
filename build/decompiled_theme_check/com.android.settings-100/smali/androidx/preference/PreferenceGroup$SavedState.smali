.class Landroidx/preference/PreferenceGroup$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "PreferenceGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/preference/PreferenceGroup$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mInitialExpandedChildrenCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 576
    new-instance v0, Landroidx/preference/PreferenceGroup$SavedState$1;

    invoke-direct {v0}, Landroidx/preference/PreferenceGroup$SavedState$1;-><init>()V

    sput-object v0, Landroidx/preference/PreferenceGroup$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 592
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/preference/PreferenceGroup$SavedState;->mInitialExpandedChildrenCount:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    .line 597
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 598
    iput p2, p0, Landroidx/preference/PreferenceGroup$SavedState;->mInitialExpandedChildrenCount:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 603
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 604
    iget p0, p0, Landroidx/preference/PreferenceGroup$SavedState;->mInitialExpandedChildrenCount:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
