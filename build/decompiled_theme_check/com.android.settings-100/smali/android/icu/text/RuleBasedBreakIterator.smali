.class public Landroid/icu/text/RuleBasedBreakIterator;
.super Landroid/icu/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RuleBasedBreakIterator$BreakCache;,
        Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;,
        Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final RBBI_DEBUG_ARG:Ljava/lang/String; = "rbbi"

.field private static final RBBI_END:I = 0x2

.field private static final RBBI_RUN:I = 0x1

.field private static final RBBI_START:I = 0x0

.field private static final START_STATE:I = 0x1

.field private static final STOP_STATE:I = 0x0

.field private static final TRACE:Z

.field static final fDebugEnv:Ljava/lang/String;

.field private static final gAllBreakEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/LanguageBreakEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

.field private static final kMaxLookaheads:I = 0x8


# instance fields
.field private fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

.field private fBreakEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/LanguageBreakEngine;",
            ">;"
        }
    .end annotation
.end field

.field private fBreakType:I

.field private fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

.field private fDictionaryCharCount:I

.field private fDone:Z

.field private fLookAheadMatches:Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

.field private fPosition:I

.field fRData:Landroid/icu/text/RBBIDataWrapper;

.field private fRuleStatusIndex:I

.field private fText:Ljava/text/CharacterIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "rbbi"

    .line 270
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    .line 300
    new-instance v1, Landroid/icu/text/UnhandledBreakEngine;

    invoke-direct {v1}, Landroid/icu/text/UnhandledBreakEngine;-><init>()V

    sput-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    .line 302
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-object v0, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Landroid/icu/text/BreakIterator;-><init>()V

    .line 217
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 248
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-direct {v0, p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;-><init>(Landroid/icu/text/RuleBasedBreakIterator;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    .line 260
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-direct {v0, p0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;-><init>(Landroid/icu/text/RuleBasedBreakIterator;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    const/4 v0, 0x1

    .line 278
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    .line 772
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 51
    sget-object v0, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    monitor-enter v0

    .line 52
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    .line 106
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    invoke-static {p1, v0}, Landroid/icu/text/RuleBasedBreakIterator;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 113
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuleBasedBreakIterator rule compilation internal error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p1
.end method

.method private static CISetIndex32(Ljava/text/CharacterIterator;I)I
    .locals 1

    .line 1122
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1123
    invoke-interface {p0}, Ljava/text/CharacterIterator;->first()C

    goto :goto_0

    .line 1124
    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1125
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_0

    .line 1126
    :cond_1
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1127
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1128
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    .line 1131
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$000(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    return-object p0
.end method

.method static synthetic access$100(Landroid/icu/text/RuleBasedBreakIterator;I)Landroid/icu/text/LanguageBreakEngine;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->getLanguageBreakEngine(I)Landroid/icu/text/LanguageBreakEngine;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/icu/text/RuleBasedBreakIterator;)I
    .locals 0

    .line 41
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    return p0
.end method

.method static synthetic access$302(Landroid/icu/text/RuleBasedBreakIterator;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    return p1
.end method

.method static synthetic access$402(Landroid/icu/text/RuleBasedBreakIterator;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    return p1
.end method

.method static synthetic access$500(Landroid/icu/text/RuleBasedBreakIterator;)I
    .locals 0

    .line 41
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    return p0
.end method

.method static synthetic access$502(Landroid/icu/text/RuleBasedBreakIterator;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    return p1
.end method

.method static synthetic access$600(Landroid/icu/text/RuleBasedBreakIterator;I)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->handlePrevious(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroid/icu/text/RuleBasedBreakIterator;)I
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->handleNext()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    return-object p0
.end method

.method static synthetic access$900(Landroid/icu/text/RuleBasedBreakIterator;)I
    .locals 0

    .line 41
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    return p0
.end method

.method protected static final checkOffset(ILjava/text/CharacterIterator;)V
    .locals 1

    .line 481
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-lt p0, v0, :cond_0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p1

    if-gt p0, p1, :cond_0

    return-void

    .line 482
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    invoke-static {p0, p1}, Landroid/icu/text/RBBIRuleBuilder;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static getInstanceFromCompiledRules(Ljava/io/InputStream;)Landroid/icu/text/RuleBasedBreakIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    .line 72
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    return-object v0
.end method

.method public static getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Landroid/icu/text/RuleBasedBreakIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    .line 95
    invoke-static {p0}, Landroid/icu/text/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;

    move-result-object p0

    iput-object p0, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    return-object v0
.end method

.method private getLanguageBreakEngine(I)Landroid/icu/text/LanguageBreakEngine;
    .locals 4

    .line 654
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/LanguageBreakEngine;

    .line 655
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    invoke-interface {v1, p1, v2}, Landroid/icu/text/LanguageBreakEngine;->handles(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 660
    :cond_1
    sget-object v0, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    monitor-enter v0

    .line 664
    :try_start_0
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/LanguageBreakEngine;

    .line 665
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    invoke-interface {v2, p1, v3}, Landroid/icu/text/LanguageBreakEngine;->handles(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 666
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    monitor-exit v0

    return-object v2

    :cond_3
    const/16 v1, 0x100a

    .line 672
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x16

    const/16 v3, 0x11

    if-eq v1, v2, :cond_4

    const/16 v2, 0x14

    if-ne v1, v2, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    const/4 v2, 0x1

    if-eq v1, v3, :cond_c

    const/16 v3, 0x12

    if-eq v1, v3, :cond_a

    const/16 v2, 0x17

    if-eq v1, v2, :cond_9

    const/16 v2, 0x18

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_7

    const/16 v2, 0x26

    if-eq v1, v2, :cond_6

    .line 712
    :try_start_1
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/icu/text/UnhandledBreakEngine;->handleChar(II)V

    .line 713
    sget-object p1, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    goto :goto_0

    .line 683
    :cond_6
    new-instance p1, Landroid/icu/text/ThaiBreakEngine;

    invoke-direct {p1}, Landroid/icu/text/ThaiBreakEngine;-><init>()V

    goto :goto_0

    .line 689
    :cond_7
    new-instance p1, Landroid/icu/text/BurmeseBreakEngine;

    invoke-direct {p1}, Landroid/icu/text/BurmeseBreakEngine;-><init>()V

    goto :goto_0

    .line 686
    :cond_8
    new-instance p1, Landroid/icu/text/LaoBreakEngine;

    invoke-direct {p1}, Landroid/icu/text/LaoBreakEngine;-><init>()V

    goto :goto_0

    .line 692
    :cond_9
    new-instance p1, Landroid/icu/text/KhmerBreakEngine;

    invoke-direct {p1}, Landroid/icu/text/KhmerBreakEngine;-><init>()V

    goto :goto_0

    .line 704
    :cond_a
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 705
    new-instance p1, Landroid/icu/text/CjkBreakEngine;

    invoke-direct {p1, v2}, Landroid/icu/text/CjkBreakEngine;-><init>(Z)V

    goto :goto_0

    .line 707
    :cond_b
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/icu/text/UnhandledBreakEngine;->handleChar(II)V

    .line 708
    sget-object p1, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    goto :goto_0

    .line 695
    :cond_c
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 696
    new-instance p1, Landroid/icu/text/CjkBreakEngine;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/icu/text/CjkBreakEngine;-><init>(Z)V

    goto :goto_0

    .line 699
    :cond_d
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/icu/text/UnhandledBreakEngine;->handleChar(II)V

    .line 700
    sget-object p1, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_e

    .line 720
    :try_start_2
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    if-eq p1, v1, :cond_e

    .line 721
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_e
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 725
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private handleNext()I
    .locals 18

    move-object/from16 v0, p0

    .line 798
    sget-boolean v1, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v1, :cond_0

    .line 799
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Handle Next   pos      char  state category"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 804
    iput v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    .line 805
    iput v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 808
    iget-object v2, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 809
    iget-object v3, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/Trie2;

    .line 811
    iget-object v4, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v4, v4, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    .line 812
    iget v5, v0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    .line 813
    invoke-interface {v2, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 817
    invoke-interface {v2}, Ljava/text/CharacterIterator;->current()C

    move-result v6

    const v7, 0x7fffffff

    const v8, 0xd800

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-lt v6, v8, :cond_1

    .line 819
    invoke-static {v2, v6}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 821
    iput-boolean v10, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    return v9

    .line 828
    :cond_1
    iget-object v11, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v11, v10}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v11

    .line 830
    iget-object v13, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v13, v4}, Landroid/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    move-result v13

    const/4 v14, 0x2

    and-int/2addr v13, v14

    const/4 v15, 0x6

    const/4 v12, 0x7

    const/16 v1, 0xa

    const/4 v9, 0x5

    const-string v8, "            "

    if-eqz v13, :cond_3

    .line 835
    sget-boolean v13, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v13, :cond_2

    .line 836
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v14

    invoke-static {v14, v9}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 837
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6, v1}, Landroid/icu/text/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 838
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v12}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    invoke-static {v14, v15}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v7, 0x0

    const/16 v16, 0x2

    goto :goto_0

    :cond_3
    move v7, v10

    const/16 v16, 0x3

    .line 841
    :goto_0
    iget-object v12, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v12}, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->reset()V

    move v12, v5

    move v13, v11

    move v11, v7

    move v7, v6

    move v6, v10

    :goto_1
    if-eqz v6, :cond_f

    const v14, 0x7fffffff

    if-ne v7, v14, :cond_5

    const/4 v14, 0x2

    if-ne v11, v14, :cond_4

    goto/16 :goto_4

    :cond_4
    move/from16 v16, v10

    move v6, v15

    const v9, 0xd800

    const/4 v11, 0x2

    const/4 v15, 0x7

    move v10, v1

    goto/16 :goto_3

    :cond_5
    if-ne v11, v10, :cond_9

    .line 866
    invoke-virtual {v3, v7}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v14

    int-to-short v14, v14

    and-int/lit16 v15, v14, 0x4000

    if-eqz v15, :cond_6

    .line 874
    iget v15, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    add-int/2addr v15, v10

    iput v15, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    and-int/lit16 v14, v14, -0x4001

    int-to-short v14, v14

    .line 879
    :cond_6
    sget-boolean v15, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v15, :cond_7

    .line 880
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    invoke-static {v1, v9}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 881
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Landroid/icu/text/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 882
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x7

    invoke-static {v6, v15}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x6

    invoke-static {v14, v6}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v10, v1

    const/4 v6, 0x6

    const/4 v15, 0x7

    .line 888
    :goto_2
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    const v9, 0xd800

    if-lt v1, v9, :cond_8

    .line 890
    invoke-static {v2, v1}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v1

    :cond_8
    move v7, v1

    move/from16 v16, v14

    goto :goto_3

    :cond_9
    move v10, v1

    move v6, v15

    const v9, 0xd800

    const/4 v15, 0x7

    const/4 v11, 0x1

    :goto_3
    add-int/lit8 v13, v13, 0x4

    add-int v13, v13, v16

    .line 898
    aget-short v1, v4, v13

    .line 899
    iget-object v13, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v13, v1}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v13

    add-int/lit8 v14, v13, 0x0

    .line 901
    aget-short v6, v4, v14

    const v9, 0x10ffff

    const/high16 v10, 0x10000

    const/4 v15, -0x1

    if-ne v6, v15, :cond_b

    .line 903
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v6

    if-lt v7, v10, :cond_a

    if-gt v7, v9, :cond_a

    add-int/lit8 v6, v6, -0x1

    :cond_a
    add-int/lit8 v12, v13, 0x2

    .line 911
    aget-short v12, v4, v12

    iput v12, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    move v12, v6

    .line 914
    :cond_b
    aget-short v6, v4, v14

    if-lez v6, :cond_c

    .line 917
    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v14, v6}, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->getPosition(I)I

    move-result v6

    if-ltz v6, :cond_c

    const/4 v14, 0x2

    add-int/2addr v13, v14

    .line 919
    aget-short v1, v4, v13

    iput v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    .line 920
    iput v6, v0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    return v6

    :cond_c
    const/4 v14, 0x2

    add-int/lit8 v6, v13, 0x1

    .line 925
    aget-short v6, v4, v6

    if-eqz v6, :cond_e

    .line 928
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v17

    if-lt v7, v10, :cond_d

    if-gt v7, v9, :cond_d

    add-int/lit8 v17, v17, -0x1

    :cond_d
    move/from16 v9, v17

    .line 934
    iget-object v10, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v10, v6, v9}, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->setPosition(II)V

    :cond_e
    move v6, v1

    const/16 v1, 0xa

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v15, 0x6

    goto/16 :goto_1

    :cond_f
    :goto_4
    if-ne v12, v5, :cond_11

    .line 947
    sget-boolean v1, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v1, :cond_10

    .line 948
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Iterator did not move. Advancing by 1."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 950
    :cond_10
    invoke-interface {v2, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 951
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 952
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v12

    const/4 v1, 0x0

    .line 953
    iput v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    .line 959
    :cond_11
    iput v12, v0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    .line 961
    sget-boolean v0, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v0, :cond_12

    .line 962
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_12
    return v12
.end method

.method private handlePrevious(I)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 978
    iget-object v2, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 989
    :cond_0
    iget-object v2, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v2}, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->reset()V

    .line 990
    iget-object v2, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    .line 991
    iget-object v4, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v4, v1}, Landroid/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    .line 992
    iget-object v4, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v4}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v1, v4, :cond_1

    return v5

    .line 998
    :cond_1
    iget-object v4, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v4}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v4

    .line 1002
    iget-object v6, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v6

    const/4 v8, 0x3

    .line 1005
    iget-object v9, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v9, v2}, Landroid/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    move-result v9

    const/4 v10, 0x2

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    move v8, v10

    goto :goto_0

    :cond_2
    move v3, v7

    .line 1010
    :goto_0
    sget-boolean v9, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v9, :cond_3

    .line 1011
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Handle Prev   pos   char  state category "

    invoke-virtual {v9, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    move v11, v1

    move v9, v7

    :goto_1
    const v12, 0x7fffffff

    if-ne v4, v12, :cond_5

    if-ne v3, v10, :cond_4

    goto/16 :goto_3

    :cond_4
    move v8, v7

    move v3, v10

    :cond_5
    if-ne v3, v7, :cond_6

    .line 1033
    iget-object v8, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v8, v8, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/Trie2;

    invoke-virtual {v8, v4}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v8

    int-to-short v8, v8

    and-int/lit16 v8, v8, -0x4001

    .line 1037
    :cond_6
    sget-boolean v12, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v12, :cond_8

    .line 1038
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "             "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v14}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "   "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/16 v12, 0x20

    const-string v13, "  "

    const-string v14, " "

    if-gt v12, v4, :cond_7

    const/16 v12, 0x7f

    if-ge v4, v12, :cond_7

    .line 1040
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 1042
    :cond_7
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1044
    :goto_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v8

    .line 1049
    aget-short v9, v2, v6

    .line 1050
    iget-object v6, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {v6, v9}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    move-result v6

    add-int/lit8 v10, v6, 0x0

    .line 1052
    aget-short v12, v2, v10

    if-ne v12, v5, :cond_9

    .line 1055
    iget-object v11, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v11}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v11

    .line 1059
    :cond_9
    aget-short v10, v2, v10

    if-lez v10, :cond_a

    .line 1062
    iget-object v12, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v12, v10}, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->getPosition(I)I

    move-result v10

    if-ltz v10, :cond_a

    move v11, v10

    goto :goto_3

    :cond_a
    add-int/lit8 v10, v6, 0x1

    .line 1068
    aget-short v10, v2, v10

    if-eqz v10, :cond_b

    .line 1071
    iget-object v12, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v12

    .line 1072
    iget-object v13, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-virtual {v13, v10, v12}, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;->setPosition(II)V

    :cond_b
    if-nez v9, :cond_e

    :goto_3
    if-ne v11, v1, :cond_c

    .line 1099
    iget-object v2, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v2, v1}, Landroid/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    .line 1100
    iget-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v1}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    .line 1101
    iget-object v0, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v11

    .line 1104
    :cond_c
    sget-boolean v0, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v0, :cond_d

    .line 1105
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    return v11

    :cond_e
    if-ne v3, v7, :cond_f

    .line 1083
    iget-object v4, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v4}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v4

    goto :goto_4

    :cond_f
    if-nez v3, :cond_10

    move v3, v7

    :cond_10
    :goto_4
    const/4 v10, 0x2

    goto/16 :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .line 132
    invoke-super {p0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedBreakIterator;

    .line 133
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v1, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 136
    :cond_0
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    monitor-enter v1

    .line 137
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/List;

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    new-instance v1, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    invoke-direct {v1}, Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;-><init>()V

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:Landroid/icu/text/RuleBasedBreakIterator$LookAheadResults;

    .line 140
    new-instance v1, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;-><init>(Landroid/icu/text/RuleBasedBreakIterator;Landroid/icu/text/RuleBasedBreakIterator$BreakCache;)V

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    .line 141
    new-instance v1, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-direct {v1, v0, p0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;-><init>(Landroid/icu/text/RuleBasedBreakIterator;Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;)V

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    return-object v0

    :catchall_0
    move-exception p0

    .line 138
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public current()I
    .locals 1

    .line 528
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public dump(Ljava/io/PrintStream;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 320
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 322
    :cond_0
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    invoke-virtual {p0, p1}, Landroid/icu/text/RBBIDataWrapper;->dump(Ljava/io/PrintStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 159
    :cond_1
    :try_start_0
    check-cast p1, Landroid/icu/text/RuleBasedBreakIterator;

    .line 160
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v3, p1, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-nez v2, :cond_3

    :cond_2
    return v0

    .line 163
    :cond_3
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 167
    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v2, :cond_5

    iget-object v2, p1, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v2, :cond_5

    return v1

    .line 170
    :cond_5
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v2, :cond_7

    iget-object v2, p1, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    iget-object v3, p1, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    .line 173
    :cond_6
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    iget p1, p1, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_7

    move v0, v1

    :catch_0
    :cond_7
    :goto_0
    return v0
.end method

.method public first()I
    .locals 2

    .line 354
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 357
    :cond_0
    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    .line 358
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 359
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    .line 362
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->current()I

    .line 364
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    return p0
.end method

.method public following(I)I
    .locals 1

    .line 442
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 443
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    move-result p0

    return p0

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    move-result p1

    .line 449
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->following(I)V

    .line 450
    iget-boolean p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_0
    return p0
.end method

.method getBreakType()I
    .locals 0

    .line 639
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    return p0
.end method

.method public getRuleStatus()I
    .locals 3

    .line 562
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v1, v1, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 563
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object p0, p0, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    aget p0, p0, v0

    return p0
.end method

.method public getRuleStatusVec([I)I
    .locals 5

    .line 589
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v0, v0, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    aget v0, v0, v1

    if-eqz p1, :cond_0

    .line 591
    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 593
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 0

    .line 608
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 200
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    iget-object p0, p0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isBoundary(I)Z
    .locals 3

    .line 498
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {p1, v0}, Landroid/icu/text/RuleBasedBreakIterator;->checkOffset(ILjava/text/CharacterIterator;)V

    .line 503
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    move-result v0

    .line 506
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->current()I

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    move v2, p1

    :cond_1
    if-nez v2, :cond_2

    .line 513
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    :cond_2
    return v2
.end method

.method public last()I
    .locals 1

    .line 374
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 377
    :cond_0
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    .line 378
    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator;->isBoundary(I)Z

    .line 380
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    return v0
.end method

.method public next()I
    .locals 1

    .line 418
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->next()V

    .line 419
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_0
    return p0
.end method

.method public next(I)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    :goto_0
    if-lez p1, :cond_2

    if-eq v1, v0, :cond_2

    .line 400
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    :goto_1
    if-gez p1, :cond_2

    if-eq v1, v0, :cond_2

    .line 404
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 407
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    move-result v1

    :cond_2
    return v1
.end method

.method public preceding(I)I
    .locals 1

    .line 462
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 464
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 465
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    move-result p0

    return p0

    .line 471
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->preceding(I)V

    .line 472
    iget-boolean p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz p1, :cond_2

    const/4 p0, -0x1

    goto :goto_0

    :cond_2
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_0
    return p0

    .line 463
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->last()I

    move-result p0

    return p0
.end method

.method public previous()I
    .locals 1

    .line 428
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    .line 429
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_0
    return p0
.end method

.method setBreakType(I)V
    .locals 0

    .line 632
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 619
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset(II)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset()V

    .line 623
    :goto_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->reset()V

    .line 624
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 625
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 187
    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    if-eqz p0, :cond_0

    .line 188
    iget-object p0, p0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
