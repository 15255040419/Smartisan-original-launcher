.class public final Landroid/icu/impl/SimpleFormatterImpl;
.super Ljava/lang/Object;
.source "SimpleFormatterImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_NUM_LIMIT:I = 0x100

.field private static final COMMON_PATTERNS:[[Ljava/lang/String;

.field private static final LEN1_CHAR:C = '\u0101'

.field private static final LEN2_CHAR:C = '\u0102'

.field private static final LEN3_CHAR:C = '\u0103'

.field private static final MAX_SEGMENT_LENGTH:I = 0xfeff

.field private static final SEGMENT_LENGTH_ARGUMENT_CHAR:C = '\uffff'


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "{0} {1}"

    const-string v3, "\u0002\u0000\u0101 \u0001"

    .line 52
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "{0} ({1})"

    const-string v3, "\u0002\u0000\u0102 (\u0001\u0101)"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "{0}, {1}"

    const-string v3, "\u0002\u0000\u0102, \u0001"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "{0} \u2013 {1}"

    const-string v3, "\u0002\u0000\u0103 \u2013 \u0001"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/SimpleFormatterImpl;->COMMON_PATTERNS:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v2, v4, :cond_1

    if-gt v4, v3, :cond_1

    .line 77
    sget-object v4, Landroid/icu/impl/SimpleFormatterImpl;->COMMON_PATTERNS:[[Ljava/lang/String;

    array-length v7, v4

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v4, v8

    .line 78
    aget-object v10, v9, v5

    invoke-virtual {v10, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 80
    aget-object v0, v9, v6

    return-object v0

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 90
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move v8, v5

    move v9, v8

    move v11, v9

    const/4 v10, -0x1

    :goto_1
    const/16 v12, 0x100

    if-ge v8, v4, :cond_13

    add-int/lit8 v13, v8, 0x1

    .line 95
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v14, 0x7b

    const/16 v15, 0x7d

    const/16 v7, 0x27

    if-ne v8, v7, :cond_6

    if-ge v13, v4, :cond_2

    .line 97
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    :cond_2
    if-eqz v11, :cond_3

    move v11, v5

    move v8, v13

    goto :goto_1

    :cond_3
    if-eq v8, v14, :cond_5

    if-ne v8, v15, :cond_4

    goto :goto_2

    :cond_4
    move v8, v7

    goto/16 :goto_7

    :cond_5
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move v11, v6

    goto/16 :goto_7

    :cond_6
    if-nez v11, :cond_10

    if-ne v8, v14, :cond_10

    if-lez v9, :cond_7

    .line 114
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v9

    sub-int/2addr v7, v6

    add-int/lit16 v9, v9, 0x100

    int-to-char v9, v9

    invoke-virtual {v1, v7, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    move v9, v5

    :cond_7
    add-int/lit8 v7, v13, 0x1

    const/16 v14, 0x30

    if-ge v7, v4, :cond_8

    .line 119
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    add-int/lit8 v5, v16, -0x30

    if-ltz v5, :cond_8

    const/16 v6, 0x9

    if-gt v5, v6, :cond_8

    .line 120
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v15, :cond_8

    add-int/lit8 v13, v13, 0x2

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v13, -0x1

    if-ge v13, v4, :cond_c

    const/16 v6, 0x31

    .line 128
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v6, v8, :cond_b

    const/16 v6, 0x39

    if-gt v8, v6, :cond_b

    add-int/lit8 v13, v8, -0x30

    move/from16 v18, v13

    move v13, v7

    move/from16 v7, v18

    :goto_3
    if-ge v13, v4, :cond_d

    add-int/lit8 v8, v13, 0x1

    .line 130
    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-gt v14, v13, :cond_a

    if-gt v13, v6, :cond_a

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v17, v13, -0x30

    add-int v7, v7, v17

    if-lt v7, v12, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v18, v13

    move v13, v8

    move/from16 v8, v18

    goto :goto_3

    :cond_a
    :goto_4
    move/from16 v18, v13

    move v13, v8

    move/from16 v8, v18

    goto :goto_5

    :cond_b
    move v13, v7

    :cond_c
    const/4 v7, -0x1

    :cond_d
    :goto_5
    if-ltz v7, :cond_f

    if-ne v8, v15, :cond_f

    move v5, v7

    :goto_6
    move v8, v13

    if-le v5, v10, :cond_e

    move v10, v5

    :cond_e
    int-to-char v5, v5

    .line 147
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 138
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument syntax error in pattern \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\" at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-interface {v0, v5, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_7
    if-nez v9, :cond_11

    const v5, 0xffff

    .line 153
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    :cond_11
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    const v5, 0xfeff

    if-ne v9, v5, :cond_12

    const/4 v9, 0x0

    :cond_12
    move v8, v13

    :goto_8
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_13
    if-lez v9, :cond_14

    .line 161
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v9

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    add-int/2addr v9, v12

    int-to-char v6, v9

    invoke-virtual {v1, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_9

    :cond_14
    const/4 v5, 0x1

    :goto_9
    add-int/2addr v10, v5

    const-string v4, "\""

    const-string v5, " arguments in pattern \""

    if-lt v10, v2, :cond_16

    if-gt v10, v3, :cond_15

    int-to-char v0, v10

    const/4 v2, 0x0

    .line 172
    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than maximum "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fewer than minimum "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move v1, v0

    goto :goto_1

    .line 316
    :cond_0
    array-length v1, p5

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    const/4 v3, -0x1

    .line 318
    aput v3, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 321
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    .line 322
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x100

    if-ge v2, v4, :cond_8

    .line 324
    aget-object v4, p1, v2

    if-ne v4, p2, :cond_5

    if-nez p4, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-ge v2, v1, :cond_7

    .line 332
    aput v0, p5, v2

    goto :goto_3

    :cond_2
    if-ge v2, v1, :cond_3

    .line 336
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    aput v4, p5, v2

    .line 338
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 327
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Value must not be same object as result"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-ge v2, v1, :cond_6

    .line 342
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    aput v5, p5, v2

    .line 344
    :cond_6
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    move v2, v3

    goto :goto_2

    :cond_8
    add-int/lit16 v2, v2, -0x100

    add-int/2addr v2, v3

    .line 348
    invoke-virtual {p2, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    return-object p2
.end method

.method public static varargs formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 8

    if-eqz p3, :cond_0

    .line 229
    array-length v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v7, p2

    .line 233
    invoke-static/range {v2 .. v7}, Landroid/icu/impl/SimpleFormatterImpl;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 231
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too few values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 254
    array-length v1, p3

    goto :goto_0

    :cond_0
    move v1, v0

    .line 255
    :goto_0
    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_6

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 266
    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    .line 267
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 268
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x100

    if-ge v3, v5, :cond_2

    .line 270
    aget-object v5, p3, v3

    if-ne v5, p1, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    if-nez v2, :cond_3

    .line 274
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    add-int/lit16 v3, v3, -0x100

    add-int/2addr v4, v3

    :cond_3
    :goto_2
    move v3, v4

    goto :goto_1

    :cond_4
    move-object v5, v2

    if-gez v1, :cond_5

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v7, p2

    .line 285
    invoke-static/range {v2 .. v7}, Landroid/icu/impl/SimpleFormatterImpl;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 256
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too few values."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-static {p0, v0, p1, p2}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 p1, 0x0

    .line 209
    invoke-static {p0, v0, p1, p3}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getArgumentLimit(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static getTextWithNoArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 297
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    .line 298
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit16 v1, v1, -0x100

    if-lez v1, :cond_0

    add-int/2addr v1, v0

    .line 301
    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
