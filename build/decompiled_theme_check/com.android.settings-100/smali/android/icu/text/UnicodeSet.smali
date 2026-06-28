.class public Landroid/icu/text/UnicodeSet;
.super Landroid/icu/text/UnicodeFilter;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/UnicodeSet$SpanCondition;,
        Landroid/icu/text/UnicodeSet$ComparisonStyle;,
        Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;,
        Landroid/icu/text/UnicodeSet$EntryRangeIterator;,
        Landroid/icu/text/UnicodeSet$EntryRangeIterable;,
        Landroid/icu/text/UnicodeSet$EntryRange;,
        Landroid/icu/text/UnicodeSet$XSymbolTable;,
        Landroid/icu/text/UnicodeSet$VersionFilter;,
        Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;,
        Landroid/icu/text/UnicodeSet$IntPropertyFilter;,
        Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;,
        Landroid/icu/text/UnicodeSet$NumericValueFilter;,
        Landroid/icu/text/UnicodeSet$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/text/UnicodeFilter;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/UnicodeSet;",
        ">;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/UnicodeSet;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ADD_CASE_MAPPINGS:I = 0x4

.field public static final ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

.field private static final ANY_ID:Ljava/lang/String; = "ANY"

.field private static final ASCII_ID:Ljava/lang/String; = "ASCII"

.field private static final ASSIGNED:Ljava/lang/String; = "Assigned"

.field public static final CASE:I = 0x2

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final EMPTY:Landroid/icu/text/UnicodeSet;

.field private static final GROW_EXTRA:I = 0x10

.field private static final HIGH:I = 0x110000

.field public static final IGNORE_SPACE:I = 0x1

.field private static INCLUSIONS:[Landroid/icu/text/UnicodeSet; = null

.field private static final LAST0_START:I = 0x0

.field private static final LAST1_RANGE:I = 0x1

.field private static final LAST2_SET:I = 0x2

.field private static final LOW:I = 0x0

.field public static final MAX_VALUE:I = 0x10ffff

.field public static final MIN_VALUE:I = 0x0

.field private static final MODE0_NONE:I = 0x0

.field private static final MODE1_INBRACKET:I = 0x1

.field private static final MODE2_OUTBRACKET:I = 0x2

.field private static final NO_VERSION:Landroid/icu/util/VersionInfo;

.field private static final SETMODE0_NONE:I = 0x0

.field private static final SETMODE1_UNICODESET:I = 0x1

.field private static final SETMODE2_PROPERTYPAT:I = 0x2

.field private static final SETMODE3_PREPARSED:I = 0x3

.field private static final START_EXTRA:I = 0x10

.field private static XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;


# instance fields
.field private volatile bmpSet:Landroid/icu/impl/BMPSet;

.field private buffer:[I

.field private len:I

.field private list:[I

.field private pat:Ljava/lang/String;

.field private rangeList:[I

.field private volatile stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

.field strings:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 295
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    .line 299
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const v1, 0x10ffff

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x0

    .line 301
    sput-object v0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    .line 351
    sput-object v0, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    .line 3152
    invoke-static {v2, v2, v2, v2}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->NO_VERSION:Landroid/icu/util/VersionInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 362
    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    .line 324
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 363
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 364
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/high16 p0, 0x110000

    aput p0, v0, v1

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 382
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 383
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    .line 370
    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    .line 324
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 371
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 427
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 428
    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 454
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x0

    .line 455
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V
    .locals 1

    .line 470
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x1

    .line 471
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)V
    .locals 0

    .line 488
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 489
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 440
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 5

    .line 394
    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    .line 324
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 395
    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 398
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 399
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v0, v0

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 402
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 404
    aget v2, p1, v1

    const-string v3, "Must be monotonically increasing."

    if-ge v0, v2, :cond_1

    .line 408
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v0, v1

    .line 410
    aget v1, p1, v4

    add-int/lit8 v1, v1, 0x1

    if-ge v2, v1, :cond_0

    add-int/lit8 v2, v4, 0x1

    .line 414
    aput v1, v0, v4

    move v0, v1

    move v1, v2

    goto :goto_0

    .line 412
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 406
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 416
    :cond_2
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/high16 p1, 0x110000

    aput p1, p0, v1

    return-void

    .line 396
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must have even number of integers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static _appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;IZ)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 638
    :try_start_0
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 641
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/16 p2, 0x24

    const/16 v0, 0x5c

    if-eq p1, p2, :cond_1

    const/16 p2, 0x26

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2d

    if-eq p1, p2, :cond_1

    const/16 p2, 0x3a

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7b

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7d

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 661
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 662
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 657
    :cond_1
    :pswitch_0
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 666
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 669
    :goto_1
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static _appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 625
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 626
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 627
    invoke-static {p0, v1, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 625
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private _toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;Z)TT;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 695
    invoke-direct {p0, p1, p2, v1}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 699
    :try_start_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p1

    :cond_1
    const/4 p2, 0x0

    move v0, p2

    move v2, v0

    .line 703
    :goto_0
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x5c

    if-ge v0, v3, :cond_5

    .line 704
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 705
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v0, v5

    .line 706
    invoke-static {v3}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 710
    invoke-static {p1, v3}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    :goto_1
    move v2, p2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-ne v3, v4, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 717
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 719
    :cond_4
    invoke-static {p1, v3}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    .line 724
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object p1

    :catch_0
    move-exception p0

    .line 728
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic access$000()Landroid/icu/util/VersionInfo;
    .locals 1

    .line 290
    sget-object v0, Landroid/icu/text/UnicodeSet;->NO_VERSION:Landroid/icu/util/VersionInfo;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .locals 0

    .line 290
    invoke-static {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/icu/text/UnicodeSet;)I
    .locals 0

    .line 290
    iget p0, p0, Landroid/icu/text/UnicodeSet;->len:I

    return p0
.end method

.method static synthetic access$500(Landroid/icu/text/UnicodeSet;)[I
    .locals 0

    .line 290
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    return-object p0
.end method

.method private add([III)Landroid/icu/text/UnicodeSet;
    .locals 9

    .line 2936
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 2938
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    .line 2939
    aget v1, p1, v0

    const/4 v2, 0x1

    move v3, v2

    move v4, v3

    :goto_0
    const/high16 v5, 0x110000

    const/4 v6, 0x2

    if-eqz p3, :cond_c

    if-eq p3, v2, :cond_8

    if-eq p3, v6, :cond_4

    const/4 v7, 0x3

    if-eq p3, v7, :cond_0

    goto :goto_0

    :cond_0
    if-gt v1, p2, :cond_2

    if-ne p2, v5, :cond_1

    goto/16 :goto_7

    .line 2986
    :cond_1
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, 0x1

    aput p2, v1, v0

    goto :goto_1

    :cond_2
    if-ne v1, v5, :cond_3

    goto/16 :goto_7

    .line 2989
    :cond_3
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, 0x1

    aput v1, p2, v0

    .line 2991
    :goto_1
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 2992
    aget v3, p1, v4

    xor-int/2addr p3, v6

    move v4, v1

    move v1, v3

    move v3, v0

    move v0, v5

    goto :goto_0

    :cond_4
    if-ge v1, p2, :cond_5

    .line 3007
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput v1, v5, v0

    add-int/lit8 v0, v4, 0x1

    aget v1, p1, v4

    xor-int/lit8 p3, p3, 0x2

    move v4, v0

    goto :goto_2

    :cond_5
    if-ge p2, v1, :cond_6

    .line 3009
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    move v3, v5

    goto :goto_0

    :cond_6
    if-ne p2, v5, :cond_7

    goto/16 :goto_7

    .line 3012
    :cond_7
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 3013
    aget v4, p1, v4

    goto :goto_4

    :cond_8
    if-ge p2, v1, :cond_9

    .line 2996
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput p2, v5, v0

    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    move v3, v0

    :goto_2
    move v0, v6

    goto :goto_0

    :cond_9
    if-ge v1, p2, :cond_a

    add-int/lit8 v1, v4, 0x1

    .line 2998
    aget v4, p1, v4

    xor-int/lit8 p3, p3, 0x2

    :goto_3
    move v8, v4

    move v4, v1

    move v1, v8

    goto/16 :goto_0

    :cond_a
    if-ne p2, v5, :cond_b

    goto/16 :goto_7

    .line 3001
    :cond_b
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v3, 0x1

    aget p2, p2, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v3, v4, 0x1

    .line 3002
    aget v4, p1, v4

    :goto_4
    xor-int/2addr p3, v6

    move v8, v3

    move v3, v1

    move v1, v4

    move v4, v8

    goto/16 :goto_0

    :cond_c
    if-ge p2, v1, :cond_e

    if-lez v0, :cond_d

    .line 2948
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, -0x1

    aget v6, v5, v6

    if-gt p2, v6, :cond_d

    .line 2950
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget p2, p2, v3

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    invoke-static {p2, v5}, Landroid/icu/text/UnicodeSet;->max(II)I

    move-result p2

    goto :goto_5

    .line 2953
    :cond_d
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput p2, v5, v0

    .line 2954
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget p2, p2, v3

    move v0, v6

    :goto_5
    add-int/lit8 v3, v3, 0x1

    xor-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_e
    if-ge v1, p2, :cond_10

    if-lez v0, :cond_f

    .line 2959
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, -0x1

    aget v6, v5, v6

    if-gt v1, v6, :cond_f

    .line 2960
    aget v1, p1, v4

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    invoke-static {v1, v5}, Landroid/icu/text/UnicodeSet;->max(II)I

    move-result v1

    goto :goto_6

    .line 2962
    :cond_f
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v0, 0x1

    aput v1, v5, v0

    .line 2963
    aget v1, p1, v4

    move v0, v6

    :goto_6
    add-int/lit8 v4, v4, 0x1

    xor-int/lit8 p3, p3, 0x2

    goto/16 :goto_0

    :cond_10
    if-ne p2, v5, :cond_11

    .line 3018
    :goto_7
    iget-object p1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 p2, v0, 0x1

    aput v5, p1, v0

    .line 3019
    iput p2, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 3021
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3022
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3023
    iput-object p2, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    const/4 p1, 0x0

    .line 3024
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    :cond_11
    if-lez v0, :cond_12

    .line 2971
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, -0x1

    aget v5, v1, v5

    if-gt p2, v5, :cond_12

    .line 2972
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget p2, p2, v3

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    invoke-static {p2, v1}, Landroid/icu/text/UnicodeSet;->max(II)I

    move-result p2

    goto :goto_8

    .line 2975
    :cond_12
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v0, 0x1

    aput p2, v1, v0

    .line 2976
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget p2, p2, v3

    move v0, v5

    :goto_8
    add-int/lit8 v3, v3, 0x1

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 2980
    aget v4, p1, v4

    xor-int/2addr p3, v6

    goto/16 :goto_3
.end method

.method public static addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;TU;)TU;"
        }
    .end annotation

    .line 4520
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4521
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 4532
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    .line 4533
    aput-object v1, p1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static final addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x1f

    if-le p1, v0, :cond_0

    .line 3726
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 3729
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    const/4 p0, 0x0

    .line 3730
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final add_unchecked(I)Landroid/icu/text/UnicodeSet;
    .locals 5

    if-ltz p1, :cond_7

    const v0, 0x10ffff

    if-gt p1, v0, :cond_7

    .line 1217
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    return-object p0

    .line 1237
    :cond_0
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_2

    .line 1239
    aput p1, v2, v1

    if-ne p1, v0, :cond_1

    .line 1242
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1243
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/high16 v3, 0x110000

    aput v3, v0, v2

    :cond_1
    if-lez v1, :cond_6

    .line 1245
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    if-ne p1, v3, :cond_6

    add-int/lit8 p1, v1, 0x1

    .line 1251
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1252
    iget p1, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/icu/text/UnicodeSet;->len:I

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    .line 1256
    aget v3, v2, v0

    if-ne p1, v3, :cond_3

    .line 1258
    aget p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    aput p1, v2, v0

    goto :goto_1

    .line 1278
    :cond_3
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v4, v3

    if-le v2, v4, :cond_5

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    .line 1279
    new-array v0, v0, [I

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 1280
    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1281
    :cond_4
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v1, 0x2

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1282
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v1

    .line 1284
    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1287
    :goto_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 1288
    aput p1, v0, v1

    .line 1289
    iget p1, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/icu/text/UnicodeSet;->len:I

    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 1292
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    .line 1211
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid code point U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    const/4 p1, 0x6

    invoke-static {v1, v2, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private add_unchecked(II)Landroid/icu/text/UnicodeSet;
    .locals 3

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_3

    const v2, 0x10ffff

    if-gt p1, v2, :cond_3

    if-ltz p2, :cond_2

    if-gt p2, v2, :cond_2

    if-ge p1, p2, :cond_0

    .line 1172
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->add([III)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 1174
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_1
    :goto_0
    return-object p0

    .line 1169
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p2

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1166
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 613
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 615
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static appendCodePoint(Ljava/lang/Appendable;I)V
    .locals 1

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    int-to-char p1, p1

    .line 598
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 600
    :cond_0
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 603
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;ZZ)TT;"
        }
    .end annotation

    const/16 v0, 0x5b

    .line 757
    :try_start_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 759
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 765
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v0, -0x1

    .line 766
    invoke-virtual {p0, v4}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v4

    const v5, 0x10ffff

    if-ne v4, v5, :cond_2

    const/16 v2, 0x5e

    .line 769
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_5

    add-int/lit8 v4, v2, -0x1

    .line 772
    invoke-virtual {p0, v4}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 773
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v5

    sub-int/2addr v5, v3

    .line 774
    invoke-static {p1, v4, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    if-eq v4, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    if-eq v4, v5, :cond_0

    .line 777
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 779
    :cond_0
    invoke-static {p1, v5, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_5

    .line 787
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v3

    .line 788
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v4

    .line 789
    invoke-static {p1, v3, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    if-eq v3, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v4, :cond_3

    .line 792
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 794
    :cond_3
    invoke-static {p1, v4, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 799
    iget-object p3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p3}, Ljava/util/TreeSet;->size()I

    move-result p3

    if-lez p3, :cond_6

    .line 800
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/16 v0, 0x7b

    .line 801
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 802
    invoke-static {p1, p3, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    const/16 p3, 0x7d

    .line 803
    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_6
    const/16 p0, 0x5d

    .line 806
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 809
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;
    .locals 7

    .line 3228
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 3231
    invoke-static {p2}, Landroid/icu/text/UnicodeSet;->getInclusions(I)Landroid/icu/text/UnicodeSet;

    move-result-object p2

    .line 3232
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3236
    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v4

    .line 3237
    invoke-virtual {p2, v2}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v5

    :goto_1
    if-gt v4, v5, :cond_2

    .line 3243
    invoke-interface {p1, v4}, Landroid/icu/text/UnicodeSet$Filter;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-gez v3, :cond_1

    move v3, v4

    goto :goto_2

    :cond_0
    if-ltz v3, :cond_1

    add-int/lit8 v6, v4, -0x1

    .line 3248
    invoke-direct {p0, v3, v6}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    move v3, v1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ltz v3, :cond_4

    const p1, 0x10ffff

    .line 3254
    invoke-direct {p0, v3, p1}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    :cond_4
    return-object p0
.end method

.method private applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    .line 2418
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2430
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1
    if-eq v0, v10, :cond_3b

    .line 2433
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v21

    if-nez v21, :cond_3b

    .line 2453
    invoke-static {v2, v7}, Landroid/icu/text/UnicodeSet;->resemblesPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;I)Z

    move-result v21

    const/16 v6, 0x5e

    if-eqz v21, :cond_1

    move v10, v0

    move/from16 v24, v20

    const/4 v0, 0x2

    const/4 v12, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    goto/16 :goto_5

    .line 2467
    :cond_1
    invoke-virtual {v2, v13}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2468
    invoke-virtual {v2, v7}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v12

    .line 2469
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v23

    const/16 v10, 0x5b

    if-ne v12, v10, :cond_5

    if-nez v23, :cond_5

    if-ne v0, v11, :cond_2

    .line 2473
    invoke-virtual {v2, v13}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    move v10, v0

    move v0, v11

    move/from16 v24, v20

    goto :goto_4

    .line 2478
    :cond_2
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2479
    invoke-virtual {v2, v13}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2480
    invoke-virtual {v2, v7}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v10

    .line 2481
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v12

    if-ne v10, v6, :cond_3

    if-nez v12, :cond_3

    .line 2484
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2485
    invoke-virtual {v2, v0}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2486
    invoke-virtual {v2, v7}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v10

    .line 2487
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-object v13, v0

    move v12, v10

    move/from16 v20, v11

    goto :goto_2

    :cond_3
    move-object v13, v0

    move v12, v10

    :goto_2
    const/16 v0, 0x2d

    if-ne v12, v0, :cond_4

    move v10, v11

    move/from16 v23, v10

    goto :goto_3

    .line 2495
    :cond_4
    invoke-virtual {v2, v13}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    move v0, v11

    const/4 v10, 0x2

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 2500
    invoke-interface {v3, v12}, Landroid/icu/text/SymbolTable;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 2503
    :try_start_0
    check-cast v10, Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v24, v20

    move-object/from16 v20, v10

    move v10, v0

    const/4 v0, 0x3

    goto :goto_5

    :catch_0
    const-string v10, "Syntax error"

    .line 2506
    invoke-static {v2, v10}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_6
    move v10, v0

    :goto_3
    move/from16 v24, v20

    const/4 v0, 0x0

    :goto_4
    const/16 v20, 0x0

    :goto_5
    const/16 v6, 0x26

    if-eqz v0, :cond_14

    if-ne v14, v11, :cond_8

    if-eqz v9, :cond_7

    const-string v9, "Char expected after operator"

    .line 2520
    invoke-static {v2, v9}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2522
    :cond_7
    invoke-direct {v1, v15, v15}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/4 v9, 0x0

    .line 2523
    invoke-static {v8, v15, v9}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    const/4 v9, 0x0

    :cond_8
    const/16 v12, 0x2d

    if-eq v9, v12, :cond_9

    if-ne v9, v6, :cond_a

    .line 2529
    :cond_9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    if-nez v20, :cond_c

    if-nez v16, :cond_b

    .line 2533
    new-instance v16, Landroid/icu/text/UnicodeSet;

    invoke-direct/range {v16 .. v16}, Landroid/icu/text/UnicodeSet;-><init>()V

    :cond_b
    move-object/from16 v20, v16

    move-object/from16 v12, v20

    move-object/from16 v16, v12

    goto :goto_6

    :cond_c
    move-object/from16 v12, v20

    :goto_6
    if-eq v0, v11, :cond_f

    const/4 v14, 0x2

    if-eq v0, v14, :cond_e

    const/4 v14, 0x3

    if-eq v0, v14, :cond_d

    goto :goto_7

    :cond_d
    const/4 v14, 0x0

    .line 2545
    invoke-direct {v12, v8, v14}, Landroid/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    goto :goto_7

    .line 2541
    :cond_e
    invoke-virtual {v2, v7}, Landroid/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    .line 2542
    invoke-direct {v12, v2, v8, v3}, Landroid/icu/text/UnicodeSet;->applyPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Landroid/icu/text/SymbolTable;)V

    goto :goto_7

    .line 2538
    :cond_f
    invoke-direct {v12, v2, v3, v8, v5}, Landroid/icu/text/UnicodeSet;->applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;I)V

    :goto_7
    if-nez v10, :cond_10

    .line 2553
    invoke-virtual {v1, v12}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x2

    goto/16 :goto_18

    :cond_10
    if-eqz v9, :cond_13

    if-eq v9, v6, :cond_12

    const/16 v0, 0x2d

    if-eq v9, v0, :cond_11

    goto :goto_8

    .line 2560
    :cond_11
    invoke-virtual {v1, v12}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    goto :goto_8

    .line 2563
    :cond_12
    invoke-virtual {v1, v12}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    goto :goto_8

    .line 2566
    :cond_13
    invoke-virtual {v1, v12}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    :goto_8
    move v0, v10

    move/from16 v19, v11

    move/from16 v20, v24

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_14
    const/16 v22, 0x3

    if-nez v10, :cond_15

    const-string v0, "Missing \'[\'"

    .line 2577
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_15
    const/16 v0, 0x24

    if-nez v23, :cond_32

    const/16 v11, 0x5d

    if-eq v12, v0, :cond_2d

    if-eq v12, v6, :cond_2b

    const/16 v0, 0x2d

    if-eq v12, v0, :cond_26

    const/16 v6, 0x7b

    if-eq v12, v6, :cond_1b

    if-eq v12, v11, :cond_17

    const/16 v0, 0x5e

    if-eq v12, v0, :cond_16

    goto/16 :goto_15

    :cond_16
    const-string v0, "\'^\' not after \'[\'"

    .line 2631
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_17
    const/4 v6, 0x1

    if-ne v14, v6, :cond_18

    .line 2588
    invoke-direct {v1, v15, v15}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/4 v6, 0x0

    .line 2589
    invoke-static {v8, v15, v6}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_18
    const/16 v0, 0x2d

    if-ne v9, v0, :cond_19

    .line 2593
    invoke-direct {v1, v9, v9}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2594
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_19
    const/16 v0, 0x26

    if-ne v9, v0, :cond_1a

    const-string v0, "Trailing \'&\'"

    .line 2596
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2598
    :cond_1a
    :goto_9
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a
    move/from16 v20, v24

    const/4 v0, 0x2

    goto/16 :goto_17

    :cond_1b
    if-eqz v9, :cond_1c

    const/16 v0, 0x2d

    if-eq v9, v0, :cond_1c

    const-string v0, "Missing operand after operator"

    .line 2635
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_1c
    const/4 v11, 0x1

    if-ne v14, v11, :cond_1d

    .line 2638
    invoke-direct {v1, v15, v15}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/4 v11, 0x0

    .line 2639
    invoke-static {v8, v15, v11}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    goto :goto_b

    :cond_1d
    const/4 v11, 0x0

    :goto_b
    move-object/from16 v0, v18

    if-nez v0, :cond_1e

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c

    .line 2645
    :cond_1e
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_c
    move-object v11, v0

    .line 2648
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v0

    const/16 v12, 0x7d

    if-nez v0, :cond_20

    .line 2649
    invoke-virtual {v2, v7}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v0

    .line 2650
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v14

    if-ne v0, v12, :cond_1f

    if-nez v14, :cond_1f

    const/4 v0, 0x1

    goto :goto_e

    .line 2655
    :cond_1f
    invoke-static {v11, v0}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    goto :goto_d

    :cond_20
    const/4 v0, 0x0

    .line 2657
    :goto_e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v12, 0x1

    if-lt v14, v12, :cond_21

    if-nez v0, :cond_22

    :cond_21
    const-string v0, "Invalid multicharacter string"

    .line 2658
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2663
    :cond_22
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v0, 0x2d

    if-ne v9, v0, :cond_25

    move-object/from16 v0, v17

    if-nez v0, :cond_23

    const-string v17, ""

    goto :goto_f

    :cond_23
    move-object/from16 v17, v0

    .line 2665
    :goto_f
    invoke-static/range {v17 .. v17}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v9

    .line 2666
    invoke-static {v12}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v14

    const v6, 0x7fffffff

    if-eq v9, v6, :cond_24

    if-eq v14, v6, :cond_24

    .line 2668
    invoke-virtual {v1, v9, v14}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_10

    .line 2671
    :cond_24
    :try_start_1
    iget-object v6, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v9, 0x1

    invoke-static {v0, v12, v9, v6}, Landroid/icu/impl/StringRange;->expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    move-exception v0

    .line 2673
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :goto_10
    const/16 v6, 0x7b

    const/4 v9, 0x0

    const/16 v17, 0x0

    goto :goto_11

    .line 2679
    :cond_25
    invoke-virtual {v1, v12}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-object/from16 v17, v12

    const/16 v6, 0x7b

    .line 2682
    :goto_11
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 2683
    invoke-static {v8, v12, v6}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    const/16 v6, 0x7d

    .line 2684
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v10

    move-object/from16 v18, v11

    move/from16 v20, v24

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_26
    move-object/from16 v0, v18

    if-nez v9, :cond_2a

    if-eqz v14, :cond_27

    goto :goto_12

    :cond_27
    if-eqz v17, :cond_28

    goto :goto_12

    .line 2611
    :cond_28
    invoke-direct {v1, v12, v12}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2612
    invoke-virtual {v2, v7}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v6

    .line 2613
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v12

    if-ne v6, v11, :cond_29

    if-nez v12, :cond_29

    const-string v6, "-]"

    .line 2615
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    goto/16 :goto_a

    :cond_29
    move v12, v6

    :cond_2a
    const-string v6, "\'-\' not after char, string, or set"

    .line 2621
    invoke-static {v2, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto :goto_13

    :cond_2b
    move-object/from16 v0, v18

    const/4 v6, 0x2

    if-ne v14, v6, :cond_2c

    if-nez v9, :cond_2c

    :goto_12
    int-to-char v9, v12

    move-object/from16 v18, v0

    goto/16 :goto_16

    :cond_2c
    const-string v6, "\'&\' not after set"

    .line 2628
    invoke-static {v2, v6}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :goto_13
    move-object/from16 v18, v0

    goto :goto_15

    .line 2693
    :cond_2d
    invoke-virtual {v2, v13}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2694
    invoke-virtual {v2, v7}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v12

    .line 2695
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v6

    if-ne v12, v11, :cond_2e

    if-nez v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_14

    :cond_2e
    const/4 v6, 0x0

    :goto_14
    if-nez v3, :cond_2f

    if-nez v6, :cond_2f

    .line 2699
    invoke-virtual {v2, v13}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    move v12, v0

    goto :goto_15

    :cond_2f
    if-eqz v6, :cond_31

    if-nez v9, :cond_31

    const/4 v6, 0x1

    if-ne v14, v6, :cond_30

    .line 2704
    invoke-direct {v1, v15, v15}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/4 v6, 0x0

    .line 2705
    invoke-static {v8, v15, v6}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_30
    const v6, 0xffff

    .line 2707
    invoke-direct {v1, v6}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    .line 2709
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v20, v24

    const/4 v0, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/16 v19, 0x1

    goto/16 :goto_1

    :cond_31
    const-string v0, "Unquoted \'$\'"

    .line 2713
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_32
    :goto_15
    const-string v0, "Invalid range"

    if-eqz v14, :cond_39

    const/4 v6, 0x1

    if-eq v14, v6, :cond_35

    const/4 v6, 0x2

    if-eq v14, v6, :cond_33

    goto :goto_16

    :cond_33
    if-eqz v9, :cond_34

    const-string v0, "Set expected after operator"

    .line 2757
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_34
    move v15, v12

    const/4 v14, 0x1

    goto :goto_16

    :cond_35
    const/16 v6, 0x2d

    if-ne v9, v6, :cond_38

    if-eqz v17, :cond_36

    .line 2736
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_36
    if-lt v15, v12, :cond_37

    .line 2741
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2743
    :cond_37
    invoke-direct {v1, v15, v12}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/4 v6, 0x0

    .line 2744
    invoke-static {v8, v15, v6}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    .line 2745
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2746
    invoke-static {v8, v12, v6}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move v9, v6

    move v14, v9

    goto :goto_16

    :cond_38
    const/4 v6, 0x0

    .line 2750
    invoke-direct {v1, v15, v15}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 2751
    invoke-static {v8, v15, v6}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move v15, v12

    goto :goto_16

    :cond_39
    const/16 v6, 0x2d

    if-ne v9, v6, :cond_3a

    if-eqz v17, :cond_3a

    .line 2727
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_3a
    move v15, v12

    const/4 v14, 0x1

    const/16 v17, 0x0

    :goto_16
    move v0, v10

    move/from16 v20, v24

    :goto_17
    const/4 v10, 0x2

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_3b
    move/from16 v11, v19

    move/from16 v24, v20

    :goto_18
    const/4 v3, 0x2

    if-eq v0, v3, :cond_3c

    const-string v0, "Missing \']\'"

    .line 2766
    invoke-static {v2, v0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2769
    :cond_3c
    invoke-virtual {v2, v7}, Landroid/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_3d

    .line 2778
    invoke-virtual {v1, v3}, Landroid/icu/text/UnicodeSet;->closeOver(I)Landroid/icu/text/UnicodeSet;

    :cond_3d
    if-eqz v24, :cond_3e

    .line 2781
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    :cond_3e
    if-eqz v11, :cond_3f

    .line 2787
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_3f
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2789
    invoke-direct {v1, v4, v3, v2}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    :goto_19
    return-void
.end method

.method private applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;
    .locals 12

    .line 3553
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    add-int/lit8 v0, v6, 0x5

    .line 3558
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x0

    if-le v0, v1, :cond_0

    return-object v7

    :cond_0
    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v0, "[:"

    .line 3567
    invoke-virtual {p1, v6, v0, v9, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    add-int/2addr v6, v8

    .line 3569
    invoke-static {p1, v6}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 3570
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    move v1, v9

    move v2, v10

    move v9, v2

    goto :goto_3

    :cond_1
    move v1, v9

    move v2, v1

    move v9, v10

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v3, "\\p"

    move-object v0, p1

    move v2, v6

    .line 3574
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\\N"

    .line 3575
    invoke-virtual {p1, v6, v0, v9, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-object v7

    :cond_4
    :goto_0
    add-int/lit8 v0, v6, 0x1

    .line 3576
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_5

    move v1, v10

    goto :goto_1

    :cond_5
    move v1, v9

    :goto_1
    const/16 v2, 0x4e

    if-ne v0, v2, :cond_6

    move v0, v10

    goto :goto_2

    :cond_6
    move v0, v9

    :goto_2
    add-int/2addr v6, v8

    .line 3579
    invoke-static {p1, v6}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 3580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_e

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_7

    goto :goto_7

    :cond_7
    move v2, v1

    move v1, v0

    move v0, v3

    :goto_3
    if-eqz v9, :cond_8

    const-string v3, ":]"

    goto :goto_4

    :cond_8
    const-string/jumbo v3, "}"

    .line 3590
    :goto_4
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_9

    return-object v7

    :cond_9
    const/16 v4, 0x3d

    .line 3599
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ltz v4, :cond_a

    if-ge v4, v3, :cond_a

    if-nez v1, :cond_a

    .line 3603
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v4, v10

    .line 3604
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 3609
    :cond_a
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_b

    const-string p1, "na"

    move-object v11, v0

    move-object v0, p1

    move-object p1, v11

    goto :goto_5

    :cond_b
    const-string p1, ""

    .line 3624
    :goto_5
    invoke-virtual {p0, v0, p1, p3}, Landroid/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    if-eqz v2, :cond_c

    .line 3627
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    :cond_c
    if-eqz v9, :cond_d

    goto :goto_6

    :cond_d
    move v8, v10

    :goto_6
    add-int/2addr v3, v8

    .line 3631
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object p0

    :cond_e
    :goto_7
    return-object v7
.end method

.method private applyPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Landroid/icu/text/SymbolTable;)V
    .locals 3

    .line 3648
    invoke-virtual {p1}, Landroid/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;

    move-result-object v0

    .line 3649
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3650
    invoke-direct {p0, v0, v1, p3}, Landroid/icu/text/UnicodeSet;->applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    .line 3651
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Invalid property pattern"

    .line 3652
    invoke-static {p1, p0}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 3654
    :cond_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    .line 3655
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkFrozen()V
    .locals 1

    .line 4117
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 4118
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify frozen object"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compare(ILjava/lang/CharSequence;)I
    .locals 0

    .line 4457
    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 4446
    invoke-static {p0, p1}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    .line 4470
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/util/Iterator;Ljava/util/Iterator;)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/util/Collection;Ljava/util/Collection;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Landroid/icu/text/UnicodeSet$ComparisonStyle;",
            ")I"
        }
    .end annotation

    .line 4506
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-eq p2, v0, :cond_3

    .line 4507
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    .line 4509
    :goto_0
    sget-object v1, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-ne p2, v1, :cond_1

    move p0, p1

    :cond_1
    if-ne v0, p0, :cond_2

    const/4 p1, -0x1

    :cond_2
    return p1

    .line 4512
    :cond_3
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/util/Iterator;Ljava/util/Iterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4486
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4487
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 4488
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 4491
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 4492
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 4493
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0
.end method

.method private containsAll(Ljava/lang/String;I)Z
    .locals 4

    .line 1949
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    return v1

    .line 1952
    :cond_0
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 1953
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1956
    :cond_1
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1957
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {p0, p1, v2}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private ensureBufferCapacity(I)V
    .locals 1

    .line 2861
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x10

    .line 2862
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 2854
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x10

    .line 2855
    new-array p1, p1, [I

    .line 2856
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2857
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    return-void
.end method

.method private final findCodePoint(I)I
    .locals 4

    .line 1667
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-ge p1, v2, :cond_0

    return v1

    .line 1670
    :cond_0
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x2

    aget v0, v0, v3

    if-lt p1, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 1672
    :cond_1
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_2

    return v0

    .line 1678
    :cond_2
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v3, v3, v2

    if-ge p1, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static from(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 1405
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 1415
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultXSymbolTable()Landroid/icu/text/UnicodeSet$XSymbolTable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4743
    sget-object v0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    return-object v0
.end method

.method private static declared-synchronized getInclusions(I)Landroid/icu/text/UnicodeSet;
    .locals 4

    const-class v0, Landroid/icu/text/UnicodeSet;

    monitor-enter v0

    .line 3168
    :try_start_0
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    if-nez v1, :cond_0

    const/16 v1, 0xc

    new-array v1, v1, [Landroid/icu/text/UnicodeSet;

    .line 3169
    sput-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    .line 3171
    :cond_0
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    aget-object v1, v1, p0

    if-nez v1, :cond_1

    .line 3172
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    packed-switch p0, :pswitch_data_0

    .line 3207
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    goto :goto_1

    .line 3198
    :pswitch_1
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Landroid/icu/impl/Normalizer2Impl;->addCanonIterPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3195
    :pswitch_2
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3192
    :pswitch_3
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3189
    :pswitch_4
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3185
    :pswitch_5
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    .line 3186
    sget-object v2, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v2, v1}, Landroid/icu/impl/UCaseProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3181
    :pswitch_6
    sget-object v2, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v1}, Landroid/icu/impl/UCharacterProperty;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 3182
    sget-object v2, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v1}, Landroid/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3204
    :pswitch_7
    sget-object v2, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v2, v1}, Landroid/icu/impl/UBiDiProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3201
    :pswitch_8
    sget-object v2, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v2, v1}, Landroid/icu/impl/UCaseProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3178
    :pswitch_9
    sget-object v2, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v1}, Landroid/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 3175
    :pswitch_a
    sget-object v2, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v1}, Landroid/icu/impl/UCharacterProperty;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 3209
    :goto_0
    sget-object v2, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    aput-object v1, v2, p0

    goto :goto_2

    .line 3207
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnicodeSet.getInclusions(unknown src "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3211
    :cond_1
    :goto_2
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    aget-object p0, v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getSingleCP(Ljava/lang/CharSequence;)I
    .locals 4

    .line 1325
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 1328
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-le v0, v2, :cond_0

    return v3

    .line 1329
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0

    .line 1332
    :cond_1
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result p0

    const v0, 0xffff

    if-le p0, v0, :cond_2

    return p0

    :cond_2
    return v3

    .line 1326
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use zero-length strings in UnicodeSet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4558
    invoke-static {p0}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method private static matchRest(Landroid/icu/text/Replaceable;IILjava/lang/String;)I
    .locals 5

    .line 992
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, p2, :cond_2

    sub-int/2addr p2, p1

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    :goto_0
    if-ge v2, p2, :cond_5

    add-int v0, p1, v2

    .line 997
    invoke-interface {p0, v0}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sub-int p2, p1, p2

    if-le p2, v0, :cond_3

    move p2, v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ge v2, p2, :cond_5

    sub-int v3, p1, v2

    .line 1004
    invoke-interface {p0, v3}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v3

    sub-int v4, v0, v2

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return p2
.end method

.method private static matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I
    .locals 5

    .line 1059
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1060
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, -0x1

    if-le v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1066
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1067
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static final max(II)I
    .locals 0

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method private static mungeCharName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 3266
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    .line 3268
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 3269
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3270
    invoke-static {v3}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_2

    if-nez v2, :cond_0

    .line 3272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3273
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v5

    :cond_2
    if-eqz v2, :cond_3

    .line 3279
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    goto :goto_3

    .line 3282
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method private range(II)[I
    .locals 3

    .line 2869
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput p1, v0, v1

    add-int/2addr p2, v2

    aput p2, v0, v2

    const/4 p1, 0x2

    const/high16 p2, 0x110000

    aput p2, v0, p1

    .line 2870
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    goto :goto_0

    .line 2872
    :cond_0
    aput p1, v0, v1

    add-int/2addr p2, v2

    .line 2873
    aput p2, v0, v2

    .line 2875
    :goto_0
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    return-object p0
.end method

.method public static resemblesPattern(Ljava/lang/String;I)Z
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 585
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    .line 586
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->resemblesPropertyPattern(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static resemblesPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;I)Z
    .locals 5

    and-int/lit8 p1, p1, -0x3

    const/4 v0, 0x0

    .line 3537
    invoke-virtual {p0, v0}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3538
    invoke-virtual {p0, p1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v1

    const/16 v2, 0x5b

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_3

    :cond_0
    and-int/lit8 p1, p1, -0x5

    .line 3540
    invoke-virtual {p0, p1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result p1

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x3a

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_1
    const/16 v1, 0x4e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x70

    if-eq p1, v1, :cond_2

    const/16 v1, 0x50

    if-ne p1, v1, :cond_3

    :cond_2
    :goto_0
    move v3, v4

    .line 3544
    :cond_3
    invoke-virtual {p0, v0}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    return v3
.end method

.method private static resemblesPropertyPattern(Ljava/lang/String;I)Z
    .locals 9

    add-int/lit8 v0, p1, 0x5

    .line 3515
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x2

    const-string v1, "[:"

    .line 3520
    invoke-virtual {p0, p1, v1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v6, "\\p"

    move-object v3, p0

    move v5, p1

    .line 3521
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\\N"

    .line 3522
    invoke-virtual {p0, p1, v1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private retain([III)Landroid/icu/text/UnicodeSet;
    .locals 9

    .line 3034
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 3036
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    .line 3037
    aget v1, p1, v0

    const/4 v2, 0x1

    move v4, v0

    move v0, v2

    move v3, v0

    :goto_0
    const/high16 v5, 0x110000

    const/4 v6, 0x2

    if-eqz p3, :cond_c

    if-eq p3, v2, :cond_8

    if-eq p3, v6, :cond_4

    const/4 v7, 0x3

    if-eq p3, v7, :cond_0

    goto :goto_0

    :cond_0
    if-ge p2, v1, :cond_1

    .line 3056
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v4, 0x1

    aput p2, v5, v4

    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v0, 0x1

    aget p2, p2, v0

    :goto_1
    xor-int/lit8 p3, p3, 0x1

    move v0, v4

    move v4, v6

    goto :goto_0

    :cond_1
    if-ge v1, p2, :cond_2

    .line 3058
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v4, 0x1

    aput v1, v5, v4

    add-int/lit8 v1, v3, 0x1

    aget v3, p1, v3

    goto :goto_5

    :cond_2
    if-ne p2, v5, :cond_3

    goto/16 :goto_8

    .line 3061
    :cond_3
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v4, 0x1

    aput p2, v1, v4

    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v0, 0x1

    aget p2, p2, v0

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 3062
    aget v3, p1, v3

    goto/16 :goto_9

    :cond_4
    if-ge v1, p2, :cond_5

    add-int/lit8 v1, v3, 0x1

    .line 3078
    aget v3, p1, v3

    :goto_2
    xor-int/lit8 p3, p3, 0x2

    :goto_3
    move v8, v3

    move v3, v1

    :goto_4
    move v1, v8

    goto :goto_0

    :cond_5
    if-ge p2, v1, :cond_6

    .line 3080
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v4, 0x1

    aput p2, v5, v4

    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v0, 0x1

    aget p2, p2, v0

    goto :goto_1

    :cond_6
    if-ne p2, v5, :cond_7

    goto :goto_8

    .line 3083
    :cond_7
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v0, 0x1

    aget p2, p2, v0

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 3084
    aget v3, p1, v3

    goto :goto_6

    :cond_8
    if-ge p2, v1, :cond_9

    .line 3067
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v0, 0x1

    aget p2, p2, v0

    goto :goto_7

    :cond_9
    if-ge v1, p2, :cond_a

    .line 3069
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v4, 0x1

    aput v1, v5, v4

    add-int/lit8 v1, v3, 0x1

    aget v3, p1, v3

    :goto_5
    xor-int/lit8 p3, p3, 0x2

    move v4, v6

    goto :goto_3

    :cond_a
    if-ne p2, v5, :cond_b

    goto :goto_8

    .line 3072
    :cond_b
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v0, 0x1

    aget p2, p2, v0

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 3073
    aget v3, p1, v3

    :goto_6
    xor-int/2addr p3, v6

    goto :goto_a

    :cond_c
    if-ge p2, v1, :cond_d

    .line 3045
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v0, 0x1

    aget p2, p2, v0

    :goto_7
    xor-int/lit8 p3, p3, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_d
    if-ge v1, p2, :cond_e

    add-int/lit8 v1, v3, 0x1

    .line 3047
    aget v3, p1, v3

    goto :goto_2

    :cond_e
    if-ne p2, v5, :cond_f

    .line 3089
    :goto_8
    iget-object p1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 p2, v4, 0x1

    aput v5, p1, v4

    .line 3090
    iput p2, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 3092
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3093
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3094
    iput-object p2, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    const/4 p1, 0x0

    .line 3095
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    .line 3050
    :cond_f
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v5, v4, 0x1

    aput p2, v1, v4

    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v0, 0x1

    aget p2, p2, v0

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 3051
    aget v3, p1, v3

    :goto_9
    xor-int/2addr p3, v6

    move v4, v5

    :goto_a
    move v8, v3

    move v3, v0

    move v0, v1

    goto/16 :goto_4
.end method

.method public static setDefaultXSymbolTable(Landroid/icu/text/UnicodeSet$XSymbolTable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 4762
    sput-object v0, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    .line 4763
    sput-object p0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    return-void
.end method

.method private spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 4

    .line 4027
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    .line 4031
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 4034
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 4035
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eq p3, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 4039
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr p2, v2

    if-lt p2, v0, :cond_1

    :goto_1
    if-eqz p4, :cond_3

    .line 4041
    iput v1, p4, Landroid/icu/util/OutputInt;->value:I

    :cond_3
    return p2
.end method

.method private static syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
    .locals 3

    .line 2794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2795
    invoke-virtual {p0}, Landroid/icu/impl/RuleCharacterIterator;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toArray(Landroid/icu/text/UnicodeSet;)[Ljava/lang/String;
    .locals 1

    .line 2822
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private xor([III)Landroid/icu/text/UnicodeSet;
    .locals 6

    .line 2886
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    .line 2888
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    goto :goto_0

    .line 2901
    :cond_0
    aget p3, p1, v0

    goto :goto_1

    .line 2895
    :cond_1
    :goto_0
    aget p3, p1, v0

    if-nez p3, :cond_2

    .line 2897
    aget p3, p1, v1

    :goto_1
    move v2, v1

    move v5, v0

    move v0, p3

    move p3, v5

    goto :goto_2

    :cond_2
    move p3, v0

    move v2, p3

    :goto_2
    if-ge p2, v0, :cond_3

    .line 2907
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v4, p3, 0x1

    aput p2, v3, p3

    .line 2908
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 p3, v1, 0x1

    aget p2, p2, v1

    move v1, p3

    :goto_3
    move p3, v4

    goto :goto_2

    :cond_3
    if-ge v0, p2, :cond_4

    .line 2910
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v4, p3, 0x1

    aput v0, v3, p3

    add-int/lit8 p3, v2, 0x1

    .line 2911
    aget v0, p1, v2

    move v2, p3

    goto :goto_3

    :cond_4
    const/high16 v0, 0x110000

    if-eq p2, v0, :cond_5

    .line 2914
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v1, 0x1

    aget p2, p2, v1

    add-int/lit8 v1, v2, 0x1

    .line 2915
    aget v2, p1, v2

    move v5, v1

    move v1, v0

    move v0, v2

    move v2, v5

    goto :goto_2

    .line 2917
    :cond_5
    iget-object p1, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 p2, p3, 0x1

    aput v0, p1, p3

    .line 2918
    iput p2, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 2923
    iget-object p2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 2924
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 2925
    iput-object p2, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    const/4 p1, 0x0

    .line 2926
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public _generatePattern(Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x1

    .line 740
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->_generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public _generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
    .locals 0

    .line 751
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public final add(I)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1204
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1205
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public add(II)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1148
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1149
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public final add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 1306
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1307
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1309
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1310
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    goto :goto_0

    .line 1312
    :cond_0
    invoke-direct {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    :goto_0
    return-object p0
.end method

.method public add(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 2832
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public addAll(II)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1159
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1160
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 2139
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2140
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add([III)Landroid/icu/text/UnicodeSet;

    .line 2141
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 2

    .line 1346
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x0

    .line 1348
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1349
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 1350
    invoke-direct {p0, v1, v1}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    .line 1348
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 2842
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2843
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2844
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addAll([Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 4339
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 4340
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4341
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAllTo(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>(TT;)TT;"
        }
    .end annotation

    .line 2804
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public addAllTo([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 2814
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public addBridges(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4573
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    .line 4574
    new-instance v1, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->nextRange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4575
    iget v0, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    if-eqz v0, :cond_0

    iget v0, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v2, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v0, v2, :cond_0

    iget v0, v1, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    const v2, 0x10ffff

    if-eq v0, v2, :cond_0

    iget v0, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget v2, v1, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    invoke-virtual {p1, v0, v2}, Landroid/icu/text/UnicodeSet;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4576
    iget v0, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget v2, v1, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    invoke-virtual {p0, v0, v2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 1081
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 3311
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    .line 3313
    new-instance p1, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;

    invoke-direct {p1, p2}, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;-><init>(I)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    const/16 v0, 0x7000

    if-ne p1, v0, :cond_1

    .line 3315
    new-instance p1, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;

    invoke-direct {p1, p2}, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;-><init>(I)V

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 3317
    :cond_1
    new-instance v0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/UnicodeSet$IntPropertyFilter;-><init>(II)V

    sget-object p2, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {p2, p1}, Landroid/icu/impl/UCharacterProperty;->getSource(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    :goto_0
    return-object p0
.end method

.method public final applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    .locals 2

    .line 545
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 546
    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public applyPattern(Ljava/lang/String;I)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 574
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 2349
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2352
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2353
    new-instance v3, Landroid/icu/impl/RuleCharacterIterator;

    invoke-direct {v3, p1, p3, p2}, Landroid/icu/impl/RuleCharacterIterator;-><init>(Ljava/lang/String;Landroid/icu/text/SymbolTable;Ljava/text/ParsePosition;)V

    .line 2355
    invoke-direct {p0, v3, p3, v1, p4}, Landroid/icu/text/UnicodeSet;->applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;I)V

    .line 2356
    invoke-virtual {v3}, Landroid/icu/impl/RuleCharacterIterator;->inVariable()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "Extra chars in variable value"

    .line 2357
    invoke-static {v3, p3}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    .line 2359
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2361
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_3

    .line 2365
    invoke-static {p1, p2}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p2

    .line 2368
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p2, p3, :cond_4

    goto :goto_1

    .line 2369
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Parse of \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" failed at "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public applyPattern(Ljava/lang/String;Z)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 559
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    .locals 1

    const/4 v0, 0x0

    .line 3350
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;
    .locals 7

    .line 3365
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    if-eqz p3, :cond_0

    .line 3370
    instance-of v0, p3, Landroid/icu/text/UnicodeSet$XSymbolTable;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/icu/text/UnicodeSet$XSymbolTable;

    .line 3372
    invoke-virtual {p3, p1, p2, p0}, Landroid/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p0

    .line 3376
    :cond_0
    sget-object p3, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    if-eqz p3, :cond_1

    .line 3377
    invoke-virtual {p3, p1, p2, p0}, Landroid/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object p0

    .line 3382
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x40

    const/16 v1, 0x100a

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x2000

    const/4 v5, -0x1

    if-lez p3, :cond_10

    .line 3383
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result p1

    const/16 p3, 0x1005

    if-ne p1, p3, :cond_2

    move p1, v4

    :cond_2
    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_5

    :cond_3
    const/16 p3, 0x1000

    if-lt p1, p3, :cond_4

    const/16 p3, 0x1016

    if-lt p1, p3, :cond_5

    :cond_4
    if-lt p1, v4, :cond_9

    const/16 p3, 0x2001

    if-ge p1, p3, :cond_9

    .line 3394
    :cond_5
    :try_start_0
    invoke-static {p1, p2}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p3

    const/16 v0, 0x1002

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1010

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1011

    if-ne p1, v0, :cond_6

    goto :goto_0

    .line 3404
    :cond_6
    throw p3

    .line 3400
    :cond_7
    :goto_0
    invoke-static {p2}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    const/16 p2, 0xff

    if-gt v3, p2, :cond_8

    goto/16 :goto_3

    .line 3402
    :cond_8
    throw p3

    :cond_9
    const/16 p3, 0x3000

    if-eq p1, p3, :cond_f

    const/16 p3, 0x4000

    if-eq p1, p3, :cond_e

    const/16 p3, 0x4005

    if-eq p1, p3, :cond_c

    const/16 p3, 0x400b

    if-eq p1, p3, :cond_b

    const/16 p3, 0x7000

    if-ne p1, p3, :cond_a

    .line 3444
    invoke-static {v1, p2}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v3

    goto/16 :goto_3

    .line 3450
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported property"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3433
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unicode_1_Name (na1) not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3422
    :cond_c
    invoke-static {p2}, Landroid/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3423
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v5, :cond_d

    .line 3427
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 3428
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    return-object p0

    .line 3425
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid character name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3439
    :cond_e
    invoke-static {p2}, Landroid/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object p1

    .line 3440
    new-instance p2, Landroid/icu/text/UnicodeSet$VersionFilter;

    invoke-direct {p2, p1}, Landroid/icu/text/UnicodeSet$VersionFilter;-><init>(Landroid/icu/util/VersionInfo;)V

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    return-object p0

    .line 3413
    :cond_f
    invoke-static {p2}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 3414
    new-instance p3, Landroid/icu/text/UnicodeSet$NumericValueFilter;

    invoke-direct {p3, p1, p2}, Landroid/icu/text/UnicodeSet$NumericValueFilter;-><init>(D)V

    invoke-direct {p0, p3, v3}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    return-object p0

    .line 3459
    :cond_10
    sget-object p3, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    .line 3461
    invoke-virtual {p3, v4, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v6

    if-ne v6, v5, :cond_18

    .line 3464
    invoke-virtual {p3, v1, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v6

    if-ne v6, v5, :cond_17

    .line 3466
    invoke-virtual {p3, p1}, Landroid/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result p3

    if-ne p3, v5, :cond_11

    move v1, v5

    goto :goto_1

    :cond_11
    move v1, p3

    :goto_1
    if-ltz v1, :cond_12

    if-ge v1, v0, :cond_12

    move p1, v1

    goto :goto_3

    :cond_12
    if-ne v1, v5, :cond_16

    const-string p3, "ANY"

    .line 3473
    invoke-static {p3, p1}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_13

    const p1, 0x10ffff

    .line 3474
    invoke-virtual {p0, v2, p1}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    return-object p0

    :cond_13
    const-string p3, "ASCII"

    .line 3476
    invoke-static {p3, p1}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_14

    const/16 p1, 0x7f

    .line 3477
    invoke-virtual {p0, v2, p1}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    return-object p0

    :cond_14
    const-string p3, "Assigned"

    .line 3479
    invoke-static {p3, p1}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_15

    move v2, v3

    move p1, v4

    goto :goto_3

    .line 3486
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid property alias: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3491
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing property value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    move p1, v1

    goto :goto_2

    :cond_18
    move p1, v4

    :goto_2
    move v3, v6

    .line 3497
    :goto_3
    invoke-virtual {p0, p1, v3}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    if-eqz v2, :cond_19

    .line 3499
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    :cond_19
    return-object p0
.end method

.method public charAt(I)I
    .locals 5

    if-ltz p1, :cond_1

    .line 1123
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    and-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1125
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    add-int/lit8 v4, v3, 0x1

    .line 1126
    aget v2, v2, v3

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_0

    add-int/2addr v1, p1

    return v1

    :cond_0
    sub-int/2addr p1, v2

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public clear()Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 2197
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2198
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    const/high16 v2, 0x110000

    aput v2, v0, v1

    const/4 v0, 0x1

    .line 2199
    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v0, 0x0

    .line 2200
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 2201
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 498
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 501
    :cond_0
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 502
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    iput-object v1, v0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    .line 503
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    iput-object p0, v0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 4110
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 290
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public closeOver(I)Landroid/icu/text/UnicodeSet;
    .locals 12

    .line 3761
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_7

    .line 3763
    sget-object v0, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 3764
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 3765
    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 3771
    iget-object v3, v1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    .line 3774
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v3

    .line 3776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    .line 3779
    invoke-virtual {p0, v6}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v7

    .line 3780
    invoke-virtual {p0, v6}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v8

    if-eqz p1, :cond_1

    :goto_1
    if-gt v7, v8, :cond_2

    .line 3785
    invoke-virtual {v0, v7, v1}, Landroid/icu/impl/UCaseProps;->addCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gt v7, v8, :cond_2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 3791
    invoke-virtual {v0, v7, v9, v4, v10}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v11

    .line 3792
    invoke-static {v1, v11, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3794
    invoke-virtual {v0, v7, v9, v4, v10}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v11

    .line 3795
    invoke-static {v1, v11, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3797
    invoke-virtual {v0, v7, v9, v4, v10}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/Appendable;I)I

    move-result v9

    .line 3798
    invoke-static {v1, v9, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    .line 3800
    invoke-virtual {v0, v7, v4, v5}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v9

    .line 3801
    invoke-static {v1, v9, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3805
    :cond_3
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    .line 3807
    iget-object p1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3808
    invoke-static {v2, v5}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3809
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/UCaseProps;->addStringCaseClosure(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3810
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_3

    .line 3814
    :cond_5
    invoke-static {v2}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p1

    .line 3815
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3817
    invoke-static {v2, v3}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 3818
    invoke-static {v2, v3, p1}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 3819
    invoke-static {v2, v3}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 3820
    invoke-static {v3, v5}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_4

    .line 3824
    :cond_6
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    :cond_7
    return-object p0
.end method

.method public compact()Landroid/icu/text/UnicodeSet;
    .locals 4

    .line 2244
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2245
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 2246
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 2247
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2248
    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    :cond_0
    const/4 v0, 0x0

    .line 2250
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    .line 2251
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    return-object p0
.end method

.method public compareTo(Landroid/icu/text/UnicodeSet;)I
    .locals 1

    .line 4392
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->compareTo(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I

    move-result p0

    return p0
.end method

.method public compareTo(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I
    .locals 7

    .line 4399
    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v0, :cond_3

    .line 4400
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v4

    sub-int/2addr v0, v4

    if-eqz v0, :cond_3

    if-gez v0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    .line 4402
    :goto_0
    sget-object p1, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-ne p2, p1, :cond_1

    move v2, v3

    :cond_1
    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1

    :cond_3
    move p2, v2

    .line 4407
    :goto_2
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v0, p2

    iget-object v5, p1, Landroid/icu/text/UnicodeSet;->list:[I

    aget v6, v5, p2

    sub-int/2addr v4, v6

    const/high16 v6, 0x110000

    if-eqz v4, :cond_b

    .line 4409
    aget v0, v0, p2

    if-ne v0, v6, :cond_5

    .line 4410
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 4411
    :cond_4
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4412
    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->list:[I

    aget p1, p1, p2

    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    .line 4414
    :cond_5
    aget v0, v5, p2

    if-ne v0, v6, :cond_9

    .line 4415
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 4416
    :cond_6
    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4417
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget p0, p0, p2

    invoke-static {p1, p0}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_3

    :cond_7
    if-gez p0, :cond_8

    move v1, v3

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1

    :cond_9
    and-int/lit8 p0, p2, 0x1

    if-nez p0, :cond_a

    goto :goto_4

    :cond_a
    neg-int v4, v4

    :goto_4
    return v4

    .line 4423
    :cond_b
    aget v0, v0, p2

    if-ne v0, v6, :cond_c

    .line 4427
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result p0

    return p0

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method public compareTo(Ljava/lang/Iterable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 4433
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 290
    check-cast p1, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->compareTo(Landroid/icu/text/UnicodeSet;)I

    move-result p0

    return p0
.end method

.method public complement()Landroid/icu/text/UnicodeSet;
    .locals 4

    .line 1575
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1576
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1577
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v2, v3

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1578
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    goto :goto_0

    .line 1580
    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    .line 1581
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1582
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aput v1, v0, v1

    .line 1583
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    :goto_0
    const/4 v0, 0x0

    .line 1585
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0
.end method

.method public final complement(I)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1567
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public complement(II)Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 1547
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_2

    const v2, 0x10ffff

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v2, :cond_1

    if-gt p1, p2, :cond_0

    .line 1555
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->xor([III)Landroid/icu/text/UnicodeSet;

    :cond_0
    const/4 p1, 0x0

    .line 1557
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    .line 1552
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p2

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1549
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final complement(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 1598
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1599
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1601
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1602
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1605
    :cond_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    .line 1607
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    goto :goto_1

    .line 1609
    :cond_1
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    :goto_1
    return-object p0
.end method

.method public complementAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 2186
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2187
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->xor([III)Landroid/icu/text/UnicodeSet;

    .line 2188
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/icu/impl/SortedSetRelation;->doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;

    return-object p0
.end method

.method public final complementAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1372
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->complementAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public contains(I)Z
    .locals 3

    if-ltz p1, :cond_3

    const v0, 0x10ffff

    if-gt p1, v0, :cond_3

    .line 1624
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v0, :cond_0

    .line 1625
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {p0, p1}, Landroid/icu/impl/BMPSet;->contains(I)Z

    move-result p0

    return p0

    .line 1627
    :cond_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_1

    .line 1628
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeSetStringSpan;->contains(I)Z

    move-result p0

    return p0

    .line 1640
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1622
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid code point U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    const/4 p1, 0x6

    invoke-static {v1, v2, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contains(II)Z
    .locals 3

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_2

    const v2, 0x10ffff

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v2, :cond_1

    .line 1819
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1820
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget p0, p0, p1

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1813
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p2

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1810
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final contains(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1831
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1833
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1835
    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    return p0
.end method

.method public containsAll(Landroid/icu/text/UnicodeSet;)Z
    .locals 13

    .line 1850
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    .line 1855
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1856
    iget v3, p1, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, v2

    move v7, v5

    move v6, v4

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_0
    if-eqz v5, :cond_2

    if-lt v6, v1, :cond_1

    if-eqz v7, :cond_0

    if-lt v8, v3, :cond_0

    goto :goto_1

    :cond_0
    return v4

    .line 1868
    :cond_1
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v9, v6, 0x1

    aget v6, v5, v6

    add-int/lit8 v11, v9, 0x1

    .line 1869
    aget v5, v5, v9

    move v9, v6

    move v6, v11

    move v11, v5

    :cond_2
    if-eqz v7, :cond_5

    if-lt v8, v3, :cond_4

    .line 1895
    :goto_1
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_3

    return v4

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v5, v8, 0x1

    .line 1876
    aget v7, v0, v8

    add-int/lit8 v8, v5, 0x1

    .line 1877
    aget v5, v0, v5

    move v12, v5

    move v10, v7

    :cond_5
    if-lt v10, v11, :cond_6

    move v5, v2

    move v7, v4

    goto :goto_0

    :cond_6
    if-lt v10, v9, :cond_7

    if-gt v12, v11, :cond_7

    move v7, v2

    move v5, v4

    goto :goto_0

    :cond_7
    return v4
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4307
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 4308
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public containsAll(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1930
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1931
    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 1932
    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1933
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1936
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 1930
    :cond_1
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public containsNone(II)Z
    .locals 4

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_3

    const v2, 0x10ffff

    if-gt p1, v2, :cond_3

    if-ltz p2, :cond_2

    if-gt p2, v2, :cond_2

    const/4 v0, -0x1

    .line 2002
    :cond_0
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget v3, v1, v0

    if-ge p1, v3, :cond_0

    and-int/lit8 p0, v0, 0x1

    if-nez p0, :cond_1

    .line 2004
    aget p0, v1, v0

    if-ge p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1998
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p2

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1995
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containsNone(Landroid/icu/text/UnicodeSet;)Z
    .locals 13

    .line 2018
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    .line 2023
    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2024
    iget v3, p1, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, v2

    move v7, v5

    move v6, v4

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_0
    if-eqz v5, :cond_1

    if-lt v6, v1, :cond_0

    goto :goto_1

    .line 2033
    :cond_0
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v9, v6, 0x1

    aget v6, v5, v6

    add-int/lit8 v11, v9, 0x1

    .line 2034
    aget v5, v5, v9

    move v9, v6

    move v6, v11

    move v11, v5

    :cond_1
    if-eqz v7, :cond_4

    if-lt v8, v3, :cond_3

    .line 2060
    :goto_1
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v0, 0x5

    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-static {p0, v0, p1}, Landroid/icu/impl/SortedSetRelation;->hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z

    move-result p0

    if-nez p0, :cond_2

    return v4

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v5, v8, 0x1

    .line 2041
    aget v7, v0, v8

    add-int/lit8 v8, v5, 0x1

    .line 2042
    aget v5, v0, v5

    move v12, v5

    move v10, v7

    :cond_4
    if-lt v10, v11, :cond_5

    move v5, v2

    move v7, v4

    goto :goto_0

    :cond_5
    if-lt v9, v12, :cond_6

    move v7, v2

    move v5, v4

    goto :goto_0

    :cond_6
    return v4
.end method

.method public containsNone(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 2094
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsNone(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4319
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 4320
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final containsSome(II)Z
    .locals 0

    .line 2105
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->containsNone(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final containsSome(Landroid/icu/text/UnicodeSet;)Z
    .locals 0

    .line 2115
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Landroid/icu/text/UnicodeSet;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final containsSome(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 2125
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final containsSome(Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4331
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Ljava/lang/Iterable;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 2274
    :cond_1
    :try_start_0
    check-cast p1, Landroid/icu/text/UnicodeSet;

    .line 2275
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    iget v3, p1, Landroid/icu/text/UnicodeSet;->len:I

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    move v2, v0

    .line 2276
    :goto_0
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-ge v2, v3, :cond_4

    .line 2277
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v3, v3, v2

    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2279
    :cond_4
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v1

    :catch_0
    return v0
.end method

.method public findIn(Ljava/lang/CharSequence;IZ)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4594
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 4595
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 4596
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eq v1, p3, :cond_0

    goto :goto_1

    .line 4594
    :cond_0
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public findLastIn(Ljava/lang/CharSequence;IZ)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    add-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_1

    .line 4618
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 4619
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eq v2, p3, :cond_0

    goto :goto_1

    .line 4617
    :cond_0
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p2, :cond_2

    move p2, v0

    :cond_2
    return p2
.end method

.method public freeze()Landroid/icu/text/UnicodeSet;
    .locals 4

    .line 3906
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 3912
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    .line 3913
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v0, v0

    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v1, 0x10

    if-le v0, v2, :cond_1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3917
    :cond_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 3918
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    .line 3920
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v3, v0, v2

    aput v3, v1, v2

    move v1, v2

    goto :goto_0

    .line 3925
    :cond_1
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3926
    new-instance v0, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v2, 0x7f

    invoke-direct {v0, p0, v1, v2}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    .line 3928
    :cond_2
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v0}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3935
    :cond_3
    new-instance v0, Landroid/icu/impl/BMPSet;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/BMPSet;-><init>([II)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    :cond_4
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 290
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public getRangeCount()I
    .locals 0

    .line 2212
    iget p0, p0, Landroid/icu/text/UnicodeSet;->len:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getRangeEnd(I)I
    .locals 0

    .line 2236
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getRangeStart(I)I
    .locals 0

    .line 2224
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method public getRegexEquivalent()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1974
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1975
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1977
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1978
    invoke-direct {p0, v0, v2, v1}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    .line 1979
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x7c

    .line 1980
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1981
    invoke-static {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    const-string p0, ")"

    .line 1983
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 2294
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v1, 0x0

    .line 2295
    :goto_0
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-ge v1, v2, :cond_0

    const v2, 0xf4243

    mul-int/2addr v0, v2

    .line 2297
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(I)I
    .locals 5

    if-ltz p1, :cond_2

    const v0, 0x10ffff

    if-gt p1, v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 1098
    :goto_0
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    if-ge p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 1102
    aget v2, v2, v3

    if-ge p1, v2, :cond_1

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    return v1

    :cond_1
    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    move v0, v4

    goto :goto_0

    .line 1093
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid code point U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    const/4 p1, 0x6

    invoke-static {v1, v2, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 2

    .line 835
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFrozen()Z
    .locals 1

    .line 3896
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

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

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4220
    new-instance v0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 10

    const/4 v0, 0x0

    .line 891
    aget v1, p2, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, p3, :cond_2

    const p1, 0xffff

    .line 895
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p4, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    return v0

    .line 901
    :cond_2
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-eqz v1, :cond_d

    .line 910
    aget v1, p2, v0

    if-ge v1, p3, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v0

    .line 915
    :goto_0
    aget v4, p2, v0

    invoke-interface {p1, v4}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v4

    .line 921
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v1, :cond_5

    move v8, v0

    goto :goto_2

    .line 927
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz v1, :cond_6

    if-le v8, v4, :cond_6

    goto :goto_4

    :cond_6
    if-eq v8, v4, :cond_7

    goto :goto_1

    .line 934
    :cond_7
    aget v8, p2, v0

    invoke-static {p1, v8, p3, v7}, Landroid/icu/text/UnicodeSet;->matchRest(Landroid/icu/text/Replaceable;IILjava/lang/String;)I

    move-result v8

    if-eqz p4, :cond_9

    if-eqz v1, :cond_8

    .line 937
    aget v9, p2, v0

    sub-int v9, p3, v9

    goto :goto_3

    :cond_8
    aget v9, p2, v0

    sub-int/2addr v9, p3

    :goto_3
    if-ne v8, v9, :cond_9

    return v3

    .line 944
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v8, v7, :cond_4

    if-le v8, v6, :cond_a

    move v6, v8

    :cond_a
    if-eqz v1, :cond_4

    if-ge v8, v6, :cond_4

    :cond_b
    :goto_4
    if-eqz v6, :cond_d

    .line 961
    aget p0, p2, v0

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    neg-int v6, v6

    :goto_5
    add-int/2addr p0, v6

    aput p0, p2, v0

    return v2

    .line 965
    :cond_d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeFilter;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result p0

    return p0
.end method

.method public matchesAt(Ljava/lang/CharSequence;I)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1020
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 1021
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    .line 1024
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1025
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1026
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    .line 1027
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v0, :cond_1

    goto :goto_0

    :cond_1
    if-le v4, v0, :cond_0

    goto :goto_2

    .line 1034
    :cond_2
    :goto_1
    invoke-static {p1, p2, v2}, Landroid/icu/text/UnicodeSet;->matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I

    move-result v0

    if-le v1, v0, :cond_3

    goto :goto_2

    .line 1037
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_2

    .line 1038
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move v1, v0

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v0, 0x2

    if-ge v1, v0, :cond_6

    .line 1043
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 1044
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    :cond_6
    add-int/2addr p2, v1

    return p2
.end method

.method public matchesIndexValue(I)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 854
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 855
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v2

    .line 856
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v4

    and-int/lit16 v5, v2, -0x100

    and-int/lit16 v6, v4, -0x100

    if-ne v5, v6, :cond_0

    and-int/lit16 v2, v2, 0xff

    if-gt v2, p1, :cond_1

    and-int/lit16 v2, v4, 0xff

    if-gt p1, v2, :cond_1

    return v3

    :cond_0
    and-int/lit16 v2, v2, 0xff

    if-le v2, p1, :cond_2

    and-int/lit16 v2, v4, 0xff

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v3

    .line 865
    :cond_3
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 866
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 872
    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, p1, :cond_4

    return v3

    :cond_5
    return v0
.end method

.method public ranges()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    .line 4177
    new-instance v0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/text/UnicodeSet$EntryRangeIterable;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$1;)V

    return-object v0
.end method

.method public final remove(I)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1514
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public remove(II)Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 1493
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_2

    const v2, 0x10ffff

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v2, :cond_1

    if-gt p1, p2, :cond_0

    .line 1501
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, p2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-object p0

    .line 1498
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p2

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1495
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 1525
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1527
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1528
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    goto :goto_0

    .line 1530
    :cond_0
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    :goto_0
    return-object p0
.end method

.method public removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 2171
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2172
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    .line 2173
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final removeAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1382
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public removeAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 4351
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 4352
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 4353
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->remove(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final removeAllStrings()Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 1390
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 1391
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    const/4 v0, 0x0

    .line 1393
    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final retain(I)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1453
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->retain(II)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public retain(II)Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 1430
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x6

    const-string v1, "Invalid code point U+"

    if-ltz p1, :cond_2

    const v2, 0x10ffff

    if-gt p1, v2, :cond_2

    if-ltz p2, :cond_1

    if-gt p2, v2, :cond_1

    if-gt p1, p2, :cond_0

    .line 1438
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 1440
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    :goto_0
    return-object p0

    .line 1435
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p2

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1432
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final retain(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 2

    .line 1465
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1467
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1468
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 1472
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 1473
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1474
    iput-object p1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    goto :goto_0

    .line 1476
    :cond_1
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->retain(II)Landroid/icu/text/UnicodeSet;

    :goto_0
    return-object p0
.end method

.method public retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 2155
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 2156
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    .line 2157
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->retainAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final retainAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1362
    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public retainAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    .line 4362
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 4364
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 4365
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;

    .line 4366
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public set(II)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 516
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 517
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 518
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 1

    .line 528
    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    .line 529
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    .line 530
    iget v0, p1, Landroid/icu/text/UnicodeSet;->len:I

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    .line 531
    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    .line 532
    new-instance v0, Ljava/util/TreeSet;

    iget-object p1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    return-object p0
.end method

.method public size()I
    .locals 5

    .line 822
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 824
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    :cond_0
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 5

    .line 3963
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-lt p2, v0, :cond_1

    return v0

    .line 3969
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3971
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result p0

    return p0

    .line 3973
    :cond_2
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_3

    .line 3974
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0

    .line 3975
    :cond_3
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3976
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_4

    const/16 v0, 0x21

    goto :goto_1

    :cond_4
    const/16 v0, 0x22

    .line 3978
    :goto_1
    new-instance v2, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v0}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 3979
    invoke-virtual {v2}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3980
    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0

    .line 3984
    :cond_5
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result p0

    return p0
.end method

.method public span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 1

    const/4 v0, 0x0

    .line 3949
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0
.end method

.method public spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_6

    .line 4001
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-lt p2, v0, :cond_1

    return v0

    .line 4007
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v0, :cond_2

    .line 4010
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result p0

    return p0

    .line 4011
    :cond_2
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v0, :cond_3

    .line 4012
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result p0

    return p0

    .line 4013
    :cond_3
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4014
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_4

    const/16 v0, 0x21

    goto :goto_1

    :cond_4
    const/16 v0, 0x22

    :goto_1
    or-int/lit8 v0, v0, 0x40

    .line 4017
    new-instance v1, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v2, v0}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4018
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result p0

    return p0

    .line 4021
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result p0

    return p0

    .line 3999
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "outCount must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 5

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    .line 4070
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 4071
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 4073
    :cond_1
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v1, :cond_2

    .line 4075
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/BMPSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0

    .line 4077
    :cond_2
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v1, :cond_3

    .line 4078
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0

    .line 4079
    :cond_3
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4080
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v1, :cond_4

    const/16 v1, 0x11

    goto :goto_0

    :cond_4
    const/16 v1, 0x12

    .line 4083
    :goto_0
    new-instance v2, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3, v1}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    .line 4084
    invoke-virtual {v2}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4085
    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0

    .line 4090
    :cond_5
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-eq p3, v1, :cond_6

    const/4 v0, 0x1

    .line 4095
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p3

    .line 4096
    invoke-virtual {p0, p3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eq v0, v1, :cond_7

    goto :goto_1

    .line 4099
    :cond_7
    invoke-static {p3}, Ljava/lang/Character;->charCount(I)I

    move-result p3

    sub-int/2addr p2, p3

    if-gtz p2, :cond_6

    :goto_1
    return p2
.end method

.method public spanBack(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 1

    .line 4053
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0
.end method

.method public strings()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4547
    iget-object p0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public stripFrom(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 4638
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    xor-int/lit8 v2, p2, 0x1

    .line 4639
    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 4640
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4641
    invoke-virtual {p0, p1, v2, p2}, Landroid/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    move-result v1

    goto :goto_0

    .line 4643
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 1

    .line 680
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    invoke-direct {p0, v0, p1}, Landroid/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2307
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
