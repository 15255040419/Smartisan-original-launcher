.class Landroidx/preference/ListPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/ListPreference;
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
            "Landroidx/preference/ListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 285
    new-instance v0, Landroidx/preference/ListPreference$SavedState$1;

    invoke-direct {v0}, Landroidx/preference/ListPreference$SavedState$1;-><init>()V

    sput-object v0, Landroidx/preference/ListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/ListPreference$SavedState;->mValue:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 311
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    iget-object p0, p0, Landroidx/preference/ListPreference$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
