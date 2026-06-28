.class public Lcom/android/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;,
        Lcom/android/vcard/VCardEntry$ToStringIterator;,
        Lcom/android/vcard/VCardEntry$IsIgnorableIterator;,
        Lcom/android/vcard/VCardEntry$EntryElementIterator;,
        Lcom/android/vcard/VCardEntry$AndroidCustomData;,
        Lcom/android/vcard/VCardEntry$SipData;,
        Lcom/android/vcard/VCardEntry$AnniversaryData;,
        Lcom/android/vcard/VCardEntry$BirthdayData;,
        Lcom/android/vcard/VCardEntry$WebsiteData;,
        Lcom/android/vcard/VCardEntry$NoteData;,
        Lcom/android/vcard/VCardEntry$NicknameData;,
        Lcom/android/vcard/VCardEntry$PhotoData;,
        Lcom/android/vcard/VCardEntry$ImData;,
        Lcom/android/vcard/VCardEntry$OrganizationData;,
        Lcom/android/vcard/VCardEntry$PostalData;,
        Lcom/android/vcard/VCardEntry$EmailData;,
        Lcom/android/vcard/VCardEntry$PhoneData;,
        Lcom/android/vcard/VCardEntry$NameData;,
        Lcom/android/vcard/VCardEntry$EntryElement;,
        Lcom/android/vcard/VCardEntry$EntryLabel;
    }
.end annotation


# static fields
.field public static final CONTACT_ADDED_TIME_MIMETYPE:Ljava/lang/String; = "vnd.android.cursor.item/added_time"

.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation
.end field

.field private mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

.field private mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameData:Lcom/android/vcard/VCardEntry$NameData;

.field private mNicknameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$SipData;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownXData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 80
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-AIM"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-MSN"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-YAHOO"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-QQ"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-ICQ"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-JABBER"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-SKYPE-USERNAME"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "X-GOOGLE-TALK"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v3, "X-GOOGLE TALK"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1856
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    .line 1760
    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntry;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1764
    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1

    .line 1767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1547
    new-instance v0, Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {v0}, Lcom/android/vcard/VCardEntry$NameData;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 1768
    iput p1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 1769
    iput-object p2, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 1831
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$EmailData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addIm(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    .line 1971
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 1974
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v6, Lcom/android/vcard/VCardEntry$ImData;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    .line 1848
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 1851
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v7, Lcom/android/vcard/VCardEntry$OrganizationData;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry$OrganizationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    .line 1824
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$NicknameData;

    invoke-direct {v0, p1}, Lcom/android/vcard/VCardEntry$NicknameData;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2

    .line 1978
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1979
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 1981
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$NoteData;

    invoke-direct {v0, p1}, Lcom/android/vcard/VCardEntry$NoteData;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1773
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 1776
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1777
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_a

    .line 1779
    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_5

    .line 1787
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_8

    .line 1789
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x70

    const/4 v6, 0x1

    if-eq v4, v5, :cond_6

    const/16 v5, 0x50

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v5, 0x77

    if-eq v4, v5, :cond_5

    const/16 v5, 0x57

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 1797
    :cond_3
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v2, :cond_7

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_7

    .line 1798
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    :goto_1
    const/16 v3, 0x3b

    .line 1795
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    :goto_2
    const/16 v3, 0x2c

    .line 1792
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move v3, v6

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_9

    .line 1802
    iget p2, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {p2}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result p2

    .line 1804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1803
    invoke-static {v0, p2}, Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    .line 1806
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1809
    :cond_a
    :goto_5
    new-instance v0, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$PhoneData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1810
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 2

    .line 1985
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1986
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 1988
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardEntry$PhotoData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/vcard/VCardEntry$PhotoData;-><init>(Ljava/lang/String;[BZ)V

    .line 1989
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1835
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1836
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 1838
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    iget p0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {p2, p1, p3, p4, p0}, Lcom/android/vcard/VCardEntry$PostalData;->constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSip(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .line 1814
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    .line 1817
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$SipData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/vcard/VCardEntry$SipData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Lcom/android/vcard/VCardEntry;
    .locals 1

    .line 2642
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;

    move-result-object p0

    return-object p0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "SORT-AS"

    .line 1859
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_2

    .line 1860
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1861
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vCard"

    .line 1862
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget p0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 1866
    invoke-static {p1, p0}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 1868
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1869
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1870
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1872
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private constructDisplayName()Ljava/lang/String;
    .locals 7

    .line 2488
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2489
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {p0}, Lcom/android/vcard/VCardEntry$NameData;->access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 2490
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyStructuredName()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2491
    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1200(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2492
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1000(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1100(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$900(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {p0}, Lcom/android/vcard/VCardEntry$NameData;->access$800(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v6

    .line 2491
    invoke-static/range {v1 .. v6}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyPhoneticStructuredName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2494
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2495
    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->access$500(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2}, Lcom/android/vcard/VCardEntry$NameData;->access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {p0}, Lcom/android/vcard/VCardEntry$NameData;->access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object p0

    .line 2494
    invoke-static {v0, v1, v2, p0}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2496
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2497
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-static {p0}, Lcom/android/vcard/VCardEntry$EmailData;->access$1500(Lcom/android/vcard/VCardEntry$EmailData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2498
    :cond_3
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2499
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-static {p0}, Lcom/android/vcard/VCardEntry$PhoneData;->access$1600(Lcom/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2503
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2504
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0
.end method

.method private getAddTimeValues(I)Landroid/content/ContentProviderOperation;
    .locals 2

    .line 2625
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2626
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 2627
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2628
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "data2"

    const-string v1, "0"

    .line 2629
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "data3"

    const-string v1, "added time"

    .line 2630
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data15"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const/4 v0, 0x0

    .line 2632
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_primary"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "is_super_primary"

    .line 2633
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "data_version"

    .line 2634
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/added_time"

    .line 2635
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v0, "raw_contact_id"

    .line 2636
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2638
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2475
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 2478
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 2479
    invoke-static {p1}, Lcom/android/vcard/VCardEntry$AndroidCustomData;->constructAndroidCustomData(Ljava/util/List;)Lcom/android/vcard/VCardEntry$AndroidCustomData;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2038
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    if-eqz p1, :cond_6

    .line 2042
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    if-le p2, v1, :cond_1

    move p2, v1

    :cond_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_4

    const/4 v4, 0x4

    if-eq p2, v4, :cond_3

    if-eq p2, v1, :cond_2

    goto :goto_0

    .line 2052
    :cond_2
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2054
    :cond_3
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$902(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2056
    :cond_4
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$1002(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2058
    :cond_5
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/vcard/VCardEntry$NameData;->access$1102(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2060
    :goto_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$1202(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    :goto_1
    return-void
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1887
    invoke-direct {p0, p3}, Lcom/android/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-nez p2, :cond_0

    .line 1889
    sget-object p2, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 1893
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_3

    .line 1906
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1909
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_2

    if-le v3, v2, :cond_1

    const/16 v5, 0x20

    .line 1912
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1914
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1916
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    move-object v1, v0

    goto :goto_2

    .line 1901
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p2, ""

    :goto_1
    move-object v1, p2

    move-object v2, v0

    .line 1919
    :goto_2
    iget-object p2, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez p2, :cond_5

    const/4 v3, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p4

    .line 1922
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 1926
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 1929
    invoke-static {p3}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$100(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1930
    invoke-static {p3}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$200(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1933
    invoke-static {p3, v1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$102(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1934
    invoke-static {p3, v2}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$202(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1935
    invoke-static {p3, p4}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$302(Lcom/android/vcard/VCardEntry$OrganizationData;Z)Z

    return-void

    :cond_7
    const/4 v3, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p4

    .line 1941
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2072
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$500(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2073
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2074
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_a

    .line 2081
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    move v0, v2

    :cond_2
    const/4 v3, 0x0

    .line 2092
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lez v4, :cond_7

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_4

    .line 2095
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_1
    if-eqz v4, :cond_7

    .line 2101
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2102
    array-length v4, v0

    if-ne v4, v2, :cond_5

    .line 2105
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v2, v0, v3

    invoke-static {p1, v2}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2106
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v1, v0, v1

    invoke-static {p1, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2107
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object p1, v0, v5

    invoke-static {p0, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v4, v5, :cond_6

    .line 2111
    iget-object p1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v2, v0, v3

    invoke-static {p1, v2}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2112
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object p1, v0, v1

    invoke-static {p0, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2114
    :cond_6
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    return-void

    :cond_7
    if-eq v0, v5, :cond_9

    if-eq v0, v2, :cond_8

    goto :goto_3

    .line 2123
    :cond_8
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2125
    :cond_9
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2127
    :goto_3
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    :goto_4
    return-void
.end method

.method private handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2429
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "sip:"

    .line 2432
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 2433
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2434
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    .line 2443
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2444
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PREF"

    .line 2445
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    move v3, v8

    goto :goto_0

    :cond_3
    const-string v6, "HOME"

    .line 2447
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v8

    goto :goto_0

    :cond_4
    const-string v6, "WORK"

    .line 2449
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v7

    goto :goto_0

    :cond_5
    if-gez v0, :cond_2

    const-string v0, "X-"

    .line 2452
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2453
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_6
    move-object v1, v4

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_7
    move v2, v3

    :cond_8
    if-gez v0, :cond_9

    const/4 v0, 0x3

    .line 2464
    :cond_9
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/vcard/VCardEntry;->addSip(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 10

    .line 1952
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    .line 1955
    invoke-direct/range {v1 .. v7}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 1958
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 1959
    invoke-static {v1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$400(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1960
    invoke-static {v1, p1}, Lcom/android/vcard/VCardEntry$OrganizationData;->access$402(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, p1

    .line 1966
    invoke-direct/range {v3 .. v9}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/vcard/VCardEntry$EntryElement;",
            ">;",
            "Lcom/android/vcard/VCardEntry$EntryElementIterator;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1624
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    .line 1625
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/vcard/VCardEntry$EntryElement;

    invoke-interface {p0}, Lcom/android/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1626
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/vcard/VCardEntry$EntryElement;

    .line 1627
    invoke-interface {p2, p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    goto :goto_0

    .line 1629
    :cond_0
    invoke-interface {p2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    :cond_1
    return-void
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2650
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_2

    .line 2652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2654
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p0, -0x1

    if-lez v2, :cond_0

    const-string v2, ";"

    .line 2657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2660
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne p0, v0, :cond_3

    const/4 p0, 0x0

    .line 2662
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2002
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v0}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2003
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$500(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2004
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 2005
    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "SORT-AS"

    .line 2009
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_6

    .line 2010
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 2011
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vCard"

    .line 2012
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2016
    invoke-static {p1, v0}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 2018
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_3

    move v0, v2

    :cond_3
    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_0

    .line 2024
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2026
    :cond_5
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2028
    :goto_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/vcard/VCardEntry;)V
    .locals 1

    .line 2468
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    .line 2471
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addProperty(Lcom/android/vcard/VCardProperty;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2132
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2133
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getParameterMap()Ljava/util/Map;

    move-result-object v2

    .line 2134
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v3

    .line 2135
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getByteValue()[B

    move-result-object v4

    if-eqz v3, :cond_0

    .line 2137
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-nez v4, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 2142
    invoke-direct {v0, v3}, Lcom/android/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    const-string v7, "VERSION"

    .line 2145
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_13

    :cond_3
    const-string v7, "FN"

    .line 2147
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2148
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$1302(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_13

    :cond_4
    const-string v7, "NAME"

    .line 2149
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2152
    iget-object v1, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2153
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$1302(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_13

    :cond_5
    const-string v7, "N"

    .line 2155
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2156
    invoke-direct {v0, v3, v2}, Lcom/android/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto/16 :goto_13

    :cond_6
    const-string v7, "SORT-STRING"

    .line 2157
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2158
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$1402(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_13

    :cond_7
    const-string v7, "NICKNAME"

    .line 2159
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4b

    const-string v7, "X-NICKNAME"

    .line 2160
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_12

    :cond_8
    const-string v7, "SOUND"

    .line 2162
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "TYPE"

    if-eqz v7, :cond_9

    .line 2163
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_4c

    const-string v2, "X-IRMC-N"

    .line 2165
    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2170
    iget v1, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v6, v1}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 2172
    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_13

    :cond_9
    const-string v7, "ADR"

    .line 2176
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v9, "X-"

    const-string v10, "WORK"

    const-string v11, "HOME"

    const/4 v13, 0x2

    const-string v14, "PREF"

    const/4 v12, 0x1

    if-eqz v7, :cond_17

    .line 2178
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2179
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v1, 0x0

    goto :goto_1

    :cond_b
    move v1, v12

    :goto_1
    if-eqz v1, :cond_c

    return-void

    .line 2191
    :cond_c
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_14

    .line 2193
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v5

    const/4 v2, -0x1

    const/4 v6, 0x0

    :cond_d
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2194
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 2195
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    move v6, v12

    goto :goto_2

    .line 2197
    :cond_e
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    move-object v4, v5

    move v2, v12

    goto :goto_2

    .line 2200
    :cond_f
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_13

    const-string v15, "COMPANY"

    .line 2202
    invoke-virtual {v8, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    goto :goto_4

    :cond_10
    const-string v15, "PARCEL"

    .line 2208
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "DOM"

    .line 2209
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "INTL"

    .line 2210
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    goto :goto_2

    :cond_11
    if-gez v2, :cond_d

    .line 2214
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2215
    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_3

    :cond_12
    move-object v4, v7

    :goto_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_13
    :goto_4
    move-object v4, v5

    move v2, v13

    goto :goto_2

    :cond_14
    move-object v4, v5

    const/4 v2, -0x1

    const/4 v6, 0x0

    :cond_15
    if-gez v2, :cond_16

    move v2, v12

    .line 2227
    :cond_16
    invoke-direct {v0, v2, v3, v4, v6}, Lcom/android/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_13

    :cond_17
    const-string v7, "EMAIL"

    .line 2228
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v15, 0x4

    if-eqz v7, :cond_21

    .line 2232
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1e

    .line 2234
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :cond_18
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2235
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 2236
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    move v3, v12

    goto :goto_5

    .line 2238
    :cond_19
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    move v2, v12

    goto :goto_5

    .line 2240
    :cond_1a
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    move v2, v13

    goto :goto_5

    :cond_1b
    const-string v8, "CELL"

    .line 2242
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move v2, v15

    goto :goto_5

    :cond_1c
    if-gez v2, :cond_18

    .line 2245
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2246
    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_6

    :cond_1d
    move-object v5, v4

    :goto_6
    const/4 v2, 0x0

    goto :goto_5

    :cond_1e
    const/4 v2, -0x1

    const/4 v3, 0x0

    :cond_1f
    if-gez v2, :cond_20

    const/4 v2, 0x3

    .line 2257
    :cond_20
    invoke-direct {v0, v2, v6, v5, v3}, Lcom/android/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_13

    :cond_21
    const-string v7, "ORG"

    .line 2258
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 2262
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_23

    .line 2264
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v15, 0x0

    :cond_22
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2265
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v15, v12

    goto :goto_7

    :cond_23
    const/4 v15, 0x0

    .line 2270
    :cond_24
    invoke-direct {v0, v12, v3, v2, v15}, Lcom/android/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_13

    :cond_25
    const-string v3, "TITLE"

    .line 2271
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2272
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_26
    const-string v3, "ROLE"

    .line 2273
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto/16 :goto_13

    :cond_27
    const-string v3, "PHOTO"

    .line 2276
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "URL"

    if-nez v3, :cond_45

    const-string v3, "LOGO"

    .line 2277
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    goto/16 :goto_10

    :cond_28
    const-string v3, "TEL"

    .line 2296
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "sip:"

    if-eqz v3, :cond_2f

    .line 2299
    iget v1, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2302
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    move-object v3, v5

    move v1, v12

    goto :goto_9

    :cond_29
    const-string v1, "tel:"

    .line 2304
    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2305
    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_8

    :cond_2a
    move-object v3, v6

    :goto_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_2b

    .line 2317
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2318
    invoke-direct {v0, v6, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_13

    .line 2320
    :cond_2b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2c

    return-void

    .line 2324
    :cond_2c
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2325
    invoke-static {v1, v3}, Lcom/android/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2329
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_2d

    .line 2330
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_a

    .line 2334
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    :goto_a
    if-eqz v1, :cond_2e

    .line 2339
    invoke-interface {v1, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_b

    :cond_2e
    const/4 v12, 0x0

    .line 2345
    :goto_b
    invoke-direct {v0, v15, v3, v5, v12}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_13

    :cond_2f
    const-string v3, "X-SKYPE-PSTNNUMBER"

    .line 2347
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2349
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_30

    .line 2353
    invoke-interface {v1, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_c

    :cond_30
    const/4 v12, 0x0

    :goto_c
    const/4 v1, 0x7

    .line 2358
    invoke-direct {v0, v1, v6, v5, v12}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_13

    .line 2359
    :cond_31
    sget-object v3, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2360
    sget-object v3, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2363
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_36

    .line 2365
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v16, 0x0

    :cond_32
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2366
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    move/from16 v16, v12

    goto :goto_d

    :cond_33
    if-gez v3, :cond_32

    .line 2369
    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    move v3, v12

    goto :goto_d

    .line 2371
    :cond_34
    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    move v3, v13

    goto :goto_d

    :cond_35
    move/from16 v5, v16

    goto :goto_e

    :cond_36
    const/4 v3, -0x1

    const/4 v5, 0x0

    :goto_e
    if-gez v3, :cond_37

    move v4, v12

    goto :goto_f

    :cond_37
    move v4, v3

    :goto_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v3, v6

    .line 2380
    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardEntry;->addIm(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_13

    :cond_38
    const-string v3, "NOTE"

    .line 2381
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2382
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2383
    :cond_39
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2384
    iget-object v1, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    if-nez v1, :cond_3a

    .line 2385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 2387
    :cond_3a
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$WebsiteData;

    invoke-direct {v1, v6}, Lcom/android/vcard/VCardEntry$WebsiteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_3b
    const-string v3, "BDAY"

    .line 2388
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2389
    new-instance v1, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-direct {v1, v6}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_13

    :cond_3c
    const-string v3, "ANNIVERSARY"

    .line 2390
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2391
    new-instance v1, Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-direct {v1, v6}, Lcom/android/vcard/VCardEntry$AnniversaryData;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    goto/16 :goto_13

    :cond_3d
    const-string v3, "X-PHONETIC-FIRST-NAME"

    .line 2392
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2393
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_13

    :cond_3e
    const-string v3, "X-PHONETIC-MIDDLE-NAME"

    .line 2394
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 2395
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_13

    :cond_3f
    const-string v3, "X-PHONETIC-LAST-NAME"

    .line 2396
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2397
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0, v6}, Lcom/android/vcard/VCardEntry$NameData;->access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_13

    :cond_40
    const-string v3, "IMPP"

    .line 2398
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2400
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2401
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2402
    invoke-direct {v0, v6, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_13

    :cond_41
    const-string v3, "X-SIP"

    .line 2404
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2405
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 2406
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2407
    invoke-direct {v0, v6, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_13

    :cond_42
    const-string v2, "X-ANDROID-CUSTOM"

    .line 2409
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2410
    iget v1, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v6, v1}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 2412
    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto :goto_13

    .line 2413
    :cond_43
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2415
    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    if-nez v2, :cond_44

    .line 2416
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    .line 2418
    :cond_44
    iget-object v0, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_45
    :goto_10
    const-string v1, "VALUE"

    .line 2278
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_46

    .line 2279
    invoke-interface {v1, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    goto :goto_13

    .line 2282
    :cond_46
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_49

    .line 2286
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v15, 0x0

    :cond_47
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2287
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    move v15, v12

    goto :goto_11

    :cond_48
    if-nez v5, :cond_47

    move-object v5, v2

    goto :goto_11

    :cond_49
    const/4 v15, 0x0

    .line 2294
    :cond_4a
    invoke-direct {v0, v5, v4, v15}, Lcom/android/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto :goto_13

    .line 2161
    :cond_4b
    :goto_12
    invoke-direct {v0, v6}, Lcom/android/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    :cond_4c
    :goto_13
    return-void
.end method

.method public consolidateFields()V
    .locals 1

    .line 2516
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2593
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2596
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 2600
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2604
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2605
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2606
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    const-string v2, "account_type"

    const-string v3, "account_name"

    if-eqz v1, :cond_2

    .line 2607
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2608
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2610
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2611
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2613
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2615
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2616
    new-instance v0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;-><init>(Lcom/android/vcard/VCardEntry;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2618
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    return-object p2
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2540
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2543
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 2547
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 2551
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2552
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-nez p3, :cond_2

    const/4 p3, 0x3

    .line 2555
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "aggregation_mode"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2558
    :cond_2
    iget-object p3, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    const-string v1, "account_type"

    const-string v2, "account_name"

    if-eqz p3, :cond_3

    .line 2559
    iget-object p3, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2560
    iget-object p3, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object p3, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    .line 2562
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2563
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2565
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2567
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2568
    new-instance p3, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;-><init>(Lcom/android/vcard/VCardEntry;Ljava/util/List;I)V

    invoke-virtual {p0, p3}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2570
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    return-object p2
.end method

.method public final getAndroidCustomData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation

    .line 2714
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    return-object p0
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 0

    .line 2677
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/vcard/VCardEntry$BirthdayData;->access$1800(Lcom/android/vcard/VCardEntry$BirthdayData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getChildlen()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .line 2721
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .line 2725
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2728
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .line 2689
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object p0
.end method

.method public final getImList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .line 2701
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object p0
.end method

.method public final getNameData()Lcom/android/vcard/VCardEntry$NameData;
    .locals 0

    .line 2669
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    return-object p0
.end method

.method public final getNickNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation

    .line 2673
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    return-object p0
.end method

.method public final getNotes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation

    .line 2681
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object p0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .line 2697
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object p0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .line 2685
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object p0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .line 2705
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object p0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .line 2693
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object p0
.end method

.method public getUnknownXData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2732
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    return-object p0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation

    .line 2709
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object p0
.end method

.method public isIgnorable()Z
    .locals 2

    .line 2528
    new-instance v0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$1;)V

    .line 2529
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2530
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->getResult()Z

    move-result p0

    return p0
.end method

.method public final iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1

    .line 1592
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationStarted()V

    .line 1593
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1594
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1595
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1597
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1598
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1599
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1600
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1601
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1602
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1603
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1604
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1605
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1606
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1607
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1609
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1611
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1612
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    if-eqz v0, :cond_1

    .line 1615
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$AnniversaryData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1616
    iget-object p0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-interface {p1, p0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1617
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1619
    :cond_1
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationEnded()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1754
    new-instance v0, Lcom/android/vcard/VCardEntry$ToStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$1;)V

    .line 1755
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1756
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ToStringIterator;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
