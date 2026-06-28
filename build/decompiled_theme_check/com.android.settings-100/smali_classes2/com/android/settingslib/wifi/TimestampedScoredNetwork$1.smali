.class final Lcom/android/settingslib/wifi/TimestampedScoredNetwork$1;
.super Ljava/lang/Object;
.source "TimestampedScoredNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/TimestampedScoredNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settingslib/wifi/TimestampedScoredNetwork;
    .locals 0

    .line 68
    new-instance p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/settingslib/wifi/TimestampedScoredNetwork;
    .locals 0

    .line 73
    new-array p0, p1, [Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork$1;->newArray(I)[Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    move-result-object p0

    return-object p0
.end method
