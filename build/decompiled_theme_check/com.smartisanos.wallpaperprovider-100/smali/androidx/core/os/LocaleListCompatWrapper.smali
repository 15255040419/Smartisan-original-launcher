.class final Landroidx/core/os/LocaleListCompatWrapper;
.super Ljava/lang/Object;
.source "LocaleListCompatWrapper.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final sEmptyList:[Ljava/util/Locale;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    .line 39
    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->sEmptyList:[Ljava/util/Locale;

    .line 171
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_EN_XA:Ljava/util/Locale;

    .line 172
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_AR_XB:Ljava/util/Locale;

    const-string v0, "en-Latn"

    .line 217
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTagCompat(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->EN_LATN:Ljava/util/Locale;

    return-void
.end method

.method varargs constructor <init>([Ljava/util/Locale;)V
    .locals 7

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    array-length v0, p1

    if-nez v0, :cond_0

    .line 122
    sget-object p1, Landroidx/core/os/LocaleListCompatWrapper;->sEmptyList:[Ljava/util/Locale;

    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    const-string p1, ""

    .line 123
    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    goto :goto_1

    .line 125
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/Locale;

    .line 126
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 128
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 129
    aget-object v4, p1, v3

    const-string v5, "list["

    if-eqz v4, :cond_3

    .line 132
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 135
    invoke-virtual {v4}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    .line 136
    aput-object v4, v0, v3

    .line 137
    invoke-static {v2, v4}, Landroidx/core/os/LocaleListCompatWrapper;->toLanguageTag(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 138
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_1

    const/16 v5, 0x2c

    .line 139
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is a repetition"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_4
    iput-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1, p2}, Landroidx/core/os/LocaleListCompatWrapper;->computeFirstMatchIndex(Ljava/util/Collection;Z)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 260
    :cond_0
    iget-object p0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method private computeFirstMatchIndex(Ljava/util/Collection;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v2

    .line 224
    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const v0, 0x7fffffff

    if-eqz p2, :cond_3

    .line 231
    sget-object p2, Landroidx/core/os/LocaleListCompatWrapper;->EN_LATN:Ljava/util/Locale;

    invoke-direct {p0, p2}, Landroidx/core/os/LocaleListCompatWrapper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result p2

    if-nez p2, :cond_2

    return v2

    :cond_2
    if-ge p2, v0, :cond_3

    goto :goto_0

    :cond_3
    move p2, v0

    .line 238
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 239
    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->forLanguageTagCompat(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 242
    invoke-direct {p0, v1}, Landroidx/core/os/LocaleListCompatWrapper;->findFirstMatchIndex(Ljava/util/Locale;)I

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    if-ge v1, p2, :cond_4

    move p2, v1

    goto :goto_1

    :cond_6
    if-ne p2, v0, :cond_7

    return v2

    :cond_7
    return p2
.end method

.method private findFirstMatchIndex(Ljava/util/Locale;)I
    .locals 3

    const/4 v0, 0x0

    .line 208
    :goto_0
    iget-object v1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 209
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroidx/core/os/LocaleListCompatWrapper;->matchScore(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method private static getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 161
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v1
.end method

.method private static isPseudoLocale(Ljava/util/Locale;)Z
    .locals 1

    .line 175
    sget-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_EN_XA:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_AR_XB:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private static matchScore(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 4

    .line 180
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 183
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 186
    :cond_1
    invoke-static {p0}, Landroidx/core/os/LocaleListCompatWrapper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroidx/core/os/LocaleListCompatWrapper;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 191
    :cond_2
    invoke-static {p0}, Landroidx/core/os/LocaleListCompatWrapper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 196
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1

    .line 201
    :cond_5
    invoke-static {p1}, Landroidx/core/os/LocaleListCompatWrapper;->getLikelyScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v2
.end method

.method static toLanguageTag(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 1

    .line 151
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 77
    :cond_0
    instance-of v1, p1, Landroidx/core/os/LocaleListCompatWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 80
    :cond_1
    check-cast p1, Landroidx/core/os/LocaleListCompatWrapper;

    iget-object p1, p1, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    .line 81
    iget-object v1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    array-length v3, p1

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    .line 84
    :goto_0
    iget-object v3, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 85
    aget-object v3, v3, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 1

    if-ltz p1, :cond_0

    .line 49
    iget-object p0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 1

    .line 265
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/os/LocaleListCompatWrapper;->computeFirstMatch(Ljava/util/Collection;Z)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    :goto_0
    iget-object v2, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 3

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 65
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    .line 59
    iget-object p0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length p0, p0

    return p0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 105
    :goto_0
    iget-object v2, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 106
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v2, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
