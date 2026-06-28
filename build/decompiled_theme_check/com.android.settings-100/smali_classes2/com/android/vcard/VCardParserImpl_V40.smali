.class Lcom/android/vcard/VCardParserImpl_V40;
.super Lcom/android/vcard/VCardParserImpl_V30;
.source "VCardParserImpl_V40.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V30;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardParserImpl_V30;-><init>(I)V

    return-void
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "\n"

    return-object p0
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, "\n"

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    sget-object p0, Lcom/android/vcard/VCardParser_V40;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object p0
.end method

.method protected getVersion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 0

    const-string p0, "4.0"

    return-object p0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p1}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
