.class public Lcom/android/vcard/VCardParser_V40;
.super Lcom/android/vcard/VCardParser;
.source "VCardParser_V40.java"


# static fields
.field static final sAcceptableEncoding:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sKnownPropertyNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 38
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "BEGIN"

    const-string v2, "END"

    const-string v3, "VERSION"

    const-string v4, "SOURCE"

    const-string v5, "KIND"

    const-string v6, "FN"

    const-string v7, "N"

    const-string v8, "NICKNAME"

    const-string v9, "PHOTO"

    const-string v10, "BDAY"

    const-string v11, "ANNIVERSARY"

    const-string v12, "GENDER"

    const-string v13, "ADR"

    const-string v14, "TEL"

    const-string v15, "EMAIL"

    const-string v16, "IMPP"

    const-string v17, "LANG"

    const-string v18, "TZ"

    const-string v19, "GEO"

    const-string v20, "TITLE"

    const-string v21, "ROLE"

    const-string v22, "LOGO"

    const-string v23, "ORG"

    const-string v24, "MEMBER"

    const-string v25, "RELATED"

    const-string v26, "CATEGORIES"

    const-string v27, "NOTE"

    const-string v28, "PRODID"

    const-string v29, "REV"

    const-string v30, "SOUND"

    const-string v31, "UID"

    const-string v32, "CLIENTPIDMAP"

    const-string v33, "URL"

    const-string v34, "KEY"

    const-string v35, "FBURL"

    const-string v36, "CALENDRURI"

    const-string v37, "CALURI"

    const-string v38, "XML"

    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardParser_V40;->sKnownPropertyNameSet:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "8BIT"

    const-string v2, "B"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardParser_V40;->sAcceptableEncoding:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/vcard/VCardParser;-><init>()V

    .line 61
    new-instance v0, Lcom/android/vcard/VCardParserImpl_V40;

    invoke-direct {v0}, Lcom/android/vcard/VCardParserImpl_V40;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/vcard/VCardParser;-><init>()V

    .line 65
    new-instance v0, Lcom/android/vcard/VCardParserImpl_V40;

    invoke-direct {v0, p1}, Lcom/android/vcard/VCardParserImpl_V40;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    return-void
.end method


# virtual methods
.method public addInterpreter(Lcom/android/vcard/VCardInterpreter;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParserImpl_V40;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V40;->cancel()V

    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParserImpl_V40;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public parseOne(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V40;

    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParserImpl_V40;->parseOne(Ljava/io/InputStream;)V

    return-void
.end method
