.class public abstract Landroid/icu/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;,
        Landroid/icu/text/BreakIterator$BreakIteratorCache;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DONE:I = -0x1

.field public static final KIND_CHARACTER:I = 0x0

.field private static final KIND_COUNT:I = 0x5

.field public static final KIND_LINE:I = 0x2

.field public static final KIND_SENTENCE:I = 0x3

.field public static final KIND_TITLE:I = 0x4

.field public static final KIND_WORD:I = 0x1

.field public static final WORD_IDEO:I = 0x190

.field public static final WORD_IDEO_LIMIT:I = 0x1f4

.field public static final WORD_KANA:I = 0x12c

.field public static final WORD_KANA_LIMIT:I = 0x190

.field public static final WORD_LETTER:I = 0xc8

.field public static final WORD_LETTER_LIMIT:I = 0x12c

.field public static final WORD_NONE:I = 0x0

.field public static final WORD_NONE_LIMIT:I = 0x64

.field public static final WORD_NUMBER:I = 0x64

.field public static final WORD_NUMBER_LIMIT:I = 0xc8

.field private static final iterCache:[Landroid/icu/impl/CacheValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/icu/impl/CacheValue<",
            "*>;"
        }
    .end annotation
.end field

.field private static shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field private validLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "breakiterator"

    .line 219
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/BreakIterator;->DEBUG:Z

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/impl/CacheValue;

    .line 543
    sput-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    const-class v0, Landroid/icu/text/BreakIterator;

    monitor-enter v0

    .line 857
    :try_start_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 2

    const-class v0, Landroid/icu/text/BreakIterator;

    monitor-enter v0

    .line 869
    :try_start_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_2

    .line 826
    sget-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 827
    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->createBreakInstance()Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0

    .line 836
    :cond_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->createBreakIterator(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 838
    new-instance v1, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/BreakIterator;)V

    .line 839
    sget-object p0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    invoke-static {v1}, Landroid/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;

    move-result-object v1

    aput-object v1, p0, p1

    .line 840
    instance-of p0, v0, Landroid/icu/text/RuleBasedBreakIterator;

    if-eqz p0, :cond_1

    .line 841
    move-object p0, v0

    check-cast p0, Landroid/icu/text/RuleBasedBreakIterator;

    .line 842
    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->setBreakType(I)V

    :cond_1
    return-object v0

    .line 824
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Specified locale is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCharacterInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    .line 627
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getCharacterInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x0

    .line 653
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 1

    .line 640
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getLineInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    .line 589
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getLineInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x2

    .line 615
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getLineInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 1

    .line 602
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getSentenceInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    .line 664
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x3

    .line 686
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 1

    .line 675
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method private static getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    .locals 2

    .line 905
    sget-object v0, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "android.icu.text.BreakIteratorFactory"

    .line 907
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    sput-object v0, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 916
    sget-boolean v1, Landroid/icu/text/BreakIterator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 917
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 919
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 912
    throw v0

    .line 923
    :cond_1
    :goto_0
    sget-object v0, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    return-object v0
.end method

.method public static getTitleInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    .line 699
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getTitleInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x4

    .line 726
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getTitleInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 1

    .line 713
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getWordInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    .line 553
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;
    .locals 1

    const/4 v0, 0x1

    .line 577
    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;
    .locals 1

    .line 565
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/BreakIterator;->getBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method public static registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 2

    .line 766
    sget-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    aget-object v1, v0, p2

    if-eqz v1, :cond_0

    .line 767
    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator$BreakIteratorCache;

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    sget-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 774
    :cond_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getShim()Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static registerInstance(Landroid/icu/text/BreakIterator;Ljava/util/Locale;I)Ljava/lang/Object;
    .locals 0

    .line 745
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/icu/text/BreakIterator;->registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p0, :cond_2

    .line 798
    sget-object v0, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 804
    sget-object v0, Landroid/icu/text/BreakIterator;->iterCache:[Landroid/icu/impl/CacheValue;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    :cond_0
    sget-object v0, Landroid/icu/text/BreakIterator;->shim:Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;

    invoke-virtual {v0, p0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    .line 787
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "registry key must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 238
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 242
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract current()I
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    .line 950
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    .line 951
    iget-object p0, p0, Landroid/icu/text/BreakIterator;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/text/BreakIterator;->validLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object p0
.end method

.method public getRuleStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRuleStatusVec([I)I
    .locals 0

    if-eqz p1, :cond_0

    .line 462
    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 463
    aput p0, p1, p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public isBoundary(I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 365
    invoke-virtual {p0, v1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result p0

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public preceding(I)I
    .locals 2

    .line 343
    invoke-virtual {p0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    :goto_0
    if-lt v0, p1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 345
    invoke-virtual {p0}, Landroid/icu/text/BreakIterator;->previous()I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public abstract previous()I
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne v2, v0, :cond_2

    .line 979
    iput-object p1, p0, Landroid/icu/text/BreakIterator;->validLocale:Landroid/icu/util/ULocale;

    .line 980
    iput-object p2, p0, Landroid/icu/text/BreakIterator;->actualLocale:Landroid/icu/util/ULocale;

    return-void

    .line 974
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 503
    new-instance v0, Landroid/icu/impl/CSCharacterIterator;

    invoke-direct {v0, p1}, Landroid/icu/impl/CSCharacterIterator;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 490
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
