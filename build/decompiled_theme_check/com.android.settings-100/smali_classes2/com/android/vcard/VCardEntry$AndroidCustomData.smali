.class public Lcom/android/vcard/VCardEntry$AndroidCustomData;
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
    name = "AndroidCustomData"
.end annotation


# instance fields
.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1445
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    .line 1446
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    return-void
.end method

.method public static constructAndroidCustomData(Ljava/util/List;)Lcom/android/vcard/VCardEntry$AndroidCustomData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 1456
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 1457
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_0

    .line 1460
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1462
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    .line 1463
    invoke-interface {p0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 1466
    :goto_0
    new-instance v1, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    invoke-direct {v1, v0, p0}, Lcom/android/vcard/VCardEntry$AndroidCustomData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .line 1472
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1473
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    .line 1474
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1475
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const/4 p2, 0x0

    .line 1476
    :goto_0
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1477
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1478
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1483
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1496
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1499
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$AndroidCustomData;

    .line 1500
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1503
    :cond_2
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez v1, :cond_4

    .line 1504
    iget-object p0, p1, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    .line 1506
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1507
    iget-object v3, p1, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    .line 1511
    iget-object v4, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v5, p1, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1544
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 0

    .line 1540
    sget-object p0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANDROID_CUSTOM:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    .line 1543
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 1521
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1522
    :goto_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 1523
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    if-eqz v2, :cond_1

    .line 1524
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1488
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-custom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AndroidCustomData;->mDataList:Ljava/util/List;

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
