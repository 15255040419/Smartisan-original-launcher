.class final Landroid/icu/text/NormalizationTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NormalizationTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;
    }
.end annotation


# static fields
.field static final SOURCE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/text/Normalizer2;",
            "Landroid/icu/text/SourceTargetUtility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final norm2:Landroid/icu/text/Normalizer2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 78
    iput-object p2, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;Landroid/icu/text/NormalizationTransliterator$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NormalizationTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;)V

    return-void
.end method

.method static register()V
    .locals 4

    .line 31
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$1;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$1;-><init>()V

    const-string v1, "Any-NFC"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 37
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$2;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$2;-><init>()V

    const-string v1, "Any-NFD"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 43
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$3;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$3;-><init>()V

    const-string v1, "Any-NFKC"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 49
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$4;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$4;-><init>()V

    const-string v1, "Any-NFKD"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 55
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$5;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$5;-><init>()V

    const-string v1, "Any-FCD"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    .line 61
    new-instance v0, Landroid/icu/text/NormalizationTransliterator$6;

    invoke-direct {v0}, Landroid/icu/text/NormalizationTransliterator$6;-><init>()V

    const-string v1, "Any-FCC"

    invoke-static {v1, v0}, Landroid/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V

    const/4 v0, 0x1

    const-string v1, "NFD"

    const-string v2, "NFC"

    .line 67
    invoke-static {v2, v1, v0}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "NFKC"

    const-string v3, "NFKD"

    .line 68
    invoke-static {v2, v3, v0}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v2, "FCC"

    .line 69
    invoke-static {v2, v1, v0}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "FCD"

    .line 70
    invoke-static {v1, v1, v0}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 4

    .line 160
    sget-object v0, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    iget-object v2, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/SourceTargetUtility;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Landroid/icu/text/SourceTargetUtility;

    new-instance v2, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;

    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-direct {v2, v3}, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;-><init>(Landroid/icu/text/Normalizer2;)V

    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-direct {v1, v2, v3}, Landroid/icu/text/SourceTargetUtility;-><init>(Landroid/icu/text/Transform;Landroid/icu/text/Normalizer2;)V

    .line 165
    sget-object v2, Landroid/icu/text/NormalizationTransliterator;->SOURCE_CACHE:Ljava/util/Map;

    iget-object v3, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/icu/text/SourceTargetUtility;->addSourceTargetSet(Landroid/icu/text/Transliterator;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-void

    :catchall_0
    move-exception p0

    .line 167
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 7

    .line 88
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 89
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-lt v0, v1, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v4

    :cond_1
    const/4 v5, 0x0

    .line 111
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    move v5, v0

    .line 113
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v1, :cond_3

    .line 115
    iget-object v4, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v5}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    :goto_1
    if-ne v5, v1, :cond_4

    if-eqz p3, :cond_4

    .line 116
    iget-object v6, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v6, v4}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 123
    :cond_4
    iget-object v6, p0, Landroid/icu/text/NormalizationTransliterator;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v6, v2, v3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {v2, v3}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v0, v5, v6}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int v0, v5, v0

    sub-int/2addr v6, v0

    add-int/2addr v5, v6

    add-int/2addr v1, v6

    :cond_5
    move v0, v5

    if-lt v0, v1, :cond_1

    .line 135
    :goto_2
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 136
    iget p0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    iget p1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int p1, v1, p1

    add-int/2addr p0, p1

    iput p0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 137
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void
.end method
