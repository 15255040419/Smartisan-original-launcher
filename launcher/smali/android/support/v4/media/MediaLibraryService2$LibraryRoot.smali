.class public final Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;
.super Ljava/lang/Object;
.source "MediaLibraryService2.java"


# static fields
.field public static final EXTRA_OFFLINE:Ljava/lang/String; = "android.media.extra.OFFLINE"

.field public static final EXTRA_RECENT:Ljava/lang/String; = "android.media.extra.RECENT"

.field public static final EXTRA_SUGGESTED:Ljava/lang/String; = "android.media.extra.SUGGESTED"


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mRootId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;->mRootId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;->mExtras:Landroid/os/Bundle;

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rootId shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaLibraryService2$LibraryRoot;->mRootId:Ljava/lang/String;

    return-object p0
.end method
