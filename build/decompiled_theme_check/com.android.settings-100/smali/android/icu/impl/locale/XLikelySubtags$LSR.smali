.class public Landroid/icu/impl/locale/XLikelySubtags$LSR;
.super Ljava/lang/Object;
.source "XLikelySubtags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLikelySubtags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSR"
.end annotation


# static fields
.field public static LANGUAGE_ALIASES:Landroid/icu/impl/locale/XLikelySubtags$Aliases;

.field public static REGION_ALIASES:Landroid/icu/impl/locale/XLikelySubtags$Aliases;


# instance fields
.field public final language:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field public final script:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags$Aliases;

    const-string v1, "language"

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/XLikelySubtags$Aliases;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->LANGUAGE_ALIASES:Landroid/icu/impl/locale/XLikelySubtags$Aliases;

    .line 112
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags$Aliases;

    const-string/jumbo v1, "territory"

    invoke-direct {v0, v1}, Landroid/icu/impl/locale/XLikelySubtags$Aliases;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->REGION_ALIASES:Landroid/icu/impl/locale/XLikelySubtags$Aliases;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    .line 180
    iput-object p2, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    return-void
.end method

.method public static from(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 3

    .line 163
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/icu/impl/locale/XLikelySubtags$LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static from(Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 6

    const-string v0, "[-_]"

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 146
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    array-length v0, p0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_3

    const/4 v0, 0x0

    .line 149
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 150
    array-length v3, p0

    const/4 v4, 0x2

    const-string v5, ""

    if-ge v3, v4, :cond_0

    move-object v1, v5

    goto :goto_0

    :cond_0
    aget-object v1, p0, v1

    .line 151
    :goto_0
    array-length v3, p0

    if-ge v3, v2, :cond_1

    move-object p0, v5

    goto :goto_1

    :cond_1
    aget-object p0, p0, v4

    .line 152
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    new-instance p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    invoke-direct {p0, v0, v5, v1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v2, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    invoke-direct {v2, v0, v1, p0}, Landroid/icu/impl/locale/XLikelySubtags$LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    :goto_2
    return-object p0

    .line 147
    :cond_3
    new-instance p0, Landroid/icu/util/ICUException;

    const-string/jumbo v0, "too many subtags"

    invoke-direct {p0, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static from(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 1

    .line 115
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/locale/XLikelySubtags$LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0
.end method

.method public static fromMaximalized(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 1

    .line 171
    sget-object v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->LANGUAGE_ALIASES:Landroid/icu/impl/locale/XLikelySubtags$Aliases;

    invoke-virtual {v0, p0}, Landroid/icu/impl/locale/XLikelySubtags$Aliases;->getCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 173
    sget-object v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->REGION_ALIASES:Landroid/icu/impl/locale/XLikelySubtags$Aliases;

    invoke-virtual {v0, p2}, Landroid/icu/impl/locale/XLikelySubtags$Aliases;->getCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-static {}, Landroid/icu/impl/locale/XLikelySubtags;->access$000()Landroid/icu/impl/locale/XLikelySubtags;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/impl/locale/XLikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    check-cast p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    iget-object v1, p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    .line 210
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Landroid/icu/impl/Utility;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-object p0

    .line 197
    :cond_0
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    if-nez p1, :cond_1

    .line 198
    iget-object p1, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    :cond_1
    if-nez p2, :cond_2

    .line 199
    iget-object p2, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    :cond_2
    if-nez p3, :cond_3

    .line 200
    iget-object p3, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    :cond_3
    invoke-direct {v0, p1, p2, p3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x2d

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
