.class final Lcom/android/settings/AppIconsSettingsFragment$Asset$1;
.super Ljava/lang/Object;
.source "AppIconsSettingsFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppIconsSettingsFragment$Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settings/AppIconsSettingsFragment$Asset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppIconsSettingsFragment$Asset;
    .locals 1

    .line 951
    new-instance p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;-><init>(Landroid/os/Parcel;Lcom/android/settings/AppIconsSettingsFragment$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 948
    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$Asset$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppIconsSettingsFragment$Asset;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settings/AppIconsSettingsFragment$Asset;
    .locals 0

    .line 956
    new-array p0, p1, [Lcom/android/settings/AppIconsSettingsFragment$Asset;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 948
    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$Asset$1;->newArray(I)[Lcom/android/settings/AppIconsSettingsFragment$Asset;

    move-result-object p0

    return-object p0
.end method
