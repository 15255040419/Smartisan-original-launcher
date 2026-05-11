.class public final Landroid/support/v4/media/MediaSession2$ControllerInfo;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# instance fields
.field private final mControllerCb:Landroid/support/v4/media/MediaSession2$ControllerCb;

.field private final mIsTrusted:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILandroid/support/v4/media/MediaSession2$ControllerCb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mUid:I

    .line 3
    iput-object p1, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mIsTrusted:Z

    .line 5
    iput-object p4, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mControllerCb:Landroid/support/v4/media/MediaSession2$ControllerCb;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    check-cast p1, Landroid/support/v4/media/MediaSession2$ControllerInfo;

    .line 3
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mControllerCb:Landroid/support/v4/media/MediaSession2$ControllerCb;

    iget-object p1, p1, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mControllerCb:Landroid/support/v4/media/MediaSession2$ControllerCb;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaSession2$ControllerCb;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method getControllerCb()Landroid/support/v4/media/MediaSession2$ControllerCb;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mControllerCb:Landroid/support/v4/media/MediaSession2$ControllerCb;

    return-object p0
.end method

.method getId()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mControllerCb:Landroid/support/v4/media/MediaSession2$ControllerCb;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->getId()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mUid:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mControllerCb:Landroid/support/v4/media/MediaSession2$ControllerCb;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaSession2$ControllerCb;->hashCode()I

    move-result p0

    return p0
.end method

.method public isTrusted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mIsTrusted:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerInfo {pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/support/v4/media/MediaSession2$ControllerInfo;->mUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
