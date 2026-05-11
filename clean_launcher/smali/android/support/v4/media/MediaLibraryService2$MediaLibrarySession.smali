.class public final Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;
.super Landroid/support/v4/media/MediaSession2;
.source "MediaLibraryService2.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroid/support/v4/media/MediaSession2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V

    return-void
.end method


# virtual methods
.method createImpl(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;
    .locals 11

    .line 2
    new-instance v10, Landroid/support/v4/media/MediaLibrarySessionImplBase;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/support/v4/media/MediaLibrarySessionImplBase;-><init>(Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)V

    return-object v10
.end method

.method bridge synthetic createImpl(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p8}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;->createImpl(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/media/BaseMediaPlayer;Landroid/support/v4/media/MediaPlaylistAgent;Landroid/support/v4/media/VolumeProviderCompat;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/support/v4/media/MediaSession2$SessionCallback;)Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object p0

    return-object p0
.end method

.method getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;
    .locals 0

    .line 2
    invoke-super {p0}, Landroid/support/v4/media/MediaSession2;->getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    return-object p0
.end method

.method bridge synthetic getCallback()Landroid/support/v4/media/MediaSession2$SessionCallback;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;->getCallback()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object p0

    return-object p0
.end method

.method getImpl()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;
    .locals 0

    .line 2
    invoke-super {p0}, Landroid/support/v4/media/MediaSession2;->getImpl()Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    return-object p0
.end method

.method bridge synthetic getImpl()Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;->getImpl()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object p0

    return-object p0
.end method

.method public notifyChildrenChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;->getImpl()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->notifyChildrenChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;->getImpl()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->notifyChildrenChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public notifySearchResultChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession;->getImpl()Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaLibraryService2$MediaLibrarySession$SupportLibraryImpl;->notifySearchResultChanged(Landroid/support/v4/media/MediaSession2$ControllerInfo;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method
