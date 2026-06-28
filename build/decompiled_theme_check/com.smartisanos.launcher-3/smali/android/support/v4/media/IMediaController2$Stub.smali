.class public abstract Landroid/support/v4/media/IMediaController2$Stub;
.super Landroid/os/Binder;
.source "IMediaController2.java"

# interfaces
.implements Landroid/support/v4/media/IMediaController2;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.IMediaController2"

.field static final TRANSACTION_onAllowedCommandsChanged:I = 0x10

.field static final TRANSACTION_onBufferingStateChanged:I = 0x4

.field static final TRANSACTION_onChildrenChanged:I = 0x14

.field static final TRANSACTION_onConnected:I = 0xd

.field static final TRANSACTION_onCurrentMediaItemChanged:I = 0x1

.field static final TRANSACTION_onCustomCommand:I = 0x11

.field static final TRANSACTION_onCustomLayoutChanged:I = 0xf

.field static final TRANSACTION_onDisconnected:I = 0xe

.field static final TRANSACTION_onError:I = 0xb

.field static final TRANSACTION_onGetChildrenDone:I = 0x15

.field static final TRANSACTION_onGetItemDone:I = 0x13

.field static final TRANSACTION_onGetLibraryRootDone:I = 0x12

.field static final TRANSACTION_onGetSearchResultDone:I = 0x17

.field static final TRANSACTION_onPlaybackInfoChanged:I = 0x7

.field static final TRANSACTION_onPlaybackSpeedChanged:I = 0x3

.field static final TRANSACTION_onPlayerStateChanged:I = 0x2

.field static final TRANSACTION_onPlaylistChanged:I = 0x5

.field static final TRANSACTION_onPlaylistMetadataChanged:I = 0x6

.field static final TRANSACTION_onRepeatModeChanged:I = 0x8

.field static final TRANSACTION_onRoutesInfoChanged:I = 0xc

.field static final TRANSACTION_onSearchResultChanged:I = 0x16

.field static final TRANSACTION_onSeekCompleted:I = 0xa

.field static final TRANSACTION_onShuffleModeChanged:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.v4.media.IMediaController2"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaController2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.v4.media.IMediaController2"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/support/v4/media/IMediaController2;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/support/v4/media/IMediaController2;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/support/v4/media/IMediaController2$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/IMediaController2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x5f4e5446

    const/16 v17, 0x1

    const-string v4, "android.support.v4.media.IMediaController2"

    if-eq v1, v3, :cond_15

    packed-switch v1, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 6
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 8
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v7, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move-object v4, v6

    move-object v5, v7

    .line 9
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/IMediaController2;->onGetSearchResultDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return v17

    .line 10
    :pswitch_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 15
    :goto_1
    invoke-interface {v0, v1, v4, v3}, Landroid/support/v4/media/IMediaController2;->onSearchResultChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return v17

    .line 16
    :pswitch_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 20
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 22
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    move-object v7, v2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move-object v4, v6

    move-object v5, v7

    .line 23
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/IMediaController2;->onGetChildrenDone(Ljava/lang/String;IILjava/util/List;Landroid/os/Bundle;)V

    return v17

    .line 24
    :pswitch_3
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 28
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 29
    :goto_3
    invoke-interface {v0, v1, v4, v3}, Landroid/support/v4/media/IMediaController2;->onChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return v17

    .line 30
    :pswitch_4
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 33
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 34
    :goto_4
    invoke-interface {v0, v1, v3}, Landroid/support/v4/media/IMediaController2;->onGetItemDone(Ljava/lang/String;Landroid/os/Bundle;)V

    return v17

    .line 35
    :pswitch_5
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 37
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 38
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 40
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    .line 41
    :goto_6
    invoke-interface {v0, v1, v4, v3}, Landroid/support/v4/media/IMediaController2;->onGetLibraryRootDone(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return v17

    .line 42
    :pswitch_6
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 44
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    .line 45
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 46
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    .line 47
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 48
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/ResultReceiver;

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    .line 49
    :goto_9
    invoke-interface {v0, v1, v4, v3}, Landroid/support/v4/media/IMediaController2;->onCustomCommand(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return v17

    .line 50
    :pswitch_7
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 52
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    .line 53
    :goto_a
    invoke-interface {v0, v3}, Landroid/support/v4/media/IMediaController2;->onAllowedCommandsChanged(Landroid/os/Bundle;)V

    return v17

    .line 54
    :pswitch_8
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Landroid/support/v4/media/IMediaController2;->onCustomLayoutChanged(Ljava/util/List;)V

    return v17

    .line 57
    :pswitch_9
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-interface/range {p0 .. p0}, Landroid/support/v4/media/IMediaController2;->onDisconnected()V

    return v17

    .line 59
    :pswitch_a
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/IMediaSession2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaSession2;

    move-result-object v1

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 62
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    .line 63
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 65
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    goto :goto_c

    :cond_c
    const/4 v6, 0x0

    .line 66
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_d

    .line 71
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v14, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    goto :goto_d

    :cond_d
    const/4 v14, 0x0

    .line 72
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 74
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v19

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 76
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    move-object/from16 v18, v2

    goto :goto_e

    :cond_e
    const/16 v18, 0x0

    :goto_e
    move-object/from16 v0, p0

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move-wide v5, v7

    move-wide v7, v9

    move v9, v11

    move-wide v10, v12

    move-object v12, v14

    move v13, v15

    move/from16 v14, v16

    move-object/from16 v15, v19

    move-object/from16 v16, v18

    .line 77
    invoke-interface/range {v0 .. v16}, Landroid/support/v4/media/IMediaController2;->onConnected(Landroid/support/v4/media/IMediaSession2;Landroid/os/Bundle;ILandroid/os/Bundle;JJFJLandroid/os/Bundle;IILjava/util/List;Landroid/app/PendingIntent;)V

    return v17

    .line 78
    :pswitch_b
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Landroid/support/v4/media/IMediaController2;->onRoutesInfoChanged(Ljava/util/List;)V

    return v17

    .line 81
    :pswitch_c
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 84
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_f

    :cond_f
    const/4 v3, 0x0

    .line 85
    :goto_f
    invoke-interface {v0, v1, v3}, Landroid/support/v4/media/IMediaController2;->onError(ILandroid/os/Bundle;)V

    return v17

    .line 86
    :pswitch_d
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    .line 90
    invoke-interface/range {v0 .. v6}, Landroid/support/v4/media/IMediaController2;->onSeekCompleted(JJJ)V

    return v17

    .line 91
    :pswitch_e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    invoke-interface {v0, v1}, Landroid/support/v4/media/IMediaController2;->onShuffleModeChanged(I)V

    return v17

    .line 94
    :pswitch_f
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    invoke-interface {v0, v1}, Landroid/support/v4/media/IMediaController2;->onRepeatModeChanged(I)V

    return v17

    .line 97
    :pswitch_10
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 99
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    .line 100
    :goto_10
    invoke-interface {v0, v3}, Landroid/support/v4/media/IMediaController2;->onPlaybackInfoChanged(Landroid/os/Bundle;)V

    return v17

    .line 101
    :pswitch_11
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 103
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    goto :goto_11

    :cond_11
    const/4 v3, 0x0

    .line 104
    :goto_11
    invoke-interface {v0, v3}, Landroid/support/v4/media/IMediaController2;->onPlaylistMetadataChanged(Landroid/os/Bundle;)V

    return v17

    .line 105
    :pswitch_12
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 108
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_12

    :cond_12
    const/4 v3, 0x0

    .line 109
    :goto_12
    invoke-interface {v0, v1, v3}, Landroid/support/v4/media/IMediaController2;->onPlaylistChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return v17

    .line 110
    :pswitch_13
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 112
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    goto :goto_13

    :cond_13
    const/4 v3, 0x0

    .line 113
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 115
    invoke-interface {v0, v3, v1, v4, v5}, Landroid/support/v4/media/IMediaController2;->onBufferingStateChanged(Landroid/os/Bundle;IJ)V

    return v17

    .line 116
    :pswitch_14
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move v5, v7

    .line 120
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/IMediaController2;->onPlaybackSpeedChanged(JJF)V

    return v17

    .line 121
    :pswitch_15
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move v5, v7

    .line 125
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/IMediaController2;->onPlayerStateChanged(JJI)V

    return v17

    .line 126
    :pswitch_16
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 128
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/Bundle;

    goto :goto_14

    :cond_14
    const/4 v3, 0x0

    .line 129
    :goto_14
    invoke-interface {v0, v3}, Landroid/support/v4/media/IMediaController2;->onCurrentMediaItemChanged(Landroid/os/Bundle;)V

    return v17

    :cond_15
    move-object/from16 v0, p3

    .line 130
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
