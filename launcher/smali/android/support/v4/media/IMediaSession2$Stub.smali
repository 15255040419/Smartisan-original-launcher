.class public abstract Landroid/support/v4/media/IMediaSession2$Stub;
.super Landroid/os/Binder;
.source "IMediaSession2.java"

# interfaces
.implements Landroid/support/v4/media/IMediaSession2;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.IMediaSession2"

.field static final TRANSACTION_addPlaylistItem:I = 0x17

.field static final TRANSACTION_adjustVolume:I = 0x4

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_fastForward:I = 0x9

.field static final TRANSACTION_getChildren:I = 0x24

.field static final TRANSACTION_getItem:I = 0x23

.field static final TRANSACTION_getLibraryRoot:I = 0x22

.field static final TRANSACTION_getSearchResult:I = 0x26

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x5

.field static final TRANSACTION_playFromMediaId:I = 0x12

.field static final TRANSACTION_playFromSearch:I = 0x11

.field static final TRANSACTION_playFromUri:I = 0x10

.field static final TRANSACTION_prepare:I = 0x8

.field static final TRANSACTION_prepareFromMediaId:I = 0xf

.field static final TRANSACTION_prepareFromSearch:I = 0xe

.field static final TRANSACTION_prepareFromUri:I = 0xd

.field static final TRANSACTION_release:I = 0x2

.field static final TRANSACTION_removePlaylistItem:I = 0x18

.field static final TRANSACTION_replacePlaylistItem:I = 0x19

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_rewind:I = 0xa

.field static final TRANSACTION_search:I = 0x25

.field static final TRANSACTION_seekTo:I = 0xb

.field static final TRANSACTION_selectRoute:I = 0x21

.field static final TRANSACTION_sendCustomCommand:I = 0xc

.field static final TRANSACTION_setPlaybackSpeed:I = 0x14

.field static final TRANSACTION_setPlaylist:I = 0x15

.field static final TRANSACTION_setRating:I = 0x13

.field static final TRANSACTION_setRepeatMode:I = 0x1d

.field static final TRANSACTION_setShuffleMode:I = 0x1e

.field static final TRANSACTION_setVolumeTo:I = 0x3

.field static final TRANSACTION_skipToNextItem:I = 0x1c

.field static final TRANSACTION_skipToPlaylistItem:I = 0x1a

.field static final TRANSACTION_skipToPreviousItem:I = 0x1b

.field static final TRANSACTION_subscribe:I = 0x27

.field static final TRANSACTION_subscribeRoutesInfo:I = 0x1f

.field static final TRANSACTION_unsubscribe:I = 0x28

.field static final TRANSACTION_unsubscribeRoutesInfo:I = 0x20

.field static final TRANSACTION_updatePlaylistMetadata:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.v4.media.IMediaSession2"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaSession2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.v4.media.IMediaSession2"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/support/v4/media/IMediaSession2;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/support/v4/media/IMediaSession2;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/support/v4/media/IMediaSession2$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/IMediaSession2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.support.v4.media.IMediaSession2"

    if-eq p1, v0, :cond_18

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/IMediaSession2;->unsubscribe(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V

    return v1

    .line 6
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 10
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 11
    :cond_0
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->subscribe(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 12
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v3

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    :cond_1
    move-object v7, v0

    move-object v2, p0

    .line 19
    invoke-interface/range {v2 .. v7}, Landroid/support/v4/media/IMediaSession2;->getSearchResult(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V

    return v1

    .line 20
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 24
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 25
    :cond_2
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->search(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 26
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object v3

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 32
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    :cond_3
    move-object v7, v0

    move-object v2, p0

    .line 33
    invoke-interface/range {v2 .. v7}, Landroid/support/v4/media/IMediaSession2;->getChildren(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;IILandroid/os/Bundle;)V

    return v1

    .line 34
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/IMediaSession2;->getItem(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V

    return v1

    .line 38
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_4

    .line 41
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 42
    :cond_4
    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/IMediaSession2;->getLibraryRoot(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    return v1

    .line 43
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_5

    .line 46
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 47
    :cond_5
    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/IMediaSession2;->selectRoute(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    return v1

    .line 48
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 50
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->unsubscribeRoutesInfo(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 51
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 53
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->subscribeRoutesInfo(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 54
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 57
    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/IMediaSession2;->setShuffleMode(Landroid/support/v4/media/IMediaController2;I)V

    return v1

    .line 58
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 61
    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/IMediaSession2;->setRepeatMode(Landroid/support/v4/media/IMediaController2;I)V

    return v1

    .line 62
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 64
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->skipToNextItem(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 65
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->skipToPreviousItem(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 68
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_6

    .line 71
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 72
    :cond_6
    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/IMediaSession2;->skipToPlaylistItem(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    return v1

    .line 73
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 77
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 78
    :cond_7
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->replacePlaylistItem(Landroid/support/v4/media/IMediaController2;ILandroid/os/Bundle;)V

    return v1

    .line 79
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_8

    .line 82
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 83
    :cond_8
    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/IMediaSession2;->removePlaylistItem(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    return v1

    .line 84
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    .line 88
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 89
    :cond_9
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->addPlaylistItem(Landroid/support/v4/media/IMediaController2;ILandroid/os/Bundle;)V

    return v1

    .line 90
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_a

    .line 93
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 94
    :cond_a
    invoke-interface {p0, p1, v0}, Landroid/support/v4/media/IMediaSession2;->updatePlaylistMetadata(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;)V

    return v1

    .line 95
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 97
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p3

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    .line 99
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 100
    :cond_b
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->setPlaylist(Landroid/support/v4/media/IMediaController2;Ljava/util/List;Landroid/os/Bundle;)V

    return v1

    .line 101
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 104
    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/IMediaSession2;->setPlaybackSpeed(Landroid/support/v4/media/IMediaController2;F)V

    return v1

    .line 105
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_c

    .line 109
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 110
    :cond_c
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->setRating(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 111
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_d

    .line 115
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 116
    :cond_d
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->playFromMediaId(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 117
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_e

    .line 121
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 122
    :cond_e
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->playFromSearch(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 123
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_f

    .line 126
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    goto :goto_0

    :cond_f
    move-object p3, v0

    .line 127
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_10

    .line 128
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 129
    :cond_10
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->playFromUri(Landroid/support/v4/media/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V

    return v1

    .line 130
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_11

    .line 134
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 135
    :cond_11
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->prepareFromMediaId(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 136
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_12

    .line 140
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 141
    :cond_12
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->prepareFromSearch(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;Landroid/os/Bundle;)V

    return v1

    .line 142
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_13

    .line 145
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    goto :goto_1

    :cond_13
    move-object p3, v0

    .line 146
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_14

    .line 147
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 148
    :cond_14
    invoke-interface {p0, p1, p3, v0}, Landroid/support/v4/media/IMediaSession2;->prepareFromUri(Landroid/support/v4/media/IMediaController2;Landroid/net/Uri;Landroid/os/Bundle;)V

    return v1

    .line 149
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_15

    .line 152
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Bundle;

    goto :goto_2

    :cond_15
    move-object p3, v0

    .line 153
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_16

    .line 154
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    goto :goto_3

    :cond_16
    move-object p4, v0

    .line 155
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    .line 156
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/os/ResultReceiver;

    .line 157
    :cond_17
    invoke-interface {p0, p1, p3, p4, v0}, Landroid/support/v4/media/IMediaSession2;->sendCustomCommand(Landroid/support/v4/media/IMediaController2;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return v1

    .line 158
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p2

    .line 161
    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/media/IMediaSession2;->seekTo(Landroid/support/v4/media/IMediaController2;J)V

    return v1

    .line 162
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 164
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->rewind(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 165
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 167
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->fastForward(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 168
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 170
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->prepare(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 171
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 173
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->reset(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 174
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 176
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->pause(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 177
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 179
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->play(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 180
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 184
    invoke-interface {p0, p1, p3, p2}, Landroid/support/v4/media/IMediaSession2;->adjustVolume(Landroid/support/v4/media/IMediaController2;II)V

    return v1

    .line 185
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 189
    invoke-interface {p0, p1, p3, p2}, Landroid/support/v4/media/IMediaSession2;->setVolumeTo(Landroid/support/v4/media/IMediaController2;II)V

    return v1

    .line 190
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 192
    invoke-interface {p0, p1}, Landroid/support/v4/media/IMediaSession2;->release(Landroid/support/v4/media/IMediaController2;)V

    return v1

    .line 193
    :pswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/IMediaController2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;

    move-result-object p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-interface {p0, p1, p2}, Landroid/support/v4/media/IMediaSession2;->connect(Landroid/support/v4/media/IMediaController2;Ljava/lang/String;)V

    return v1

    .line 197
    :cond_18
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
