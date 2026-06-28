.class public final Landroid/icu/impl/UCaseProps;
.super Ljava/lang/Object;
.source "UCaseProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCaseProps$ContextIterator;,
        Landroid/icu/impl/UCaseProps$IsAcceptable;
    }
.end annotation


# static fields
.field private static final ABOVE:I = 0x40

.field private static final CLOSURE_MAX_LENGTH:I = 0xf

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "ucase.icu"

.field private static final DATA_NAME:Ljava/lang/String; = "ucase"

.field private static final DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final DELTA_SHIFT:I = 0x7

.field private static final DOT_MASK:I = 0x60

.field private static final EXCEPTION:I = 0x10

.field private static final EXC_CLOSURE:I = 0x6

.field private static final EXC_CONDITIONAL_FOLD:I = 0x8000

.field private static final EXC_CONDITIONAL_SPECIAL:I = 0x4000

.field private static final EXC_DOT_SHIFT:I = 0x7

.field private static final EXC_DOUBLE_SLOTS:I = 0x100

.field private static final EXC_FOLD:I = 0x1

.field private static final EXC_FULL_MAPPINGS:I = 0x7

.field private static final EXC_LOWER:I = 0x0

.field private static final EXC_SHIFT:I = 0x5

.field private static final EXC_TITLE:I = 0x3

.field private static final EXC_UPPER:I = 0x2

.field private static final FMT:I = 0x63415345

.field private static final FOLD_CASE_OPTIONS_MASK:I = 0x7

.field private static final FULL_LOWER:I = 0xf

.field static final IGNORABLE:I = 0x4

.field public static final INSTANCE:Landroid/icu/impl/UCaseProps;

.field private static final IX_EXC_LENGTH:I = 0x3

.field private static final IX_TOP:I = 0x10

.field private static final IX_TRIE_SIZE:I = 0x2

.field private static final IX_UNFOLD_LENGTH:I = 0x4

.field public static final LOC_DUTCH:I = 0x5

.field static final LOC_GREEK:I = 0x4

.field private static final LOC_LITHUANIAN:I = 0x3

.field public static final LOC_ROOT:I = 0x1

.field private static final LOC_TURKISH:I = 0x2

.field public static final LOWER:I = 0x1

.field public static final MAX_STRING_LENGTH:I = 0x1f

.field public static final NONE:I = 0x0

.field private static final OTHER_ACCENT:I = 0x60

.field private static final SENSITIVE:I = 0x8

.field private static final SOFT_DOTTED:I = 0x20

.field public static final TITLE:I = 0x3

.field public static final TYPE_MASK:I = 0x3

.field private static final UNFOLD_ROWS:I = 0x0

.field private static final UNFOLD_ROW_WIDTH:I = 0x1

.field private static final UNFOLD_STRING_WIDTH:I = 0x2

.field public static final UPPER:I = 0x2

.field public static final dummyStringBuilder:Ljava/lang/StringBuilder;

.field private static final flagsOffset:[B

.field private static final iDot:Ljava/lang/String; = "i\u0307"

.field private static final iDotAcute:Ljava/lang/String; = "i\u0307\u0301"

.field private static final iDotGrave:Ljava/lang/String; = "i\u0307\u0300"

.field private static final iDotTilde:Ljava/lang/String; = "i\u0307\u0303"

.field private static final iOgonekDot:Ljava/lang/String; = "\u012f\u0307"

.field private static final jDot:Ljava/lang/String; = "j\u0307"


# instance fields
.field private exceptions:Ljava/lang/String;

.field private indexes:[I

.field private trie:Landroid/icu/impl/Trie2_16;

.field private unfold:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 127
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/UCaseProps;->flagsOffset:[B

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1466
    :try_start_0
    new-instance v0, Landroid/icu/impl/UCaseProps;

    invoke-direct {v0}, Landroid/icu/impl/UCaseProps;-><init>()V

    sput-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1468
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x5t
        0x6t
        0x6t
        0x7t
        0x6t
        0x7t
        0x7t
        0x8t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ucase.icu"

    .line 46
    invoke-static {v0}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Landroid/icu/impl/UCaseProps;->readData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static final getCaseLocale(Landroid/icu/util/ULocale;)I
    .locals 0

    .line 625
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final getCaseLocale(Ljava/lang/String;)I
    .locals 7

    .line 633
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    const-string v0, "en"

    .line 634
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x74

    if-le v0, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "tr"

    .line 636
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "az"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "el"

    .line 638
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "lt"

    .line 640
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    const-string v0, "nl"

    .line 642
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v1

    :cond_4
    :goto_0
    return v5

    :cond_5
    :goto_1
    return v3

    .line 645
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_b

    const-string/jumbo v0, "tur"

    .line 646
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "aze"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "ell"

    .line 648
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    :cond_8
    const-string v0, "lit"

    .line 650
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v4

    :cond_9
    const-string v0, "nld"

    .line 652
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v1

    :cond_a
    :goto_2
    return v5

    :cond_b
    return v3
.end method

.method public static final getCaseLocale(Ljava/util/Locale;)I
    .locals 0

    .line 622
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final getDelta(I)I
    .locals 0

    int-to-short p0, p0

    shr-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private static final getExceptionsOffset(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private final getSlotValue(III)I
    .locals 1

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 179
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    add-int/2addr p3, p1

    .line 180
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    .line 183
    iget-object p1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    .line 184
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method private final getSlotValueAndOffset(III)J
    .locals 2

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 165
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    add-int/2addr p3, p1

    .line 166
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-long p0, p0

    move p2, p3

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    .line 169
    iget-object p1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    .line 170
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    int-to-long p0, p0

    or-long/2addr p0, v0

    :goto_0
    int-to-long p2, p2

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private static final getTypeAndIgnorableFromProps(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method private static final getTypeFromProps(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static final hasSlot(II)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 667
    :cond_0
    invoke-interface {p1, p2}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :goto_0
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result p2

    if-ltz p2, :cond_2

    .line 668
    invoke-virtual {p0, p2}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result p2

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private final isFollowedByDotAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 788
    invoke-interface {p1, v1}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    if-ltz v2, :cond_3

    const/16 v3, 0x307

    if-ne v2, v3, :cond_2

    return v1

    .line 792
    :cond_2
    invoke-virtual {p0, v2}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    const/16 v3, 0x60

    if-eq v2, v3, :cond_1

    :cond_3
    return v0
.end method

.method private final isFollowedByMoreAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 767
    invoke-interface {p1, v1}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v2

    if-ltz v2, :cond_3

    .line 768
    invoke-virtual {p0, v2}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x60

    if-eq v2, v3, :cond_1

    :cond_3
    return v0
.end method

.method private final isPrecededBySoftDotted(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 690
    invoke-interface {p1, v1}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    if-ltz v1, :cond_3

    .line 691
    invoke-virtual {p0, v1}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    :cond_3
    return v0
.end method

.method private final isPrecededBy_I(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 745
    invoke-interface {p1, v1}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v1

    if-ltz v1, :cond_3

    const/16 v2, 0x49

    if-ne v1, v2, :cond_2

    const/4 p0, 0x1

    return p0

    .line 749
    :cond_2
    invoke-virtual {p0, v1}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    :cond_3
    return v0
.end method

.method private static final propsHasException(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final readData(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Landroid/icu/impl/UCaseProps$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/UCaseProps$IsAcceptable;-><init>(Landroid/icu/impl/UCaseProps$1;)V

    const v1, 0x63415345

    invoke-static {p1, v1, v0}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 59
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    .line 61
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 63
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    .line 68
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 69
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v1

    if-gt v1, v0, :cond_3

    sub-int/2addr v0, v1

    .line 74
    invoke-static {p1, v0}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 77
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 79
    invoke-static {p1, v0, v2}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    .line 83
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    if-lez v0, :cond_2

    .line 85
    invoke-static {p1, v0, v2}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    :cond_2
    return-void

    .line 71
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "ucase.icu: not enough bytes for the trie"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "indexes[0] too small in ucase.icu"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final slotOffset(II)B
    .locals 2

    .line 150
    sget-object v0, Landroid/icu/impl/UCaseProps;->flagsOffset:[B

    const/4 v1, 0x1

    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    and-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method private final strcmpMax(Ljava/lang/String;II)I
    .locals 6

    .line 371
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p3, v0

    const/4 v1, 0x0

    move v2, v0

    move v0, p2

    move p2, v1

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 375
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 376
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    add-int/lit8 v5, v0, 0x1

    aget-char v0, v4, v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sub-int/2addr p2, v0

    if-eqz p2, :cond_1

    return p2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_4

    if-eqz p3, :cond_3

    .line 387
    aget-char p0, v4, v5

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    neg-int p0, p3

    return p0

    :cond_3
    :goto_1
    return v1

    :cond_4
    move p2, v3

    move v0, v5

    goto :goto_0
.end method

.method private final toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I
    .locals 8

    .line 986
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 987
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 988
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p0

    if-ne p0, v2, :cond_0

    .line 989
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result p0

    add-int/2addr p0, p1

    goto/16 :goto_2

    :cond_0
    move p0, p1

    goto/16 :goto_2

    .line 992
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 993
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v1, v0, 0x4000

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    if-ne p4, v5, :cond_2

    const/16 p3, 0x69

    if-ne p1, p3, :cond_2

    const/16 p0, 0x130

    return p0

    :cond_2
    if-ne p4, v4, :cond_5

    const/16 p3, 0x307

    if-ne p1, p3, :cond_5

    .line 1013
    invoke-direct {p0, p2}, Landroid/icu/impl/UCaseProps;->isPrecededBySoftDotted(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p2, 0x7

    .line 1027
    invoke-static {v0, p2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1028
    invoke-direct {p0, v0, p2, v3}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v6

    long-to-int p2, v6

    const p4, 0xffff

    and-int/2addr p2, p4

    const/16 p4, 0x20

    shr-long/2addr v6, p4

    long-to-int p4, v6

    add-int/2addr p4, v2

    and-int/lit8 v1, p2, 0xf

    add-int/2addr p4, v1

    shr-int/lit8 p2, p2, 0x4

    and-int/lit8 v1, p2, 0xf

    add-int/2addr p4, v1

    shr-int/lit8 p2, p2, 0x4

    if-eqz p5, :cond_4

    goto :goto_0

    :cond_4
    and-int/lit8 v1, p2, 0xf

    add-int/2addr p4, v1

    shr-int/lit8 p2, p2, 0x4

    :goto_0
    and-int/lit8 p2, p2, 0xf

    if-eqz p2, :cond_5

    .line 1051
    :try_start_0
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int p1, p4, p2

    invoke-interface {p3, p0, p4, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p0

    .line 1056
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    if-nez p5, :cond_6

    .line 1061
    invoke-static {v0, v4}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    .line 1063
    :cond_6
    invoke-static {v0, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_8

    move v4, v5

    .line 1069
    :goto_1
    invoke-direct {p0, v0, v4, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p0

    :goto_2
    if-ne p0, p1, :cond_7

    not-int p0, p0

    :cond_7
    return p0

    :cond_8
    not-int p0, p1

    return p0
.end method


# virtual methods
.method public final addCaseClosure(ILandroid/icu/text/UnicodeSet;)V
    .locals 7

    const/16 v0, 0x69

    const/16 v1, 0x49

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_8

    const/16 v0, 0x130

    if-eq p1, v0, :cond_7

    const/16 v0, 0x131

    if-eq p1, v0, :cond_6

    .line 283
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 284
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p0

    if-eqz p0, :cond_6

    .line 287
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result p0

    if-eqz p0, :cond_6

    add-int/2addr p1, p0

    .line 289
    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_3

    .line 297
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result p1

    .line 299
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    .line 306
    invoke-static {p1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    invoke-direct {p0, p1, v2, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v3

    .line 309
    invoke-virtual {p2, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    .line 314
    invoke-static {p1, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_3

    .line 316
    invoke-direct {p0, p1, v2, v1}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v2

    long-to-int v0, v2

    and-int/lit8 v0, v0, 0xf

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    const/4 v3, 0x7

    .line 325
    invoke-static {p1, v3}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 327
    invoke-direct {p0, p1, v3, v1}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v0

    long-to-int p1, v0

    shr-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const v1, 0xffff

    and-int/2addr p1, v1

    and-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 v1, p1, 0xf

    if-eqz v1, :cond_4

    .line 342
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/2addr v1, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move v0, v1

    :cond_4
    shr-int/lit8 p1, p1, 0x4

    and-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    :cond_5
    add-int/2addr v2, v0

    :goto_2
    if-ge v0, v2, :cond_6

    .line 358
    iget-object p1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 359
    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 357
    invoke-static {p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_2

    :cond_6
    :goto_3
    return-void

    :cond_7
    const-string p0, "i\u0307"

    .line 273
    invoke-virtual {p2, p0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    return-void

    .line 269
    :cond_8
    invoke-virtual {p2, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    return-void

    .line 266
    :cond_9
    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public final addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 2

    .line 101
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 103
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v1, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_0

    .line 104
    iget v0, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addStringCaseClosure(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z
    .locals 11

    .line 408
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 411
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    return v1

    .line 423
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    aget-char v4, v3, v1

    .line 424
    aget-char v5, v3, v2

    const/4 v6, 0x2

    .line 425
    aget-char v3, v3, v6

    if-le v0, v3, :cond_2

    return v1

    :cond_2
    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_6

    add-int v7, v0, v4

    .line 437
    div-int/2addr v7, v6

    add-int/lit8 v8, v7, 0x1

    mul-int v9, v8, v5

    .line 439
    invoke-direct {p0, p1, v9, v3}, Landroid/icu/impl/UCaseProps;->strcmpMax(Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_4

    :goto_1
    if-ge v3, v5, :cond_3

    .line 445
    iget-object p1, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    add-int v0, v9, v3

    aget-char v0, p1, v0

    if-eqz v0, :cond_3

    .line 446
    array-length v0, p1

    invoke-static {p1, v9, v0, v3}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result p1

    .line 447
    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 448
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UCaseProps;->addCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    .line 445
    invoke-static {p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result p1

    add-int/2addr v3, p1

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    if-gez v10, :cond_5

    move v4, v7

    goto :goto_0

    :cond_5
    move v0, v8

    goto :goto_0

    :cond_6
    :goto_2
    return v1
.end method

.method public final fold(II)I
    .locals 5

    .line 1143
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 1144
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1145
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p0

    const/4 p2, 0x2

    if-lt p0, p2, :cond_6

    .line 1146
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    .line 1149
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 1150
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    and-int/lit8 p2, p2, 0x7

    const/16 v1, 0x69

    const/16 v3, 0x130

    const/16 v4, 0x49

    if-nez p2, :cond_2

    if-ne p1, v4, :cond_1

    return v1

    :cond_1
    if-ne p1, v3, :cond_4

    return p1

    :cond_2
    if-ne p1, v4, :cond_3

    const/16 p0, 0x131

    return p0

    :cond_3
    if-ne p1, v3, :cond_4

    return v1

    :cond_4
    const/4 p2, 0x1

    .line 1174
    invoke-static {v0, p2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    goto :goto_0

    .line 1176
    :cond_5
    invoke-static {v0, v3}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v3

    .line 1181
    :goto_0
    invoke-direct {p0, v0, p2, v2}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    :cond_6
    :goto_1
    return p1
.end method

.method public final getDotType(I)I
    .locals 1

    .line 473
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p1

    .line 474
    invoke-static {p1}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v0

    if-nez v0, :cond_0

    and-int/lit8 p0, p1, 0x60

    return p0

    .line 477
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    shr-int/lit8 p0, p0, 0x7

    and-int/lit8 p0, p0, 0x60

    return p0
.end method

.method public final getType(I)I
    .locals 0

    .line 463
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p0

    return p0
.end method

.method public final getTypeOrIgnorable(I)I
    .locals 0

    .line 468
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/UCaseProps;->getTypeAndIgnorableFromProps(I)I

    move-result p0

    return p0
.end method

.method public final hasBinaryProperty(II)Z
    .locals 5

    const/16 v0, 0x16

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_c

    const/16 v0, 0x1b

    if-eq p2, v0, :cond_b

    const/16 v0, 0x1e

    const/4 v3, 0x2

    if-eq p2, v0, :cond_9

    const/16 v0, 0x22

    if-eq p2, v0, :cond_8

    const/16 v0, 0x37

    const/4 v4, 0x0

    if-eq p2, v0, :cond_5

    packed-switch p2, :pswitch_data_0

    return v1

    .line 1327
    :pswitch_0
    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1328
    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v4, p2, v2}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p0

    if-ltz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1324
    :pswitch_1
    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1325
    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v4, p2, v2}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p0

    if-ltz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1321
    :pswitch_2
    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1322
    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v4, p2, v2}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p0

    if-ltz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 1307
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result p0

    shr-int/2addr p0, v3

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 1305
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 1331
    :cond_5
    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1332
    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1333
    invoke-virtual {p0, p1, v4, p2, v2}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p2

    if-gez p2, :cond_6

    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1334
    invoke-virtual {p0, p1, v4, p2, v2}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p2

    if-gez p2, :cond_6

    sget-object p2, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    .line 1335
    invoke-virtual {p0, p1, v4, p2, v2}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result p0

    if-ltz p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1

    .line 1303
    :cond_8
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isCaseSensitive(I)Z

    move-result p0

    return p0

    .line 1299
    :cond_9
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result p0

    if-ne v3, p0, :cond_a

    move v1, v2

    :cond_a
    return v1

    .line 1301
    :cond_b
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isSoftDotted(I)Z

    move-result p0

    return p0

    .line 1297
    :cond_c
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result p0

    if-ne v2, p0, :cond_d

    move v1, v2

    :cond_d
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isCaseSensitive(I)Z
    .locals 0

    .line 486
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSoftDotted(I)Z
    .locals 0

    .line 482
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toFullFolding(ILjava/lang/Appendable;I)I
    .locals 7

    .line 1206
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 1207
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 1208
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p0

    if-lt p0, v2, :cond_0

    .line 1209
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result p0

    add-int/2addr p0, p1

    goto/16 :goto_1

    :cond_0
    move p0, p1

    goto/16 :goto_1

    .line 1212
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 1213
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    and-int/2addr p3, v4

    const/16 v1, 0x69

    const/16 v4, 0x130

    const/16 v6, 0x49

    if-nez p3, :cond_3

    if-ne p1, v6, :cond_2

    return v1

    :cond_2
    if-ne p1, v4, :cond_6

    :try_start_0
    const-string p0, "i\u0307"

    .line 1228
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 1231
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    if-ne p1, v6, :cond_4

    const/16 p0, 0x131

    return p0

    :cond_4
    if-ne p1, v4, :cond_6

    return v1

    .line 1244
    :cond_5
    invoke-static {v0, v4}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1245
    invoke-direct {p0, v0, v4, v3}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v1

    long-to-int p3, v1

    const v4, 0xffff

    and-int/2addr p3, v4

    const/16 v4, 0x20

    shr-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v1, v5

    and-int/lit8 v2, p3, 0xf

    add-int/2addr v1, v2

    shr-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0xf

    if-eqz p3, :cond_6

    .line 1258
    :try_start_1
    iget-object p0, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int p1, v1, p3

    invoke-interface {p2, p0, v1, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return p3

    :catch_1
    move-exception p0

    .line 1263
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1268
    :cond_6
    invoke-static {v0, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    move p3, v5

    goto :goto_0

    .line 1270
    :cond_7
    invoke-static {v0, p3}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1275
    :goto_0
    invoke-direct {p0, v0, p3, v3}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p0

    :goto_1
    if-ne p0, p1, :cond_8

    not-int p0, p0

    :cond_8
    return p0

    :cond_9
    not-int p0, p1

    return p0
.end method

.method public final toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 828
    iget-object v5, v0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v5, v1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v5

    .line 829
    invoke-static {v5}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_0

    .line 830
    invoke-static {v5}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    if-lt v0, v7, :cond_11

    .line 831
    invoke-static {v5}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v0

    add-int/2addr v0, v1

    goto/16 :goto_1

    .line 834
    :cond_0
    invoke-static {v5}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v5

    .line 835
    iget-object v6, v0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v6, v5, 0x4000

    const/4 v10, 0x0

    if-eqz v6, :cond_f

    const-string v6, "i\u0307"

    const/16 v11, 0x49

    const/4 v12, 0x3

    if-ne v4, v12, :cond_a

    const/16 v13, 0x12e

    const/16 v14, 0x128

    const/16 v15, 0xcd

    const/16 v9, 0xcc

    const/16 v12, 0x4a

    if-eq v1, v11, :cond_1

    if-eq v1, v12, :cond_1

    if-ne v1, v13, :cond_2

    .line 851
    :cond_1
    invoke-direct {v0, v2}, Landroid/icu/impl/UCaseProps;->isFollowedByMoreAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v16

    if-nez v16, :cond_3

    :cond_2
    if-eq v1, v9, :cond_3

    if-eq v1, v15, :cond_3

    if-ne v1, v14, :cond_a

    :cond_3
    if-eq v1, v11, :cond_9

    if-eq v1, v12, :cond_8

    if-eq v1, v9, :cond_7

    if-eq v1, v15, :cond_6

    if-eq v1, v14, :cond_5

    if-eq v1, v13, :cond_4

    return v10

    :cond_4
    :try_start_0
    const-string/jumbo v0, "\u012f\u0307"

    .line 880
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v7

    :cond_5
    const-string v0, "i\u0307\u0303"

    .line 889
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x3

    return v0

    :cond_6
    const/4 v0, 0x3

    const-string v1, "i\u0307\u0301"

    .line 886
    invoke-interface {v3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v0

    :cond_7
    const/4 v0, 0x3

    const-string v1, "i\u0307\u0300"

    .line 883
    invoke-interface {v3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v0

    :cond_8
    const-string v0, "j\u0307"

    .line 877
    invoke-interface {v3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return v7

    :catch_0
    move-exception v0

    goto :goto_0

    .line 874
    :cond_9
    invoke-interface {v3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    .line 895
    :goto_0
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    const/16 v9, 0x130

    if-ne v4, v7, :cond_b

    if-ne v1, v9, :cond_b

    const/16 v0, 0x69

    return v0

    :cond_b
    if-ne v4, v7, :cond_c

    const/16 v12, 0x307

    if-ne v1, v12, :cond_c

    .line 907
    invoke-direct {v0, v2}, Landroid/icu/impl/UCaseProps;->isPrecededBy_I(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v12

    if-eqz v12, :cond_c

    return v10

    :cond_c
    if-ne v4, v7, :cond_d

    if-ne v1, v11, :cond_d

    .line 916
    invoke-direct {v0, v2}, Landroid/icu/impl/UCaseProps;->isFollowedByDotAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v4

    if-nez v4, :cond_d

    const/16 v0, 0x131

    return v0

    :cond_d
    if-ne v1, v9, :cond_e

    .line 931
    :try_start_1
    invoke-interface {v3, v6}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v7

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 934
    new-instance v0, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    const/16 v3, 0x3a3

    if-ne v1, v3, :cond_10

    const/4 v3, 0x1

    .line 937
    invoke-direct {v0, v2, v3}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v3

    if-nez v3, :cond_10

    const/4 v3, -0x1

    .line 938
    invoke-direct {v0, v2, v3}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v0, 0x3c2

    return v0

    :cond_f
    const/4 v2, 0x7

    .line 950
    invoke-static {v5, v2}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 951
    invoke-direct {v0, v5, v2, v8}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v6

    long-to-int v2, v6

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_10

    const/16 v1, 0x20

    shr-long v4, v6, v1

    long-to-int v1, v4

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 959
    :try_start_2
    iget-object v0, v0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int v4, v1, v2

    invoke-interface {v3, v0, v1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return v2

    :catch_2
    move-exception v0

    .line 964
    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 969
    :cond_10
    invoke-static {v5, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 970
    invoke-direct {v0, v5, v10, v8}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v0

    goto :goto_1

    :cond_11
    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_12

    not-int v0, v0

    :cond_12
    return v0
.end method

.method public final toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1084
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result p0

    return p0
.end method

.method public final toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1078
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;IZ)I

    move-result p0

    return p0
.end method

.method public final tolower(I)I
    .locals 4

    .line 192
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 193
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_1

    .line 195
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 199
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    .line 200
    invoke-static {v0, v1}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public final totitle(I)I
    .locals 5

    .line 224
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 225
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 227
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    .line 230
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 231
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x3

    .line 233
    invoke-static {v0, v1}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {v0, v4}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    .line 240
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    :cond_2
    :goto_1
    return p1
.end method

.method public final toupper(I)I
    .locals 4

    .line 208
    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    .line 209
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 211
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    .line 215
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x2

    .line 216
    invoke-static {v0, v1}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method
