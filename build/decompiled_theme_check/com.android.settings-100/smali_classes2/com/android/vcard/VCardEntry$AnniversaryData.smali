.class public Lcom/android/vcard/VCardEntry$AnniversaryData;
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
    name = "AnniversaryData"
.end annotation


# instance fields
.field private final mAnniversary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    return-void
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

    .line 1304
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1305
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    .line 1306
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/contact_event"

    .line 1307
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1308
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    const-string p2, "data1"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const/4 p0, 0x1

    .line 1309
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "data2"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1310
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1323
    :cond_0
    instance-of v0, p1, Lcom/android/vcard/VCardEntry$AnniversaryData;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1326
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$AnniversaryData;

    .line 1327
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getAnniversary()Ljava/lang/String;
    .locals 0

    .line 1345
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    return-object p0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 0

    .line 1342
    sget-object p0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1332
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1315
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anniversary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$AnniversaryData;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
