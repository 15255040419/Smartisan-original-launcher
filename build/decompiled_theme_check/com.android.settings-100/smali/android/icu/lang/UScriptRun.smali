.class public final Landroid/icu/lang/UScriptRun;
.super Ljava/lang/Object;
.source "UScriptRun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/lang/UScriptRun$ParenStackEntry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static PAREN_STACK_DEPTH:I = 0x20

.field private static pairedCharExtra:I

.field private static pairedCharPower:I

.field private static pairedChars:[I

.field private static parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;


# instance fields
.field private emptyCharArray:[C

.field private fixupCount:I

.field private parenSP:I

.field private pushCount:I

.field private scriptCode:I

.field private scriptLimit:I

.field private scriptStart:I

.field private text:[C

.field private textIndex:I

.field private textLimit:I

.field private textStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 547
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    new-array v0, v0, [Landroid/icu/lang/UScriptRun$ParenStackEntry;

    sput-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    const/16 v0, 0x22

    new-array v0, v0, [I

    .line 625
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    .line 645
    sget-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    array-length v0, v0

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->highBit(I)B

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    .line 646
    sget-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    array-length v0, v0

    sget v1, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    sub-int/2addr v0, v1

    sput v0, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    return-void

    :array_0
    .array-data 4
        0x28
        0x29
        0x3c
        0x3e
        0x5b
        0x5d
        0x7b
        0x7d
        0xab
        0xbb
        0x2018
        0x2019
        0x201c
        0x201d
        0x2039
        0x203a
        0x3008
        0x3009
        0x300a
        0x300b
        0x300c
        0x300d
        0x300e
        0x300f
        0x3010
        0x3011
        0x3014
        0x3015
        0x3016
        0x3017
        0x3018
        0x3019
        0x301a
        0x301b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 534
    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 548
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v1, v0, v0}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 534
    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 548
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 86
    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 534
    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 548
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 534
    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 548
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 118
    invoke-virtual {p0, p1}, Landroid/icu/lang/UScriptRun;->reset([C)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 534
    iput-object v1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    .line 548
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 549
    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 550
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method private static final dec(I)I
    .locals 1

    const/4 v0, 0x1

    .line 460
    invoke-static {p0, v0}, Landroid/icu/lang/UScriptRun;->dec(II)I

    move-result p0

    return p0
.end method

.method private static final dec(II)I
    .locals 1

    .line 455
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    add-int/2addr p0, v0

    sub-int/2addr p0, p1

    invoke-static {p0}, Landroid/icu/lang/UScriptRun;->mod(I)I

    move-result p0

    return p0
.end method

.method private final fixup(I)V
    .locals 3

    .line 526
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    iget v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v0, v1}, Landroid/icu/lang/UScriptRun;->dec(II)I

    move-result v0

    .line 528
    :goto_0
    iget v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    if-lez v1, :cond_0

    .line 529
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    .line 530
    sget-object v1, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    aget-object v1, v1, v0

    iput p1, v1, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getPairIndex(I)I
    .locals 4

    .line 603
    sget v0, Landroid/icu/lang/UScriptRun;->pairedCharPower:I

    .line 606
    sget-object v1, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    sget v2, Landroid/icu/lang/UScriptRun;->pairedCharExtra:I

    aget v1, v1, v2

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    shr-int/lit8 v0, v0, 0x1

    .line 613
    sget-object v1, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    add-int v3, v2, v0

    aget v1, v1, v3

    if-lt p0, v1, :cond_1

    move v2, v3

    goto :goto_0

    .line 618
    :cond_2
    sget-object v0, Landroid/icu/lang/UScriptRun;->pairedChars:[I

    aget v0, v0, v2

    if-eq v0, p0, :cond_3

    const/4 v2, -0x1

    :cond_3
    return v2
.end method

.method private static final highBit(I)B
    .locals 3

    if-gtz p0, :cond_0

    const/16 p0, -0x20

    return p0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    const/16 v2, 0x10

    if-lt p0, v1, :cond_1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte v0, v2

    :cond_1
    const/16 v1, 0x100

    if-lt p0, v1, :cond_2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    if-lt p0, v2, :cond_3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    :cond_3
    const/4 v1, 0x4

    if-lt p0, v1, :cond_4

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_4
    const/4 v1, 0x2

    if-lt p0, v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_5
    return v0
.end method

.method private static final inc(I)I
    .locals 1

    const/4 v0, 0x1

    .line 450
    invoke-static {p0, v0}, Landroid/icu/lang/UScriptRun;->inc(II)I

    move-result p0

    return p0
.end method

.method private static final inc(II)I
    .locals 0

    add-int/2addr p0, p1

    .line 445
    invoke-static {p0}, Landroid/icu/lang/UScriptRun;->mod(I)I

    move-result p0

    return p0
.end method

.method private static final limitInc(I)I
    .locals 1

    .line 465
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method private static final mod(I)I
    .locals 1

    .line 440
    sget v0, Landroid/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    rem-int/2addr p0, v0

    return p0
.end method

.method private final pop()V
    .locals 3

    .line 494
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 498
    :cond_0
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 500
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 501
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 504
    :cond_1
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 505
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->dec(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 509
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 510
    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    :cond_2
    return-void
.end method

.method private final push(II)V
    .locals 2

    .line 484
    iget v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 485
    iget v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 487
    iget v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    .line 488
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    iget p0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    new-instance v1, Landroid/icu/lang/UScriptRun$ParenStackEntry;

    invoke-direct {v1, p1, p2}, Landroid/icu/lang/UScriptRun$ParenStackEntry;-><init>(II)V

    aput-object v1, v0, p0

    return-void
.end method

.method private static sameScript(II)Z
    .locals 1

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    if-le p1, v0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final stackIsEmpty()Z
    .locals 0

    .line 474
    iget p0, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final stackIsNotEmpty()Z
    .locals 0

    .line 479
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final syncFixup()V
    .locals 1

    const/4 v0, 0x0

    .line 521
    iput v0, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    return-void
.end method

.method private final top()Landroid/icu/lang/UScriptRun$ParenStackEntry;
    .locals 1

    .line 516
    sget-object v0, Landroid/icu/lang/UScriptRun;->parenStack:[Landroid/icu/lang/UScriptRun$ParenStackEntry;

    iget p0, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public final getScriptCode()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    iget p0, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    return p0
.end method

.method public final getScriptLimit()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget p0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    return p0
.end method

.method public final getScriptStart()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    iget p0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    return p0
.end method

.method public final next()Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    iget v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    iget v1, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 349
    :cond_0
    iput v2, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    .line 350
    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    .line 352
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->syncFixup()V

    .line 354
    :cond_1
    :goto_0
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    iget v1, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_7

    .line 355
    iget-object v3, p0, Landroid/icu/lang/UScriptRun;->text:[C

    iget v4, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    sub-int/2addr v0, v4

    invoke-static {v3, v4, v1, v0}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result v0

    .line 356
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    .line 357
    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v3

    .line 358
    invoke-static {v0}, Landroid/icu/lang/UScriptRun;->getPairIndex(I)I

    move-result v0

    .line 360
    iget v4, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    if-ltz v0, :cond_4

    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_2

    .line 370
    iget v4, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    invoke-direct {p0, v0, v4}, Landroid/icu/lang/UScriptRun;->push(II)V

    goto :goto_2

    :cond_2
    and-int/lit8 v4, v0, -0x2

    .line 374
    :goto_1
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->top()Landroid/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v5

    iget v5, v5, Landroid/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    if-eq v5, v4, :cond_3

    .line 375
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    goto :goto_1

    .line 378
    :cond_3
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 379
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->top()Landroid/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v3

    iget v3, v3, Landroid/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    .line 384
    :cond_4
    :goto_2
    iget v4, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    invoke-static {v4, v3}, Landroid/icu/lang/UScriptRun;->sameScript(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 385
    iget v1, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    if-gt v1, v2, :cond_5

    if-le v3, v2, :cond_5

    .line 386
    iput v3, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    .line 388
    iget v1, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    invoke-direct {p0, v1}, Landroid/icu/lang/UScriptRun;->fixup(I)V

    :cond_5
    if-ltz v0, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 394
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    goto :goto_0

    .line 400
    :cond_6
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    .line 405
    :cond_7
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    return v2
.end method

.method public final reset()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    :goto_0
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Landroid/icu/lang/UScriptRun;->pop()V

    goto :goto_0

    .line 155
    :cond_0
    iget v0, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptStart:I

    .line 156
    iput v0, p0, Landroid/icu/lang/UScriptRun;->scriptLimit:I

    const/4 v1, -0x1

    .line 157
    iput v1, p0, Landroid/icu/lang/UScriptRun;->scriptCode:I

    .line 158
    iput v1, p0, Landroid/icu/lang/UScriptRun;->parenSP:I

    const/4 v1, 0x0

    .line 159
    iput v1, p0, Landroid/icu/lang/UScriptRun;->pushCount:I

    .line 160
    iput v1, p0, Landroid/icu/lang/UScriptRun;->fixupCount:I

    .line 162
    iput v0, p0, Landroid/icu/lang/UScriptRun;->textIndex:I

    return-void
.end method

.method public final reset(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/icu/lang/UScriptRun;->text:[C

    if-eqz v0, :cond_0

    .line 184
    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    sub-int/2addr v0, p2

    if-gt p1, v0, :cond_1

    .line 191
    iput p1, p0, Landroid/icu/lang/UScriptRun;->textStart:I

    add-int/2addr p1, p2

    .line 192
    iput p1, p0, Landroid/icu/lang/UScriptRun;->textLimit:I

    .line 194
    invoke-virtual {p0}, Landroid/icu/lang/UScriptRun;->reset()V

    return-void

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final reset(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 284
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    return-void
.end method

.method public final reset(Ljava/lang/String;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 263
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public final reset([C)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 236
    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 239
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public final reset([CII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 213
    iget-object p1, p0, Landroid/icu/lang/UScriptRun;->emptyCharArray:[C

    .line 216
    :cond_0
    iput-object p1, p0, Landroid/icu/lang/UScriptRun;->text:[C

    .line 218
    invoke-virtual {p0, p2, p3}, Landroid/icu/lang/UScriptRun;->reset(II)V

    return-void
.end method
