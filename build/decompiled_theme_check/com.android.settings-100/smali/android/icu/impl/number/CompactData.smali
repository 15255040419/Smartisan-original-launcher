.class public Landroid/icu/impl/number/CompactData;
.super Ljava/lang/Object;
.source "CompactData.java"

# interfaces
.implements Landroid/icu/impl/number/MultiplierProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/CompactData$CompactDataSink;,
        Landroid/icu/impl/number/CompactData$CompactType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COMPACT_MAX_DIGITS:I = 0xf

.field private static final USE_FALLBACK:Ljava/lang/String; = "<USE FALLBACK>"


# instance fields
.field private isEmpty:Z

.field private largestMagnitude:B

.field private final multipliers:[B

.field private final patterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    const/16 v1, 0x10

    mul-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    new-array v0, v1, [B

    .line 41
    iput-object v0, p0, Landroid/icu/impl/number/CompactData;->multipliers:[B

    const/4 v0, 0x0

    .line 42
    iput-byte v0, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    return-void
.end method

.method static synthetic access$000(Landroid/icu/impl/number/CompactData;)[B
    .locals 0

    .line 22
    iget-object p0, p0, Landroid/icu/impl/number/CompactData;->multipliers:[B

    return-object p0
.end method

.method static synthetic access$100(Landroid/icu/impl/number/CompactData;)[Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(ILandroid/icu/impl/StandardPlural;)I
    .locals 0

    .line 22
    invoke-static {p0, p1}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)I
    .locals 0

    .line 22
    invoke-static {p0}, Landroid/icu/impl/number/CompactData;->countZeros(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/icu/impl/number/CompactData;)B
    .locals 0

    .line 22
    iget-byte p0, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    return p0
.end method

.method static synthetic access$402(Landroid/icu/impl/number/CompactData;B)B
    .locals 0

    .line 22
    iput-byte p1, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    return p1
.end method

.method static synthetic access$502(Landroid/icu/impl/number/CompactData;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    return p1
.end method

.method private static final countZeros(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 220
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1
.end method

.method private static final getIndex(ILandroid/icu/impl/StandardPlural;)I
    .locals 1

    .line 213
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "NumberElements/"

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    sget-object p0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne p1, p0, :cond_0

    const-string p0, "/patternsShort"

    goto :goto_0

    :cond_0
    const-string p0, "/patternsLong"

    :goto_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    sget-object p0, Landroid/icu/impl/number/CompactData$CompactType;->DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;

    if-ne p2, p0, :cond_1

    const-string p0, "/decimalFormat"

    goto :goto_1

    :cond_1
    const-string p0, "/currencyFormat"

    :goto_1
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getMultiplier(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 113
    :cond_0
    iget-byte v0, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    if-le p1, v0, :cond_1

    move p1, v0

    .line 116
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/number/CompactData;->multipliers:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public getPattern(ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 123
    :cond_0
    iget-byte v1, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    if-le p1, v1, :cond_1

    move p1, v1

    .line 126
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 127
    sget-object v2, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    if-eq p2, v2, :cond_2

    .line 129
    iget-object p0, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    sget-object p2, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-static {p1, p2}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result p1

    aget-object p0, p0, p1

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    const-string p1, "<USE FALLBACK>"

    if-ne p0, p1, :cond_3

    move-object p0, v0

    :cond_3
    return-object p0
.end method

.method public getUniquePatterns(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object p0, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string p0, "<USE FALLBACK>"

    .line 143
    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 144
    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public populate(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;)V
    .locals 7

    .line 48
    new-instance v0, Landroid/icu/impl/number/CompactData$CompactDataSink;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/CompactData$CompactDataSink;-><init>(Landroid/icu/impl/number/CompactData;)V

    const-string v1, "android/icu/impl/data/icudt60b"

    .line 49
    invoke-static {v1, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    const-string v2, "latn"

    .line 51
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 52
    sget-object v4, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne p3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 55
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-static {p2, p3, p4, v5}, Landroid/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 58
    iget-boolean v6, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    if-eqz v6, :cond_1

    if-nez v3, :cond_1

    .line 59
    invoke-static {v2, p3, p4, v5}, Landroid/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 62
    :cond_1
    iget-boolean p3, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    if-eqz p3, :cond_2

    if-nez v4, :cond_2

    .line 63
    sget-object p3, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {p2, p3, p4, v5}, Landroid/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 66
    :cond_2
    iget-boolean p2, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    if-eqz p2, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 67
    sget-object p2, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {v2, p2, p4, v5}, Landroid/icu/impl/number/CompactData;->getResourceBundleKey(Ljava/lang/String;Landroid/icu/text/CompactDecimalFormat$CompactStyle;Landroid/icu/impl/number/CompactData$CompactType;Ljava/lang/StringBuilder;)V

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 72
    :cond_3
    iget-boolean p0, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    if-nez p0, :cond_4

    return-void

    .line 73
    :cond_4
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not load compact decimal data for locale "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public populate(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    .line 91
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v3

    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    iget-object v4, p0, Landroid/icu/impl/number/CompactData;->patterns:[Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/icu/impl/number/CompactData;->getIndex(ILandroid/icu/impl/StandardPlural;)I

    move-result v3

    aput-object v2, v4, v3

    .line 95
    invoke-static {v2}, Landroid/icu/impl/number/CompactData;->countZeros(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 98
    iget-object v3, p0, Landroid/icu/impl/number/CompactData;->multipliers:[B

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 99
    iget-byte v2, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    if-le v1, v2, :cond_2

    .line 100
    iput-byte v1, p0, Landroid/icu/impl/number/CompactData;->largestMagnitude:B

    :cond_2
    const/4 v2, 0x0

    .line 102
    iput-boolean v2, p0, Landroid/icu/impl/number/CompactData;->isEmpty:Z

    goto :goto_0

    :cond_3
    return-void
.end method
