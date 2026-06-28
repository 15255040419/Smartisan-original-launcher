.class public Lcom/android/vcard/VCardEntryCommitter;
.super Ljava/lang/Object;
.source "VCardEntryCommitter.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# static fields
.field public static LOG_TAG:Ljava/lang/String; = "vCard"


# instance fields
.field private mAllowJoin:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCounter:I

.field private final mCreatedUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToCommit:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mAllowJoin:Z

    .line 51
    iput-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    const-string v0, "%s: %s"

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 92
    :try_start_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    invoke-virtual {p0, v5, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 98
    array-length p1, p0

    if-eqz p1, :cond_1

    aget-object p1, p0, v4

    if-nez p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    aget-object p0, p0, v4

    iget-object v3, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception p0

    .line 104
    sget-object p1, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_1
    move-exception p0

    .line 101
    sget-object p1, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method


# virtual methods
.method public getCreatedUris()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method public onEnd()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    invoke-static {}, Lcom/android/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/android/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "time to commit entries: %d ms"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 6

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    iget-object v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/android/vcard/VCardEntryCommitter;->mAllowJoin:Z

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    .line 73
    iget p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    .line 82
    iget-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0x1c2

    if-lt p1, v2, :cond_0

    .line 83
    iget-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/vcard/VCardEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mCounter:I

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mOperationList:Ljava/util/ArrayList;

    .line 87
    :cond_0
    iget-wide v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/vcard/VCardEntryCommitter;->mTimeToCommit:J

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public setAllowJoin(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/android/vcard/VCardEntryCommitter;->mAllowJoin:Z

    return-void
.end method
