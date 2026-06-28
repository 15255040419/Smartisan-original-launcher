.class Landroidx/preference/MultiSelectListPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/MultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/preference/MultiSelectListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Landroidx/preference/MultiSelectListPreference$SavedState$1;

    invoke-direct {v0}, Landroidx/preference/MultiSelectListPreference$SavedState$1;-><init>()V

    sput-object v0, Landroidx/preference/MultiSelectListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 251
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/preference/MultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    .line 254
    new-array v0, v0, [Ljava/lang/String;

    .line 255
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 257
    iget-object p0, p0, Landroidx/preference/MultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 266
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 267
    iget-object p2, p0, Landroidx/preference/MultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object p0, p0, Landroidx/preference/MultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
