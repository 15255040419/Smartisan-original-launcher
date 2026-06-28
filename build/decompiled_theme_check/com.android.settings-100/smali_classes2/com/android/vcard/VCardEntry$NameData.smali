.class public Lcom/android/vcard/VCardEntry$NameData;
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
    name = "NameData"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field private mFamily:Ljava/lang/String;

.field private mFormatted:Ljava/lang/String;

.field private mGiven:Ljava/lang/String;

.field private mMiddle:Ljava/lang/String;

.field private mPhoneticFamily:Ljava/lang/String;

.field private mPhoneticGiven:Ljava/lang/String;

.field private mPhoneticMiddle:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mSortString:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p1
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

    .line 168
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 169
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    .line 170
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "mimetype"

    const-string v1, "vnd.android.cursor.item/name"

    .line 171
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 173
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 174
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    const-string v1, "data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 176
    :cond_0
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 177
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    const-string v1, "data3"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 179
    :cond_1
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 180
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    const-string v1, "data5"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 182
    :cond_2
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 183
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    const-string v1, "data4"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 185
    :cond_3
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 186
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    const-string v1, "data6"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_4
    const/4 p2, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "data7"

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 192
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move p2, v3

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 196
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    const-string v1, "data9"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move p2, v3

    .line 199
    :cond_6
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 200
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    const-string v1, "data8"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move p2, v3

    :cond_7
    if-nez p2, :cond_8

    .line 207
    iget-object p2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 210
    :cond_8
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    const-string p2, "data1"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 211
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public emptyPhoneticStructuredName()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    .line 162
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

.method public emptyStructuredName()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    .line 157
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

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 228
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$NameData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 231
    :cond_1
    check-cast p1, Lcom/android/vcard/VCardEntry$NameData;

    .line 233
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    .line 234
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    .line 235
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    .line 236
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    .line 237
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    .line 238
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    .line 239
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    .line 240
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    .line 241
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    .line 242
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 0

    .line 265
    sget-object p0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object p0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p0
.end method

.method public getFormatted()Ljava/lang/String;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p0
.end method

.method public getGiven()Ljava/lang/String;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p0
.end method

.method public getMiddle()Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getSortString()Ljava/lang/String;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p0, v0, v1

    .line 251
    array-length p0, v0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v4, v0, v1

    mul-int/lit8 v3, v3, 0x1f

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

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

.method public setFamily(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-void
.end method

.method public setGiven(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-void
.end method

.method public setMiddle(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string p0, "family: %s, given: %s, middle: %s, prefix: %s, suffix: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
