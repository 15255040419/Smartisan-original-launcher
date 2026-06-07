.class public Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;
.super Ljava/lang/Object;
.source "ApplicationArchitecture.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAppIndex:I

.field public mAppName:Ljava/lang/String;

.field public mAppSize:Ljava/lang/String;

.field public mIconUri:Landroid/net/Uri;

.field public mInstalledState:I

.field public mIntentExtraData:Ljava/lang/String;

.field public mLaunchCount:I

.field public mMatchName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mStartUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture$1;

    invoke-direct {v0}, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture$1;-><init>()V

    sput-object v0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppName:Ljava/lang/String;

    .line 21
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mIconUri:Landroid/net/Uri;

    .line 22
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mStartUri:Landroid/net/Uri;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mLaunchCount:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mMatchName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mInstalledState:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppSize:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    .line 12
    iput p4, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    .line 13
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mIconUri:Landroid/net/Uri;

    .line 15
    iput-object p3, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mStartUri:Landroid/net/Uri;

    .line 16
    iput p7, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mLaunchCount:I

    .line 17
    iput p8, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    .line 4
    iput p4, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    .line 5
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mIconUri:Landroid/net/Uri;

    .line 7
    iput-object p3, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mStartUri:Landroid/net/Uri;

    .line 8
    iput p7, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mLaunchCount:I

    .line 9
    iput p8, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    .line 10
    iput-object p9, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mMatchName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppSize:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getInstalledState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mInstalledState:I

    return v0
.end method

.method public getIntentExtraData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mIntentExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mLaunchCount:I

    return v0
.end method

.method public getMatchName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mMatchName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mStartUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setAppIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppSize:Ljava/lang/String;

    return-void
.end method

.method public setIconUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mIconUri:Landroid/net/Uri;

    return-void
.end method

.method public setInstalledState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mInstalledState:I

    return-void
.end method

.method public setIntentExtraData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mIntentExtraData:Ljava/lang/String;

    return-void
.end method

.method public setLaunchCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mLaunchCount:I

    return-void
.end method

.method public setMatchName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mMatchName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setStartUri(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mStartUri:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAppName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mIconUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mStartUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mStartUri:Landroid/net/Uri;

    .line 2
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLaunchCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mLaunchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAppIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMatchName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mMatchName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mInstalledState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mInstalledState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAppSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mStartUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget p2, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mLaunchCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mMatchName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mInstalledState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mAppSize:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/android/quicksearchbox/network/entity/response/ApplicationArchitecture;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
