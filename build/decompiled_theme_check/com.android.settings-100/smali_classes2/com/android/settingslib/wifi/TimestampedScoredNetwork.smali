.class Lcom/android/settingslib/wifi/TimestampedScoredNetwork;
.super Ljava/lang/Object;
.source "TimestampedScoredNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mScore:Landroid/net/ScoredNetwork;

.field private mUpdatedTimestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork$1;

    invoke-direct {v0}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/net/ScoredNetwork;J)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mScore:Landroid/net/ScoredNetwork;

    .line 32
    iput-wide p2, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mUpdatedTimestampMillis:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Landroid/net/ScoredNetwork;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/ScoredNetwork;

    iput-object v0, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mScore:Landroid/net/ScoredNetwork;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mUpdatedTimestampMillis:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScore()Landroid/net/ScoredNetwork;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mScore:Landroid/net/ScoredNetwork;

    return-object p0
.end method

.method public getUpdatedTimestampMillis()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mUpdatedTimestampMillis:J

    return-wide v0
.end method

.method public update(Landroid/net/ScoredNetwork;J)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mScore:Landroid/net/ScoredNetwork;

    .line 42
    iput-wide p2, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mUpdatedTimestampMillis:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mScore:Landroid/net/ScoredNetwork;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-wide v0, p0, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mUpdatedTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
