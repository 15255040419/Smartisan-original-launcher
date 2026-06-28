.class public Lcom/android/vcard/VCardEntry$OrganizationData;
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
    name = "OrganizationData"
.end annotation


# instance fields
.field private mDepartmentName:Ljava/lang/String;

.field private mIsPrimary:Z

.field private mOrganizationName:Ljava/lang/String;

.field private final mPhoneticName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput p5, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    .line 751
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    .line 752
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    .line 753
    iput-object p3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    .line 754
    iput-object p4, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    .line 755
    iput-boolean p6, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/vcard/VCardEntry$OrganizationData;Z)Z
    .locals 0

    .line 736
    iput-boolean p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object p1
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

    .line 784
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 785
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    .line 786
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/organization"

    .line 787
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 788
    iget p2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 789
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v1, "data1"

    .line 790
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 792
    :cond_0
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v1, "data5"

    .line 793
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 795
    :cond_1
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v1, "data4"

    .line 796
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 798
    :cond_2
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string v1, "data8"

    .line 799
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 801
    :cond_3
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    .line 802
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "is_primary"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 804
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

    .line 818
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$OrganizationData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 821
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 822
    iget v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    .line 823
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    .line 824
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    .line 825
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    iget-boolean p1, p1, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDepartmentName()Ljava/lang/String;
    .locals 0

    .line 856
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 0

    .line 848
    sget-object p0, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object p0
.end method

.method public getFormattedString()Ljava/lang/String;
    .locals 3

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_2

    .line 765
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 766
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_2
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 772
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 773
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_3
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOrganizationName()Ljava/lang/String;
    .locals 0

    .line 852
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 0

    .line 864
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 860
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 868
    iget p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 831
    iget v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    mul-int/lit8 v0, v0, 0x1f

    .line 832
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

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

    .line 833
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 834
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 835
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    if-eqz p0, :cond_3

    const/16 p0, 0x4cf

    goto :goto_2

    :cond_3
    const/16 p0, 0x4d5

    :goto_2
    add-int/2addr v0, p0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    .line 810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mPhoneticName:Ljava/lang/String;

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

    .line 872
    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 841
    iget v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mType:I

    .line 842
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z

    .line 843
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string p0, "type: %d, organization: %s, department: %s, title: %s, isPrimary: %s"

    .line 841
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
