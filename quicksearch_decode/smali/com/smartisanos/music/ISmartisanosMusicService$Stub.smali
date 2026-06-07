.class public abstract Lcom/smartisanos/music/ISmartisanosMusicService$Stub;
.super Landroid/os/Binder;
.source "ISmartisanosMusicService.java"

# interfaces
.implements Lcom/smartisanos/music/ISmartisanosMusicService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/music/ISmartisanosMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/music/ISmartisanosMusicService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.smartisanos.music.ISmartisanosMusicService"

.field public static final TRANSACTION_addToFavorites:I = 0x1f

.field public static final TRANSACTION_cancelSleepMode:I = 0x2c

.field public static final TRANSACTION_cycleRepeat:I = 0x33

.field public static final TRANSACTION_delayPlay:I = 0x24

.field public static final TRANSACTION_duration:I = 0xa

.field public static final TRANSACTION_enqueue:I = 0x12

.field public static final TRANSACTION_getAbsolutePath:I = 0x2d

.field public static final TRANSACTION_getAlbumBitmap:I = 0x23

.field public static final TRANSACTION_getAlbumId:I = 0xf

.field public static final TRANSACTION_getAlbumName:I = 0xe

.field public static final TRANSACTION_getArtistId:I = 0x11

.field public static final TRANSACTION_getArtistName:I = 0x10

.field public static final TRANSACTION_getAudioId:I = 0x16

.field public static final TRANSACTION_getAudioSessionId:I = 0x1e

.field public static final TRANSACTION_getBufferProgress:I = 0x28

.field public static final TRANSACTION_getMediaMountedCount:I = 0x1d

.field public static final TRANSACTION_getPath:I = 0x15

.field public static final TRANSACTION_getPlayingMode:I = 0x37

.field public static final TRANSACTION_getQueue:I = 0x13

.field public static final TRANSACTION_getQueuePosition:I = 0x3

.field public static final TRANSACTION_getRemainingTime:I = 0x2e

.field public static final TRANSACTION_getRepeatMode:I = 0x1c

.field public static final TRANSACTION_getShuffleMode:I = 0x18

.field public static final TRANSACTION_getTrackName:I = 0xd

.field public static final TRANSACTION_isBuffering:I = 0x29

.field public static final TRANSACTION_isFavorite:I = 0x21

.field public static final TRANSACTION_isHifi:I = 0x30

.field public static final TRANSACTION_isNetResource:I = 0x2a

.field public static final TRANSACTION_isPlaying:I = 0x4

.field public static final TRANSACTION_isPlayingState:I = 0x36

.field public static final TRANSACTION_next:I = 0x9

.field public static final TRANSACTION_open:I = 0x2

.field public static final TRANSACTION_openFile:I = 0x1

.field public static final TRANSACTION_pause:I = 0x6

.field public static final TRANSACTION_pauseNow:I = 0x31

.field public static final TRANSACTION_play:I = 0x7

.field public static final TRANSACTION_playAll:I = 0x27

.field public static final TRANSACTION_position:I = 0xb

.field public static final TRANSACTION_prev:I = 0x8

.field public static final TRANSACTION_removeFromFavorites:I = 0x20

.field public static final TRANSACTION_removeTrack:I = 0x1a

.field public static final TRANSACTION_removeTracks:I = 0x19

.field public static final TRANSACTION_replace:I = 0x25

.field public static final TRANSACTION_rollback:I = 0x26

.field public static final TRANSACTION_seek:I = 0xc

.field public static final TRANSACTION_seekAndPlay:I = 0x35

.field public static final TRANSACTION_setPlayingMode:I = 0x38

.field public static final TRANSACTION_setQueuePosition:I = 0x14

.field public static final TRANSACTION_setRepeatMode:I = 0x1b

.field public static final TRANSACTION_setShuffleMode:I = 0x17

.field public static final TRANSACTION_shuffleAllAlbums:I = 0x32

.field public static final TRANSACTION_stop:I = 0x5

.field public static final TRANSACTION_toSleepMode:I = 0x2b

.field public static final TRANSACTION_toggleFavorite:I = 0x22

.field public static final TRANSACTION_toggleShuffle:I = 0x34

.field public static final TRANSACTION_tonggleHifi:I = 0x2f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.smartisanos.music.ISmartisanosMusicService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/smartisanos/music/ISmartisanosMusicService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.smartisanos.music.ISmartisanosMusicService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/smartisanos/music/ISmartisanosMusicService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/smartisanos/music/ISmartisanosMusicService;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/smartisanos/music/ISmartisanosMusicService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/smartisanos/music/ISmartisanosMusicService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.smartisanos.music.ISmartisanosMusicService"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    invoke-interface {p0, p1}, Lcom/smartisanos/music/ISmartisanosMusicService;->setPlayingMode(I)V

    .line 5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 6
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getPlayingMode()I

    move-result p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 10
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->isPlayingState()Z

    move-result p1

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 14
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v0

    .line 17
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    .line 18
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object v2, p0

    .line 19
    invoke-interface/range {v2 .. v8}, Lcom/smartisanos/music/ISmartisanosMusicService;->seekAndPlay(JZZJ)V

    return v1

    .line 20
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->toggleShuffle()V

    return v1

    .line 22
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->cycleRepeat()V

    return v1

    .line 24
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p3

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 29
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->shuffleAllAlbums([J[JII)V

    return v1

    .line 30
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->pauseNow()V

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 33
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->isHifi()Z

    move-result p1

    .line 35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 36
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 37
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->tonggleHifi()V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 40
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getRemainingTime()J

    move-result-wide p1

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 44
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 45
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 47
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 48
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->cancelSleepMode()V

    return v1

    .line 50
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 52
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->toSleepMode(J)V

    return v1

    .line 53
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->isNetResource()Z

    move-result p1

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 57
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->isBuffering()Z

    move-result p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 61
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getBufferProgress()J

    move-result-wide p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 65
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    .line 69
    :cond_2
    invoke-interface {p0, p1, p3, v0}, Lcom/smartisanos/music/ISmartisanosMusicService;->playAll([JIZ)V

    return v1

    .line 70
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->rollback()V

    return v1

    .line 72
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 74
    invoke-interface {p0, p1}, Lcom/smartisanos/music/ISmartisanosMusicService;->replace([J)V

    return v1

    .line 75
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 77
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->delayPlay(J)V

    return v1

    .line 78
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 81
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p1, p3, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 84
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->toggleFavorite()V

    return v1

    .line 86
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 88
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->isFavorite(J)Z

    move-result p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 91
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 93
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->removeFromFavorites(J)V

    return v1

    .line 94
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 96
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->addToFavorites(J)V

    return v1

    .line 97
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getAudioSessionId()I

    move-result p1

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 101
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getMediaMountedCount()I

    move-result p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 105
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getRepeatMode()I

    move-result p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 109
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-interface {p0, p1}, Lcom/smartisanos/music/ISmartisanosMusicService;->setRepeatMode(I)V

    return v1

    .line 112
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 114
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->removeTrack(J)I

    move-result p1

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 117
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 120
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->removeTracks(II)I

    move-result p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 123
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getShuffleMode()I

    move-result p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 127
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 129
    invoke-interface {p0, p1}, Lcom/smartisanos/music/ISmartisanosMusicService;->setShuffleMode(I)V

    return v1

    .line 130
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getAudioId()J

    move-result-wide p1

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 134
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 138
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 140
    invoke-interface {p0, p1}, Lcom/smartisanos/music/ISmartisanosMusicService;->setQueuePosition(I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 142
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getQueue()[J

    move-result-object p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    return v1

    .line 146
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 149
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->enqueue([JI)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 151
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getArtistId()J

    move-result-wide p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 155
    :pswitch_28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getArtistName()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 159
    :pswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getAlbumId()J

    move-result-wide p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 163
    :pswitch_2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getAlbumName()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 167
    :pswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getTrackName()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 171
    :pswitch_2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 173
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->seek(J)J

    move-result-wide p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 176
    :pswitch_2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->position()J

    move-result-wide p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 180
    :pswitch_2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->duration()J

    move-result-wide p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 184
    :pswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->next()V

    return v1

    .line 186
    :pswitch_30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->prev()V

    return v1

    .line 188
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->play()V

    return v1

    .line 190
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->pause()V

    return v1

    .line 192
    :pswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->stop()V

    return v1

    .line 194
    :pswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->isPlaying()Z

    move-result p1

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 198
    :pswitch_35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-interface {p0}, Lcom/smartisanos/music/ISmartisanosMusicService;->getQueuePosition()I

    move-result p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 202
    :pswitch_36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 205
    invoke-interface {p0, p1, p2}, Lcom/smartisanos/music/ISmartisanosMusicService;->open([JI)V

    return v1

    .line 206
    :pswitch_37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-interface {p0, p1}, Lcom/smartisanos/music/ISmartisanosMusicService;->openFile(Ljava/lang/String;)V

    return v1

    .line 209
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
