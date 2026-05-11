.class Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManagerImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSessionManager$RemoteUserInfoImpl;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPid:I

    .line 4
    iput p3, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mUid:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;

    .line 3
    iget-object v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPid:I

    iget v2, p1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPid:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mUid:I

    iget p1, p1, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mUid:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPid:I

    return p0
.end method

.method public getUid()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mUid:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Landroid/support/v4/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
