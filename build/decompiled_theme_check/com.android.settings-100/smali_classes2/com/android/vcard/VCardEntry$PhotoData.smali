.class public Lcom/android/vcard/VCardEntry$PhotoData;
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
    name = "PhotoData"
.end annotation


# instance fields
.field private final mBytes:[B

.field private final mFormat:Ljava/lang/String;

.field private mHashCode:Ljava/lang/Integer;

.field private final mIsPrimary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZ)V
    .locals 1

    .line 990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 988
    iput-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    .line 991
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    .line 992
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    .line 993
    iput-boolean p3, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

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

    .line 999
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1000
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    .line 1001
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/photo"

    .line 1002
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1003
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    const-string v1, "data15"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1004
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 1005
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "is_primary"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1007
    :cond_0
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

    .line 1020
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$PhotoData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1023
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 1024
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    .line 1025
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    iget-boolean p1, p1, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBytes()[B
    .locals 0

    .line 1064
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    return-object p0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 0

    .line 1056
    sget-object p0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHOTO:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    .line 1060
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 1031
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1037
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-eqz v2, :cond_2

    .line 1038
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-byte v4, v2, v1

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    .line 1043
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    goto :goto_2

    :cond_3
    const/16 v1, 0x4d5

    :goto_2
    add-int/2addr v0, v1

    .line 1044
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mHashCode:Ljava/lang/Integer;

    return v0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-eqz p0, :cond_1

    array-length p0, p0

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

.method public isPrimary()Z
    .locals 0

    .line 1068
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1050
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mIsPrimary:Z

    .line 1051
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "format: %s: size: %d, isPrimary: %s"

    .line 1050
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
