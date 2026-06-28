.class public Landroid/icu/text/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    }
.end annotation


# static fields
.field private static final ALL_CS_RECOGNIZERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/CharsetDetector$CSRecognizerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final kBufSize:I = 0x1f40


# instance fields
.field fByteStats:[S

.field fC1Bytes:Z

.field fDeclaredEncoding:Ljava/lang/String;

.field private fEnabledRecognizers:[Z

.field fInputBytes:[B

.field fInputLen:I

.field fInputStream:Ljava/io/InputStream;

.field fRawInput:[B

.field fRawLength:I

.field private fStripTags:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_UTF8;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_UTF8;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    new-array v0, v0, [B

    .line 407
    iput-object v0, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    const/16 v0, 0x100

    new-array v0, v0, [S

    .line 412
    iput-object v0, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 434
    iput-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    return-void
.end method

.method private MungeInput()V
    .locals 10

    .line 341
    iget-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    move v0, v2

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 342
    :goto_0
    iget v7, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-ge v0, v7, :cond_4

    iget-object v7, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    array-length v7, v7

    if-ge v3, v7, :cond_4

    .line 343
    iget-object v7, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v7, v7, v0

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_1

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v6, v1

    :cond_1
    if-nez v6, :cond_2

    .line 353
    iget-object v8, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    add-int/lit8 v9, v3, 0x1

    aput-byte v7, v8, v3

    move v3, v9

    :cond_2
    const/16 v8, 0x3e

    if-ne v7, v8, :cond_3

    move v6, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_4
    iput v3, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    goto :goto_1

    :cond_5
    move v4, v2

    move v5, v4

    :goto_1
    const/4 v0, 0x5

    if-lt v4, v0, :cond_6

    .line 369
    div-int/2addr v4, v0

    if-lt v4, v5, :cond_6

    iget v0, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_9

    iget v0, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    const/16 v3, 0x258

    if-le v0, v3, :cond_9

    .line 371
    :cond_6
    iget v0, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    const/16 v3, 0x1f40

    if-le v0, v3, :cond_7

    move v0, v3

    :cond_7
    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_8

    .line 378
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget-object v5, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v5, v5, v3

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 380
    :cond_8
    iput v3, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    .line 387
    :cond_9
    iget-object v0, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    move v0, v2

    .line 388
    :goto_3
    iget v3, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    if-ge v0, v3, :cond_a

    .line 389
    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    .line 390
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v5, v4, v3

    add-int/2addr v5, v1

    int-to-short v5, v5

    aput-short v5, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 393
    :cond_a
    iput-boolean v2, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    const/16 v0, 0x80

    :goto_4
    const/16 v2, 0x9f

    if-gt v0, v2, :cond_c

    .line 395
    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v2, v2, v0

    if-eqz v2, :cond_b

    .line 396
    iput-boolean v1, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    return-void
.end method

.method public static getAllDetectableCharsets()[Ljava/lang/String;
    .locals 3

    .line 286
    sget-object v0, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 287
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 288
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-object v2, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v2}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public detect()Landroid/icu/text/CharsetMatch;
    .locals 1

    .line 153
    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detectAll()[Landroid/icu/text/CharsetMatch;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 155
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public detectAll()[Landroid/icu/text/CharsetMatch;
    .locals 4

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-direct {p0}, Landroid/icu/text/CharsetDetector;->MungeInput()V

    const/4 v1, 0x0

    .line 182
    :goto_0
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 183
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 184
    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz v3, :cond_0

    aget-boolean v3, v3, v1

    goto :goto_1

    :cond_0
    iget-boolean v3, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    :goto_1
    if-eqz v3, :cond_1

    .line 186
    iget-object v2, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v2, p0}, Landroid/icu/text/CharsetRecognizer;->match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/icu/text/CharsetMatch;

    .line 195
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/icu/text/CharsetMatch;

    return-object p0
.end method

.method public enableInputFilter(Z)Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    .line 318
    iput-boolean p1, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    return v0
.end method

.method public getDetectableCharsets()[Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 507
    :goto_0
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 508
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 509
    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    goto :goto_1

    :cond_0
    aget-boolean v3, v3, v1

    :goto_1
    if-eqz v3, :cond_1

    .line 511
    iget-object v2, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v2}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 0

    .line 221
    iput-object p2, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    const/4 p2, 0x0

    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetDetector;->setText(Ljava/io/InputStream;)Landroid/icu/text/CharsetDetector;

    .line 226
    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detect()Landroid/icu/text/CharsetMatch;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 254
    iput-object p2, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    const/4 p2, 0x0

    .line 257
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetDetector;->setText([B)Landroid/icu/text/CharsetDetector;

    .line 259
    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detect()Landroid/icu/text/CharsetMatch;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const/4 p1, -0x1

    .line 265
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public inputFilterEnabled()Z
    .locals 0

    .line 302
    iget-boolean p0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    return p0
.end method

.method public setDeclaredEncoding(Ljava/lang/String;)Landroid/icu/text/CharsetDetector;
    .locals 0

    .line 74
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public setDetectableCharset(Ljava/lang/String;Z)Landroid/icu/text/CharsetDetector;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 536
    :goto_0
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 537
    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    .line 538
    iget-object v3, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v3}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    iget-boolean v2, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    if-ne v2, p2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :cond_2
    move v2, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 549
    iget-object p1, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez p1, :cond_3

    if-nez v2, :cond_3

    .line 551
    sget-object p1, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    .line 554
    :goto_2
    sget-object p1, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 555
    iget-object p1, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-boolean v2, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    aput-boolean v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 559
    :cond_3
    iget-object p1, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz p1, :cond_4

    .line 560
    aput-boolean p2, p1, v1

    :cond_4
    return-object p0

    .line 546
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid encoding: \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/io/InputStream;)Landroid/icu/text/CharsetDetector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    .line 110
    iget-object p1, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    const/16 v0, 0x1f40

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    new-array p1, v0, [B

    .line 111
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    :goto_0
    if-lez v0, :cond_1

    .line 118
    iget-object p1, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iget v2, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    iget v1, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    sub-int/2addr v0, p1

    goto :goto_0

    .line 125
    :cond_1
    :goto_1
    iget-object p1, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return-object p0
.end method

.method public setText([B)Landroid/icu/text/CharsetDetector;
    .locals 0

    .line 86
    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    .line 87
    array-length p1, p1

    iput p1, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    return-object p0
.end method
