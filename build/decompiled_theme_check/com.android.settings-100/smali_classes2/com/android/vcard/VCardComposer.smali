.class public Lcom/android/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;,
        Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContentUriForRawContactsEntity:Landroid/net/Uri;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorSuppliedFromOutside:Z

.field private mEntity:Landroid/content/Entity;

.field private mEntityIterator:Landroid/content/EntityIterator;

.field private mErrorReason:Ljava/lang/String;

.field private mFirstVCardEmittedInDoCoMoCase:Z

.field private mIdColumn:I

.field private mInitDone:Z

.field private final mIsDoCoMo:Z

.field private mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

.field private mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

.field private mTerminateCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 122
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "_id"

    .line 161
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 166
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 173
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 177
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 6

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "No error"

    .line 151
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 210
    iput p3, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    .line 211
    iput-object p2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 213
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 215
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p5, "UTF-8"

    if-eqz p2, :cond_0

    move-object p4, p5

    .line 217
    :cond_0
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 219
    :cond_2
    :goto_0
    iget-boolean p2, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_3

    goto :goto_1

    .line 233
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 234
    iput-object p5, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 236
    :cond_4
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "SHIFT_JIS"

    .line 220
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 221
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 226
    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 227
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_2

    .line 229
    :cond_7
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 240
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Use the charset \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VCardComposer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeCursorIfAppropriate()V
    .locals 5

    .line 700
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    const/4 v1, 0x0

    const-string v2, "VCardComposer"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 702
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException on Cursor#close(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    if-eqz v0, :cond_1

    .line 710
    :try_start_1
    invoke-interface {v0}, Landroid/content/EntityIterator;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException on EntityIterator#close(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_1
    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    :cond_1
    return-void
.end method

.method private createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;
    .locals 9

    .line 575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 583
    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    if-eqz v3, :cond_0

    .line 584
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    .line 585
    invoke-interface {v2, p1, p2}, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;->getRawContactEntitlesInfo(J)Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;

    move-result-object p1

    .line 586
    iget-object v2, p1, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->rawContactEntitlesUri:Landroid/net/Uri;

    .line 587
    iget-wide p1, p1, Lcom/android/vcard/VCardComposer$RawContactEntitlesInfo;->contactId:J

    :cond_0
    move-object v3, v2

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 590
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "VCardComposer"

    if-eqz p3, :cond_1

    const/4 v4, 0x5

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 594
    iget-object v7, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    aput-object v7, v4, v5

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "contact_id=?"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    aput-object v6, v4, v2

    const/4 v2, 0x4

    aput-object v1, v4, v2

    invoke-virtual {p3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/EntityIterator;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p3

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "InvocationTargetException has been thrown: "

    .line 603
    invoke-static {v8, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "InvocationTargetException has been thrown"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p3

    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {p3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 600
    invoke-static {v8, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p3

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 597
    invoke-static {v8, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    :cond_1
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "contact_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    invoke-static {p3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const-string p3, ""

    if-nez v1, :cond_3

    :try_start_3
    const-string p0, "EntityIterator is null"

    .line 612
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 639
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_2
    return-object p3

    .line 616
    :cond_3
    :try_start_4
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 617
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data does not exist. contactId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_4

    .line 639
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_4
    return-object p3

    .line 621
    :cond_5
    :try_start_5
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 622
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Entity;

    .line 623
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Entity$NamedContentValues;

    .line 624
    iget-object p2, p2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string p3, "mimetype"

    .line 625
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 628
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_7

    .line 630
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 631
    invoke-interface {v0, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    :cond_7
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    .line 639
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 643
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_a

    .line 639
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_a
    throw p0
.end method

.method private createOneEntryInternalByIterator()Ljava/lang/String;
    .locals 10

    .line 523
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    invoke-interface {v0}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    if-nez v0, :cond_0

    const-string p0, "VCardComposer"

    const-string v0, "EntityIterator#hasNext() returned false"

    .line 525
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 529
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 531
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    const-string v3, "mimetype"

    const-string v4, "contact_id"

    const/4 v5, -0x1

    if-eqz v2, :cond_4

    .line 532
    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 533
    iget-object v6, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    invoke-virtual {v6}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity$NamedContentValues;

    .line 534
    iget-object v7, v7, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 535
    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 537
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_2

    .line 539
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 540
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_2
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 545
    :cond_3
    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    goto :goto_1

    :cond_4
    move v2, v5

    .line 547
    :goto_1
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 548
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 549
    invoke-virtual {v1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v2, v5, :cond_6

    if-ne v6, v2, :cond_5

    goto :goto_2

    .line 566
    :cond_5
    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    goto :goto_4

    .line 551
    :cond_6
    :goto_2
    invoke-virtual {v1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 552
    iget-object v2, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 553
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 555
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_8

    .line 557
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 558
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_8
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move v2, v6

    goto :goto_1

    .line 570
    :cond_a
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initEntityIterator()V
    .locals 8

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id"

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ")"

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "contact_id"

    .line 457
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    .line 459
    iget-object p0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    return-void
.end method

.method private initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    .line 420
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 422
    iget-object p1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Cursor became null unexpectedly"

    .line 423
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VCardComposer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Failed to get database information"

    .line 424
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private initInterFirstPart(Landroid/net/Uri;)Z
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 409
    iget-boolean p0, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    if-eqz p0, :cond_1

    const-string p0, "VCardComposer"

    const-string p1, "init() is already called"

    .line 410
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private initInterLastPart()Z
    .locals 2

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    const/4 v1, 0x0

    .line 464
    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    return v0
.end method

.method private initInterMainPart()Z
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v2, "contact_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    .line 440
    iget v0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    if-gez v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    .line 443
    :cond_1
    iget p0, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    if-ltz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 436
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    return v1
.end method


# virtual methods
.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "VCardComposer"

    const-string p1, "The given map is null. Ignore and return empty String"

    .line 670
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 673
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/name"

    .line 674
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/nickname"

    .line 675
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/phone_v2"

    .line 676
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v1, v2, v3}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/email_v2"

    .line 678
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    .line 679
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/organization"

    .line 680
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v1

    const-string v2, "vnd.android.cursor.item/website"

    .line 681
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 682
    iget p0, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    const/high16 v1, 0x800000

    and-int/2addr p0, v1

    if-nez p0, :cond_1

    const-string p0, "vnd.android.cursor.item/photo"

    .line 683
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    :cond_1
    const-string p0, "vnd.android.cursor.item/note"

    .line 685
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object p0

    const-string v1, "vnd.android.cursor.item/contact_event"

    .line 686
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object p0

    const-string v1, "vnd.android.cursor.item/im"

    .line 687
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object p0

    const-string v1, "vnd.android.cursor.item/sip_address"

    .line 688
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/vcard/VCardBuilder;->appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object p0

    const-string v1, "vnd.android.cursor.item/relation"

    .line 689
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 690
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createOneEntry()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2

    .line 479
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->createOneEntryInternalByIterator()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 489
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/vcard/VCardComposer;->createOneEntryInternal(JLjava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    .line 491
    :goto_1
    iget-object p0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "VCardComposer"

    const-string v0, "Cursor#moveToNext() returned false"

    .line 492
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 721
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    if-nez v0, :cond_0

    const-string v0, "VCardComposer"

    const-string v1, "finalized() is called before terminate() being called"

    .line 722
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    .line 735
    iget-object p0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez p0, :cond_0

    const-string p0, "VCardComposer"

    const-string v0, "This object is not ready yet."

    .line 736
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 739
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    return p0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object p0
.end method

.method public init()Z
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, v0, v0}, Lcom/android/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/database/Cursor;)Z
    .locals 1

    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0, p1, v0}, Lcom/android/vcard/VCardComposer;->initWithCallback(Landroid/database/Cursor;Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 292
    sget-object v2, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 7

    .line 311
    sget-object v2, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 2

    .line 355
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "The Uri vCard composer received is not supported by the composer."

    .line 357
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return v1

    .line 361
    :cond_0
    invoke-direct {p0, p6}, Lcom/android/vcard/VCardComposer;->initInterFirstPart(Landroid/net/Uri;)Z

    move-result p6

    if-nez p6, :cond_1

    return v1

    .line 364
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/android/vcard/VCardComposer;->initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 368
    :cond_2
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterMainPart()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 371
    :cond_3
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initEntityIterator()V

    .line 373
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterLastPart()Z

    move-result p0

    return p0
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    .line 283
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public initWithCallback(Landroid/database/Cursor;Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z
    .locals 2

    const/4 v0, 0x0

    .line 393
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardComposer;->initInterFirstPart(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    .line 397
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 398
    iput-object p2, p0, Lcom/android/vcard/VCardComposer;->mRawContactEntitlesInfoCallback:Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;

    .line 399
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterMainPart()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 402
    :cond_1
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterLastPart()Z

    move-result p0

    return p0
.end method

.method public initWithRawContactsEntityUri(Landroid/net/Uri;)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public isAfterLast()Z
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "VCardComposer"

    const-string v0, "This object is not ready yet."

    .line 748
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 751
    :cond_0
    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mEntityIterator:Landroid/content/EntityIterator;

    if-eqz v2, :cond_4

    .line 752
    invoke-interface {v2}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mEntity:Landroid/content/Entity;

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 754
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p0

    return p0
.end method

.method public setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    return-void
.end method

.method public terminate()V
    .locals 1

    .line 695
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    const/4 v0, 0x1

    .line 696
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    return-void
.end method
