.class public Lcom/android/vcard/VCardEntry$PostalData;
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
    name = "PostalData"
.end annotation


# static fields
.field private static final ADDR_MAX_DATA_SIZE:I = 0x7


# instance fields
.field private final mCountry:Ljava/lang/String;

.field private final mExtendedAddress:Ljava/lang/String;

.field private mIsPrimary:Z

.field private final mLabel:Ljava/lang/String;

.field private final mLocalty:Ljava/lang/String;

.field private final mPobox:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mRegion:Ljava/lang/String;

.field private final mStreet:Ljava/lang/String;

.field private final mType:I

.field private mVCardType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput p8, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 514
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    .line 515
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 516
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 517
    iput-object p4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 518
    iput-object p5, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 519
    iput-object p6, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 520
    iput-object p7, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 521
    iput-object p9, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 522
    iput-boolean p10, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    .line 523
    iput p11, p0, Lcom/android/vcard/VCardEntry$PostalData;->mVCardType:I

    return-void
.end method

.method public static constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/android/vcard/VCardEntry$PostalData;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 533
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    move v2, v0

    .line 544
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 545
    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_1

    :cond_2
    :goto_0
    if-ge v5, v0, :cond_3

    add-int/lit8 v2, v5, 0x1

    const/4 v3, 0x0

    .line 551
    aput-object v3, v1, v5

    move v5, v2

    goto :goto_0

    .line 554
    :cond_3
    new-instance v0, Lcom/android/vcard/VCardEntry$PostalData;

    aget-object v7, v1, v4

    const/4 v2, 0x1

    aget-object v8, v1, v2

    const/4 v2, 0x2

    aget-object v9, v1, v2

    const/4 v2, 0x3

    aget-object v10, v1, v2

    const/4 v2, 0x4

    aget-object v11, v1, v2

    const/4 v2, 0x5

    aget-object v12, v1, v2

    const/4 v2, 0x6

    aget-object v13, v1, v2

    move-object v6, v0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    invoke-direct/range {v6 .. v17}, Lcom/android/vcard/VCardEntry$PostalData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    return-object v0
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .line 561
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 562
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    .line 563
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    .line 564
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 566
    iget p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 567
    iget p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-nez p2, :cond_0

    .line 568
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 572
    :cond_0
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 573
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 576
    :cond_1
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    goto :goto_0

    .line 579
    :cond_2
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 580
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    goto :goto_0

    .line 582
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 585
    :goto_0
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    const-string v2, "data5"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "data4"

    .line 586
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 587
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    const-string v1, "data7"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 588
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    const-string v1, "data8"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 589
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    const-string v1, "data9"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 590
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    const-string v1, "data10"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 592
    iget p2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mVCardType:I

    invoke-virtual {p0, p2}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 593
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    .line 594
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "is_primary"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 596
    :cond_4
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

    .line 651
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$PostalData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 654
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$PostalData;

    .line 655
    iget v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-ne v1, v3, :cond_3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    .line 656
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    iget-boolean v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    .line 659
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 660
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 661
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 662
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 663
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 664
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 665
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 0

    .line 720
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    return-object p0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 0

    .line 692
    sget-object p0, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object p0
.end method

.method public getExtendedAddress()Ljava/lang/String;
    .locals 0

    .line 700
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedAddress(I)Ljava/lang/String;
    .locals 7

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    .line 602
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    const/4 v6, 0x5

    aput-object v3, v2, v6

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object p0, v2, v3

    .line 605
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result p0

    const/16 p1, 0x20

    if-eqz p0, :cond_2

    :goto_0
    if-ltz v3, :cond_5

    .line 608
    aget-object p0, v2, v3

    .line 609
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v5, :cond_0

    .line 611
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    move v5, v4

    .line 615
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    move p0, v4

    :goto_2
    if-ge p0, v1, :cond_5

    .line 620
    aget-object v3, v2, p0

    .line 621
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v5, :cond_3

    .line 623
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    move v5, v4

    .line 627
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 632
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 728
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalty()Ljava/lang/String;
    .locals 0

    .line 708
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    return-object p0
.end method

.method public getPobox()Ljava/lang/String;
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    return-object p0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    return-object p0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 724
    iget p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    return p0
.end method

.method public hashCode()I
    .locals 5

    .line 670
    iget v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    mul-int/lit8 v0, v0, 0x1f

    .line 671
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

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

    .line 672
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    .line 674
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x6

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    aput-object p0, v1, v3

    .line 676
    array-length p0, v1

    move v3, v0

    move v0, v2

    :goto_2
    if-ge v0, p0, :cond_3

    aget-object v4, v1, v0

    mul-int/lit8 v3, v3, 0x1f

    if-eqz v4, :cond_2

    .line 677
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_3

    :cond_2
    move v4, v2

    :goto_3
    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    .line 638
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    .line 639
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    .line 640
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    .line 641
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    .line 642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    .line 643
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrimary()Z
    .locals 0

    .line 732
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 684
    iget v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 686
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLabel:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mIsPrimary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPobox:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mExtendedAddress:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mStreet:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mLocalty:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mRegion:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PostalData;->mPostalCode:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mCountry:Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p0, v0, v1

    const-string p0, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    .line 684
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
