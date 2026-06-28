.class final Lcom/android/settings/AppListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "AppListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settings/AppListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppListPreference$SavedState;
    .locals 6

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 310
    new-instance p0, Lcom/android/settings/AppListPreference$SavedState;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppListPreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settings/AppListPreference$SavedState;
    .locals 0

    .line 315
    new-array p0, p1, [Lcom/android/settings/AppListPreference$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$SavedState$1;->newArray(I)[Lcom/android/settings/AppListPreference$SavedState;

    move-result-object p0

    return-object p0
.end method
