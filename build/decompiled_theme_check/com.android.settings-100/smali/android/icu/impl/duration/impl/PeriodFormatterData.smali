.class public Landroid/icu/impl/duration/impl/PeriodFormatterData;
.super Ljava/lang/Object;
.source "PeriodFormatterData.java"


# static fields
.field private static final FORM_DUAL:I = 0x2

.field private static final FORM_HALF_SPELLED:I = 0x6

.field private static final FORM_PAUCAL:I = 0x3

.field private static final FORM_PLURAL:I = 0x0

.field private static final FORM_SINGULAR:I = 0x1

.field private static final FORM_SINGULAR_NO_OMIT:I = 0x5

.field private static final FORM_SINGULAR_SPELLED:I = 0x4

.field public static trace:Z = false


# instance fields
.field final dr:Landroid/icu/impl/duration/impl/DataRecord;

.field localeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/impl/duration/impl/DataRecord;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    .line 46
    iput-object p1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "data record is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "localename is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private computeForm(Landroid/icu/impl/duration/TimeUnit;IIZ)I
    .locals 8

    .line 518
    sget-boolean v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    if-eqz v0, :cond_0

    .line 519
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pfd.cf unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dr.pl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 522
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 527
    :cond_1
    div-int/lit16 v0, p2, 0x3e8

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p3, :cond_e

    if-eq p3, v5, :cond_e

    if-eq p3, v4, :cond_6

    .line 577
    iget-object p1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p1, p1, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 586
    :cond_2
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-ne p0, v3, :cond_5

    return v3

    :cond_3
    const/16 p0, 0x3e8

    if-ge p2, p0, :cond_5

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1

    .line 535
    :cond_6
    iget-object p3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p3, p3, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    if-eqz p3, :cond_d

    if-eq p3, v5, :cond_9

    if-eq p3, v4, :cond_9

    if-ne p3, v3, :cond_8

    .line 565
    div-int/lit16 p3, p2, 0x1f4

    if-eq p3, v5, :cond_7

    if-ne p3, v3, :cond_e

    :cond_7
    return v3

    .line 573
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 544
    :cond_9
    div-int/lit16 p3, p2, 0x1f4

    if-ne p3, v5, :cond_b

    .line 546
    iget-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p2, p2, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    if-eqz p2, :cond_a

    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    if-eqz p0, :cond_a

    const/4 p0, 0x6

    return p0

    :cond_a
    return v2

    :cond_b
    and-int/lit8 v6, p3, 0x1

    if-ne v6, v5, :cond_e

    .line 552
    iget-object v6, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-ne v6, v2, :cond_c

    const/16 v6, 0x15

    if-le p3, v6, :cond_c

    return v2

    :cond_c
    if-ne p3, v3, :cond_e

    .line 555
    iget-object p3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p3, p3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-ne p3, v5, :cond_e

    iget-object p3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p3, p3, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    if-eq p3, v4, :cond_e

    :cond_d
    return v1

    .line 598
    :cond_e
    sget-boolean p3, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    if-eqz p3, :cond_f

    if-nez p2, :cond_f

    .line 599
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EZeroHandling = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v7, v7, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    const/4 p3, 0x4

    if-nez p2, :cond_10

    .line 601
    iget-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p2, p2, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    if-ne p2, v5, :cond_10

    return p3

    .line 606
    :cond_10
    iget-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p2, p2, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-eqz p2, :cond_1e

    if-eq p2, v5, :cond_1d

    if-eq p2, v4, :cond_1a

    if-eq p2, v3, :cond_17

    if-eq p2, p3, :cond_14

    if-ne p2, v2, :cond_13

    if-ne v0, v4, :cond_11

    goto/16 :goto_5

    :cond_11
    if-ne v0, v5, :cond_12

    goto :goto_2

    :cond_12
    const/16 p0, 0xa

    if-le v0, p0, :cond_1e

    :goto_1
    move v4, v2

    goto :goto_5

    .line 670
    :cond_13
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dr.pl is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 671
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_14
    if-ne v0, v4, :cond_15

    goto :goto_5

    :cond_15
    if-ne v0, v5, :cond_16

    if-eqz p4, :cond_1c

    goto :goto_3

    .line 656
    :cond_16
    sget-object p0, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    if-ne p1, p0, :cond_1e

    const/16 p0, 0xb

    if-le v0, p0, :cond_1e

    goto :goto_1

    .line 622
    :cond_17
    rem-int/lit8 v0, v0, 0x64

    const/16 p0, 0x14

    if-le v0, p0, :cond_18

    .line 624
    rem-int/lit8 v0, v0, 0xa

    :cond_18
    if-ne v0, v5, :cond_19

    move v1, v5

    goto :goto_4

    :cond_19
    if-le v0, v5, :cond_1e

    if-ge v0, v2, :cond_1e

    move v1, v3

    goto :goto_4

    :cond_1a
    if-ne v0, v4, :cond_1b

    goto :goto_5

    :cond_1b
    if-ne v0, v5, :cond_1e

    :cond_1c
    :goto_2
    move v4, v5

    goto :goto_5

    :cond_1d
    if-ne v0, v5, :cond_1e

    :goto_3
    move v4, p3

    goto :goto_5

    :cond_1e
    :goto_4
    move v4, v1

    :goto_5
    return v4
.end method


# virtual methods
.method public allowZero()Z
    .locals 0

    .line 78
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    return p0
.end method

.method public appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I
    .locals 13

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p9

    const/4 v4, 0x0

    const/4 v5, 0x2

    move/from16 v6, p5

    if-ne v6, v5, :cond_0

    .line 263
    iget-object v7, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v7, v7, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    if-nez v7, :cond_0

    move v6, v4

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 267
    iget-object v7, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v7, v7, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 268
    iget-object v7, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v7, v7, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eqz v6, :cond_1d

    const/4 v11, 0x3

    const/4 v12, 0x5

    if-eq v6, v10, :cond_15

    if-eq v6, v5, :cond_4

    const/4 v4, 0x4

    if-eq v6, v4, :cond_2

    if-eq v6, v12, :cond_3

    move v11, v10

    goto :goto_0

    :cond_2
    move v11, v5

    :cond_3
    :goto_0
    if-nez p2, :cond_1e

    .line 366
    invoke-virtual {p0, v1, v10, v11, v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_7

    .line 306
    :cond_4
    div-int/lit16 v6, v1, 0x1f4

    if-eq v6, v10, :cond_5

    if-nez p2, :cond_5

    .line 308
    invoke-virtual {p0, v1, v10, v4, v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V

    :cond_5
    and-int/lit8 v1, v6, 0x1

    if-ne v1, v10, :cond_1e

    if-ne v6, v10, :cond_7

    .line 312
    iget-object v1, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    aget-object v1, v1, v7

    if-eqz v1, :cond_7

    .line 313
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p8, :cond_6

    goto :goto_1

    :cond_6
    move v7, v9

    :goto_1
    return v7

    :cond_7
    if-ne v6, v10, :cond_8

    move v1, v4

    goto :goto_2

    :cond_8
    move v1, v10

    .line 318
    :goto_2
    iget-object v6, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    if-eqz v6, :cond_9

    iget-object v6, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    array-length v6, v6

    if-le v6, v5, :cond_9

    .line 319
    iget-object v6, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    aget-byte v6, v6, v7

    if-ne v6, v10, :cond_9

    add-int/lit8 v1, v1, 0x2

    .line 323
    :cond_9
    iget-object v6, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    if-nez v6, :cond_a

    goto :goto_3

    .line 325
    :cond_a
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    and-int/lit8 v6, v1, 0x1

    aget-byte v4, v4, v6

    .line 326
    :goto_3
    iget-object v6, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    aget-object v1, v6, v1

    .line 327
    iget-object v6, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    if-nez v6, :cond_b

    const/4 v6, 0x0

    goto :goto_4

    :cond_b
    iget-object v6, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v6, v6, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    aget-object v6, v6, v7

    :goto_4
    if-eqz v4, :cond_14

    if-eq v4, v10, :cond_10

    if-eq v4, v5, :cond_c

    goto/16 :goto_7

    :cond_c
    if-eqz v6, :cond_d

    .line 348
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    if-eqz p6, :cond_e

    if-nez p2, :cond_e

    .line 351
    iget-object v0, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    :cond_e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p8, :cond_f

    goto :goto_5

    :cond_f
    move v7, v9

    :goto_5
    return v7

    :cond_10
    if-eqz v6, :cond_12

    .line 334
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p6, :cond_11

    if-nez p2, :cond_11

    .line 337
    iget-object v0, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    :cond_11
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v9

    .line 341
    :cond_12
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p8, :cond_13

    goto :goto_6

    :cond_13
    move v7, v9

    :goto_6
    return v7

    .line 330
    :cond_14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 280
    :cond_15
    div-int/lit16 v1, v1, 0x3e8

    .line 282
    sget-object v4, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    move-object v5, p1

    if-ne v5, v4, :cond_1c

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    if-nez v4, :cond_16

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    if-eqz v4, :cond_1c

    :cond_16
    if-eqz v1, :cond_1c

    .line 284
    rem-int/lit8 v4, v1, 0x5

    if-nez v4, :cond_1c

    .line 285
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    if-eqz v4, :cond_1a

    const/16 v4, 0xf

    if-eq v1, v4, :cond_17

    const/16 v5, 0x2d

    if-ne v1, v5, :cond_1a

    :cond_17
    if-ne v1, v4, :cond_18

    move v11, v10

    :cond_18
    if-nez p2, :cond_19

    .line 287
    invoke-virtual {p0, v11, v10, v8, v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    .line 288
    :cond_19
    iget-object v1, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    const/16 v7, 0x8

    goto :goto_8

    .line 292
    :cond_1a
    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 293
    div-int/2addr v1, v12

    if-nez p2, :cond_1b

    .line 294
    invoke-virtual {p0, v1, v10, v8, v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    .line 295
    :cond_1b
    iget-object v1, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    const/16 v7, 0x9

    goto :goto_8

    :cond_1c
    if-nez p2, :cond_1e

    .line 301
    invoke-virtual {p0, v1, v10, v8, v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    goto :goto_7

    :cond_1d
    if-nez p2, :cond_1e

    .line 275
    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0, v1, v10, v8, v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    :cond_1e
    :goto_7
    move-object v1, v2

    :goto_8
    if-nez p2, :cond_1f

    if-eqz p6, :cond_1f

    .line 370
    iget-object v2, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    if-nez p2, :cond_20

    .line 372
    iget-object v2, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    array-length v2, v2

    if-ge v7, v2, :cond_20

    .line 373
    iget-object v0, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    aget-object v0, v0, v7

    if-eqz v0, :cond_20

    .line 375
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :cond_20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p8, :cond_21

    goto :goto_9

    :cond_21
    move v7, v9

    :goto_9
    return v7
.end method

.method public appendCountValue(IIILjava/lang/StringBuffer;)V
    .locals 9

    .line 392
    div-int/lit16 v0, p1, 0x3e8

    if-nez p3, :cond_0

    const/16 p1, 0xa

    .line 394
    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    const/16 v2, 0x20

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 399
    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    int-to-long v4, v0

    const/16 v7, 0xa

    move-object v3, p0

    move v6, p2

    move-object v8, p4

    .line 401
    invoke-virtual/range {v3 .. v8}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    .line 402
    rem-int/lit16 p1, p1, 0x3e8

    const/4 p2, 0x1

    if-ne p3, p2, :cond_2

    .line 404
    div-int/lit8 p1, p1, 0x64

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p3, p2, :cond_3

    .line 406
    div-int/lit8 p1, p1, 0xa

    .line 408
    :cond_3
    :goto_0
    iget-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-char p2, p2, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    invoke-virtual {p4, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-long v4, p1

    move-object v3, p0

    move v6, p3

    move v7, p3

    move-object v8, p4

    .line 409
    invoke-virtual/range {v3 .. v8}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    .line 410
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    if-eqz p0, :cond_4

    .line 411
    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    return-void
.end method

.method public appendDigits(JIILjava/lang/StringBuffer;)V
    .locals 9

    .line 452
    new-array v0, p4, [C

    move-wide v1, p1

    move p1, p4

    :goto_0
    if-lez p1, :cond_0

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 455
    iget-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-char p2, p2, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    int-to-long v3, p2

    const-wide/16 v5, 0xa

    rem-long v7, v1, v5

    add-long/2addr v3, v7

    long-to-int p2, v3

    int-to-char p2, p2

    aput-char p2, v0, p1

    .line 456
    div-long/2addr v1, v5

    goto :goto_0

    :cond_0
    sub-int p2, p4, p3

    :goto_1
    if-le p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 459
    iget-object p3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-char p3, p3, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    aput-char p3, v0, p1

    goto :goto_1

    :cond_1
    sub-int/2addr p4, p1

    .line 461
    invoke-virtual {p5, v0, p1, p4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendInteger(IIILjava/lang/StringBuffer;)V
    .locals 8

    .line 417
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 426
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    if-eqz v0, :cond_5

    const/4 p2, 0x1

    if-eq v0, p2, :cond_4

    const/4 p2, 0x2

    if-eq v0, p2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long p1, p1

    .line 434
    sget-object p3, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 435
    invoke-static {p1, p2, p3}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object p1

    .line 434
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    int-to-long p1, p1

    .line 432
    sget-object p3, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 433
    invoke-static {p1, p2, p3}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    int-to-long p1, p1

    .line 430
    sget-object p3, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 431
    invoke-static {p1, p2, p3}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    int-to-long v3, p1

    move-object v2, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 429
    invoke-virtual/range {v2 .. v7}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    .line 437
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    if-eqz p0, :cond_6

    .line 438
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    return-void
.end method

.method public appendPrefix(IILjava/lang/StringBuffer;)Z
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    .line 101
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    .line 103
    iget-object p1, p0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-boolean p0, p0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public appendSkippedUnit(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 469
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 470
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public appendSuffix(IILjava/lang/StringBuffer;)V
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    if-eqz v0, :cond_1

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    .line 124
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    aget-object p0, p0, p1

    if-eqz p0, :cond_1

    .line 126
    iget-object p0, p0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 128
    sget-boolean p1, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    if-eqz p1, :cond_0

    .line 129
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendSuffix \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method

.method public appendUnit(Landroid/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z
    .locals 15

    move-object v11, p0

    move/from16 v0, p2

    move/from16 v1, p4

    move-object/from16 v12, p10

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    move-result v2

    .line 161
    iget-object v3, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    const/4 v13, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-nez p9, :cond_0

    if-eqz p8, :cond_0

    .line 164
    iget-object v3, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move v14, v4

    goto :goto_0

    :cond_1
    move v14, v13

    :goto_0
    if-eqz v1, :cond_7

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v13

    .line 171
    :goto_1
    iget-object v3, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    if-eqz v1, :cond_3

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    :goto_2
    if-eqz v3, :cond_4

    .line 172
    aget-object v5, v3, v2

    if-nez v5, :cond_6

    :cond_4
    if-eqz v1, :cond_5

    .line 173
    iget-object v1, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v1, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    :goto_3
    move-object v3, v1

    :cond_6
    if-eqz v3, :cond_7

    .line 175
    aget-object v1, v3, v2

    if-eqz v1, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 176
    aget-object v8, v3, v2

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move v4, v5

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v9, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v1 .. v10}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I

    return v13

    :cond_7
    const/4 v1, 0x2

    move/from16 v3, p3

    if-ne v3, v1, :cond_a

    .line 183
    iget-object v5, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    if-eqz v5, :cond_a

    .line 184
    iget-object v5, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    aget-byte v5, v5, v2

    if-eqz v5, :cond_a

    if-eq v5, v4, :cond_9

    if-eq v5, v1, :cond_8

    goto :goto_4

    :cond_8
    const/16 v5, 0x3e8

    if-le v0, v5, :cond_9

    goto :goto_4

    .line 192
    :cond_9
    div-int/lit16 v0, v0, 0x1f4

    mul-int/lit16 v0, v0, 0x1f4

    const/4 v3, 0x3

    :cond_a
    :goto_4
    move v5, v0

    move v6, v3

    if-eqz p7, :cond_b

    if-eqz p8, :cond_b

    move-object/from16 v0, p1

    move v3, v4

    goto :goto_5

    :cond_b
    move-object/from16 v0, p1

    move v3, v13

    .line 199
    :goto_5
    invoke-direct {p0, v0, v5, v6, v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->computeForm(Landroid/icu/impl/duration/TimeUnit;IIZ)I

    move-result v3

    const/4 v7, 0x6

    const/4 v8, 0x4

    if-ne v3, v8, :cond_d

    .line 201
    iget-object v9, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v9, v9, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    if-nez v9, :cond_c

    .line 203
    iget-object v3, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v3, v3, v2

    aget-object v3, v3, v4

    move-object v9, v3

    move v3, v4

    goto :goto_6

    .line 205
    :cond_c
    iget-object v9, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v9, v9, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    goto :goto_6

    :cond_d
    const/4 v9, 0x5

    if-ne v3, v9, :cond_e

    .line 208
    iget-object v9, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v9, v9, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v9, v9, v2

    aget-object v9, v9, v4

    goto :goto_6

    :cond_e
    if-ne v3, v7, :cond_f

    .line 210
    iget-object v9, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v9, v9, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    goto :goto_6

    .line 213
    :cond_f
    :try_start_0
    iget-object v9, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v9, v9, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v9, v9, v2

    aget-object v9, v9, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    if-nez v9, :cond_10

    .line 221
    iget-object v3, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v2, v3, v2

    aget-object v2, v2, v13

    move-object v9, v2

    move v3, v13

    :cond_10
    if-eq v3, v8, :cond_13

    if-eq v3, v7, :cond_13

    .line 224
    iget-object v2, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    if-eqz v2, :cond_11

    if-eq v3, v4, :cond_13

    :cond_11
    iget-object v2, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    if-eqz v2, :cond_12

    if-ne v3, v1, :cond_12

    goto :goto_7

    :cond_12
    move v3, v13

    goto :goto_8

    :cond_13
    :goto_7
    move v3, v4

    :goto_8
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p6

    move/from16 v7, p5

    move-object v8, v9

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 229
    invoke-virtual/range {v1 .. v10}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I

    move-result v0

    if-eqz p8, :cond_16

    if-ltz v0, :cond_16

    const/4 v1, 0x0

    .line 233
    iget-object v2, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_14

    .line 234
    iget-object v1, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    :cond_14
    if-nez v1, :cond_15

    .line 236
    iget-object v2, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 238
    iget-object v1, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    aget-object v1, v1, v0

    :cond_15
    if-eqz v1, :cond_16

    .line 241
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    return v14

    :catch_0
    move-exception v0

    .line 215
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null Pointer in PeriodFormatterData["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "].au px: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " form: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pn: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v2, v2, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    throw v0
.end method

.method public appendUnitSeparator(Landroid/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 491
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_1
    if-eqz p2, :cond_4

    .line 492
    iget-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p2, p2, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    if-eqz p2, :cond_4

    if-eqz p3, :cond_2

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    move p2, p1

    :goto_0
    add-int/2addr p2, p4

    .line 494
    iget-object p3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p3, p3, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    aget-object p3, p3, p2

    invoke-virtual {p5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    iget-object p3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p3, p3, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    if-eqz p3, :cond_3

    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    :cond_3
    return p1

    .line 497
    :cond_4
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    return p1
.end method

.method public pluralization()I
    .locals 0

    .line 70
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    return p0
.end method

.method public useMilliseconds()I
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    return p0
.end method

.method public weeksAloneOnly()Z
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean p0, p0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    return p0
.end method
