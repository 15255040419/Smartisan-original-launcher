.class final Lcom/android/settings/widget/SettingSwitchPreference$SavedState$1;
.super Ljava/lang/Object;
.source "SettingSwitchPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingSwitchPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settings/widget/SettingSwitchPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/widget/SettingSwitchPreference$SavedState;
    .locals 0

    .line 123
    new-instance p0, Lcom/android/settings/widget/SettingSwitchPreference$SavedState;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingSwitchPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingSwitchPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/widget/SettingSwitchPreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settings/widget/SettingSwitchPreference$SavedState;
    .locals 0

    .line 127
    new-array p0, p1, [Lcom/android/settings/widget/SettingSwitchPreference$SavedState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingSwitchPreference$SavedState$1;->newArray(I)[Lcom/android/settings/widget/SettingSwitchPreference$SavedState;

    move-result-object p0

    return-object p0
.end method
