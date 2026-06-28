.class public Lcom/android/vcard/VCardSourceDetector;
.super Ljava/lang/Object;
.source "VCardSourceDetector.java"

# interfaces
.implements Lcom/android/vcard/VCardInterpreter;


# static fields
.field private static APPLE_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static FOMA_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final PARSE_TYPE_APPLE:I = 0x1

.field private static final PARSE_TYPE_DOCOMO_FOMA:I = 0x3

.field private static final PARSE_TYPE_MOBILE_PHONE_JP:I = 0x2

.field public static final PARSE_TYPE_UNKNOWN:I = 0x0

.field private static final PARSE_TYPE_WINDOWS_MOBILE_V65_JP:I = 0x4

.field private static TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

.field private static WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mParseType:I

.field private mSpecifiedCharset:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 45
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "X-PHONETIC-FIRST-NAME"

    const-string v2, "X-PHONETIC-MIDDLE-NAME"

    const-string v3, "X-PHONETIC-LAST-NAME"

    const-string v4, "X-ABADR"

    const-string v5, "X-ABUID"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "X-GNO"

    const-string v2, "X-GN"

    const-string v3, "X-REDUCTION"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "X-MICROSOFT-ASST_TEL"

    const-string v2, "X-MICROSOFT-ASSISTANT"

    const-string v3, "X-MICROSOFT-OFFICELOC"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "X-SD-VERN"

    const-string v2, "X-SD-FORMAT_VER"

    const-string v3, "X-SD-CATEGORIES"

    const-string v4, "X-SD-CLASS"

    const-string v5, "X-SD-DCREATED"

    const-string v6, "X-SD-DESCRIPTION"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    const-string v0, "X-SD-CHAR_CODE"

    .line 60
    sput-object v0, Lcom/android/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    return-void
.end method


# virtual methods
.method public getEstimatedCharset()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object p0, p0, Lcom/android/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    return-object p0

    .line 175
    :cond_0
    iget p0, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "SHIFT_JIS"

    return-object p0

    :cond_2
    const-string p0, "UTF-8"

    return-object p0
.end method

.method public getEstimatedType()I
    .locals 3

    .line 143
    iget v0, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 151
    iget p0, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    if-nez p0, :cond_0

    const/high16 p0, -0x40000000    # -2.0f

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const p0, -0x3fffffff    # -2.0000002f

    return p0

    :cond_1
    if-ne p0, v1, :cond_2

    const p0, -0x3ffffffe    # -2.0000005f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    const p0, 0x38000008

    return p0

    :cond_4
    const p0, 0x18000008

    return p0
.end method

.method public onEntryEnded()V
    .locals 0

    return-void
.end method

.method public onEntryStarted()V
    .locals 0

    return-void
.end method

.method public onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    .locals 6

    .line 103
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object p1

    const-string v1, "VERSION"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 108
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "2.1"

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iput v5, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    :cond_0
    const-string v1, "3.0"

    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iput v3, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    :cond_1
    const-string v1, "4.0"

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    iput v2, p0, Lcom/android/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    .line 116
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid version string: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "vCard"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_3
    sget-object v1, Lcom/android/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    iput v4, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 121
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    .line 124
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    if-eqz p1, :cond_5

    return-void

    .line 127
    :cond_5
    sget-object p1, Lcom/android/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    .line 128
    iput p1, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_1

    .line 129
    :cond_6
    sget-object p1, Lcom/android/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 130
    iput v4, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_1

    .line 131
    :cond_7
    sget-object p1, Lcom/android/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 132
    iput v2, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_1

    .line 133
    :cond_8
    sget-object p1, Lcom/android/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 134
    iput v3, p0, Lcom/android/vcard/VCardSourceDetector;->mParseType:I

    :cond_9
    :goto_1
    return-void
.end method

.method public onVCardEnded()V
    .locals 0

    return-void
.end method

.method public onVCardStarted()V
    .locals 0

    return-void
.end method
