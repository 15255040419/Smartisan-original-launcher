.class public Lcom/android/vcard/VCardEntry$EmailData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput p2, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    .line 410
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    .line 411
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    .line 412
    iput-boolean p4, p0, Lcom/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    return-void
.end method

.method static synthetic access$1500(Lcom/android/vcard/VCardEntry$EmailData;)Ljava/lang/String;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .line 418
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 419
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    .line 420
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/email_v2"

    .line 421
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 423
    iget p2, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 424
    iget p2, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    if-nez p2, :cond_0

    .line 425
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 427
    :cond_0
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 428
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 429
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "is_primary"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 431
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 444
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$EmailData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 447
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$EmailData;

    .line 448
    iget v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    .line 449
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    .line 450
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    iget-boolean p1, p1, Lcom/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 0

    .line 471
    sget-object p0, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 479
    iget p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 456
    iget v0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    mul-int/lit8 v0, v0, 0x1f

    .line 457
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 458
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 459
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x4cf

    goto :goto_1

    :cond_2
    const/16 p0, 0x4d5

    :goto_1
    add-int/2addr v0, p0

    return v0
.end method

.method public isEmpty()Z
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isPrimary()Z
    .locals 0

    .line 487
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 465
    iget v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mLabel:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mIsPrimary:Z

    .line 466
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "type: %d, data: %s, label: %s, isPrimary: %s"

    .line 465
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
