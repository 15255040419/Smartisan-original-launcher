.class Landroidx/preference/EditTextPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/EditTextPreference;
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
            "Landroidx/preference/EditTextPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    new-instance v0, Landroidx/preference/EditTextPreference$SavedState$1;

    invoke-direct {v0}, Landroidx/preference/EditTextPreference$SavedState$1;-><init>()V

    sput-object v0, Landroidx/preference/EditTextPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/EditTextPreference$SavedState;->mText:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 207
    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 208
    iget-object p0, p0, Landroidx/preference/EditTextPreference$SavedState;->mText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
