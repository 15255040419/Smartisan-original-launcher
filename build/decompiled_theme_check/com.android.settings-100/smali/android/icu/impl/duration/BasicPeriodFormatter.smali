.class Landroid/icu/impl/duration/BasicPeriodFormatter;
.super Ljava/lang/Object;
.source "BasicPeriodFormatter.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatter;


# instance fields
.field private customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

.field private data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

.field private factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

.field private localeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    .line 35
    iput-object p2, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    .line 37
    iput-object p4, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    return-void
.end method

.method private format(IZ[I)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 60
    :goto_0
    array-length v5, v1

    const/4 v6, 0x1

    if-ge v3, v5, :cond_1

    .line 61
    aget v5, v1, v3

    if-lez v5, :cond_0

    shl-int v5, v6, v3

    or-int/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v3, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->allowZero()Z

    move-result v3

    if-nez v3, :cond_4

    move v5, v6

    const/4 v3, 0x0

    .line 71
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_3

    and-int v7, v4, v5

    if-eqz v7, :cond_2

    .line 72
    aget v7, v1, v3

    if-ne v7, v6, :cond_2

    not-int v7, v5

    and-int/2addr v4, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_4
    iget-object v3, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v3}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_8

    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v3, v3, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int v3, v6, v3

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 87
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v3, v3, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    .line 88
    sget-object v7, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    iget-byte v7, v7, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int v8, v6, v3

    shl-int v9, v6, v7

    .line 91
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v10}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->useMilliseconds()I

    move-result v10

    if-eq v10, v6, :cond_6

    if-eq v10, v5, :cond_5

    goto :goto_3

    :cond_5
    and-int/2addr v8, v4

    if-eqz v8, :cond_8

    .line 95
    aget v8, v1, v3

    aget v7, v1, v7

    sub-int/2addr v7, v6

    div-int/lit16 v7, v7, 0x3e8

    add-int/2addr v8, v7

    aput v8, v1, v3

    goto :goto_2

    :cond_6
    and-int v10, v4, v8

    if-nez v10, :cond_7

    or-int/2addr v4, v8

    .line 104
    aput v6, v1, v3

    .line 106
    :cond_7
    aget v8, v1, v3

    aget v7, v1, v7

    sub-int/2addr v7, v6

    div-int/lit16 v7, v7, 0x3e8

    add-int/2addr v8, v7

    aput v8, v1, v3

    :goto_2
    not-int v3, v9

    and-int/2addr v4, v3

    move v3, v6

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v3, 0x0

    .line 115
    :goto_4
    array-length v7, v1

    sub-int/2addr v7, v6

    const/4 v8, 0x0

    .line 116
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_9

    shl-int v9, v6, v8

    and-int/2addr v9, v4

    if-nez v9, :cond_9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    if-le v7, v8, :cond_a

    shl-int v9, v6, v7

    and-int/2addr v9, v4

    if-nez v9, :cond_a

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_a
    move v9, v8

    :goto_7
    if-gt v9, v7, :cond_c

    shl-int v10, v6, v9

    and-int/2addr v10, v4

    if-eqz v10, :cond_b

    .line 122
    aget v10, v1, v9

    if-le v10, v6, :cond_b

    const/4 v9, 0x0

    goto :goto_8

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_c
    move v9, v6

    .line 128
    :goto_8
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v10, v10, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    if-eqz v10, :cond_e

    if-eqz v9, :cond_d

    goto :goto_9

    :cond_d
    move/from16 v14, p1

    goto :goto_a

    :cond_e
    :goto_9
    const/4 v14, 0x0

    .line 139
    :goto_a
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-boolean v10, v10, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    if-eqz v10, :cond_11

    if-eqz v9, :cond_f

    goto :goto_b

    :cond_f
    if-eqz p2, :cond_10

    move v9, v5

    goto :goto_c

    :cond_10
    move v9, v6

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v9, 0x0

    .line 148
    :goto_c
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v10, v14, v9, v15}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendPrefix(IILjava/lang/StringBuffer;)Z

    move-result v10

    if-eq v8, v7, :cond_12

    move/from16 v21, v6

    goto :goto_d

    :cond_12
    const/16 v21, 0x0

    .line 154
    :goto_d
    iget-object v11, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v11, v11, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-eqz v11, :cond_13

    move/from16 v22, v6

    goto :goto_e

    :cond_13
    const/16 v22, 0x0

    :goto_e
    move v11, v6

    move v13, v8

    move/from16 v16, v10

    const/4 v10, 0x0

    :goto_f
    if-gt v13, v7, :cond_1d

    if-eqz v10, :cond_14

    .line 160
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    invoke-virtual {v10, v15}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendSkippedUnit(Ljava/lang/StringBuffer;)V

    move/from16 v19, v6

    move v10, v13

    const/16 v23, 0x0

    goto :goto_10

    :cond_14
    move/from16 v23, v10

    move/from16 v19, v11

    move v10, v13

    :goto_10
    add-int/lit8 v12, v10, 0x1

    if-ge v12, v7, :cond_15

    shl-int v10, v6, v12

    and-int/2addr v10, v4

    if-nez v10, :cond_15

    move/from16 v23, v6

    move v10, v12

    goto :goto_10

    .line 169
    :cond_15
    sget-object v10, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v24, v10, v13

    .line 170
    aget v10, v1, v13

    add-int/lit8 v17, v10, -0x1

    .line 172
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v10, v10, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    if-ne v13, v7, :cond_17

    if-eqz v3, :cond_16

    const/4 v10, 0x5

    :cond_16
    move/from16 v18, v10

    goto :goto_11

    :cond_17
    const/16 v18, 0x0

    :goto_11
    if-ne v13, v7, :cond_18

    move/from16 v20, v6

    goto :goto_12

    :cond_18
    const/16 v20, 0x0

    .line 182
    :goto_12
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    iget-object v11, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v11, v11, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    move/from16 v25, v11

    move-object/from16 v11, v24

    move v2, v12

    move/from16 v12, v17

    move v6, v13

    move/from16 v13, v18

    move/from16 v26, v14

    move/from16 v14, v25

    move-object/from16 p1, v15

    move/from16 v15, v22

    move/from16 v17, v21

    move/from16 v18, v20

    move-object/from16 v20, p1

    invoke-virtual/range {v10 .. v20}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendUnit(Landroid/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z

    move-result v10

    or-int v16, v23, v10

    .line 187
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v10, v10, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-eqz v10, :cond_1c

    if-gt v2, v7, :cond_1c

    if-ne v6, v8, :cond_19

    const/4 v13, 0x1

    goto :goto_13

    :cond_19
    const/4 v13, 0x0

    :goto_13
    if-ne v2, v7, :cond_1a

    const/4 v14, 0x1

    goto :goto_14

    :cond_1a
    const/4 v14, 0x0

    .line 190
    :goto_14
    iget-object v6, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    iget-byte v6, v6, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    if-ne v6, v5, :cond_1b

    const/4 v12, 0x1

    goto :goto_15

    :cond_1b
    const/4 v12, 0x0

    .line 191
    :goto_15
    iget-object v10, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-object/from16 v11, v24

    move-object/from16 v15, p1

    invoke-virtual/range {v10 .. v15}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendUnitSeparator(Landroid/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z

    move-result v6

    goto :goto_16

    :cond_1c
    const/4 v6, 0x0

    :goto_16
    move-object/from16 v15, p1

    move v13, v2

    move/from16 v10, v16

    move/from16 v14, v26

    const/4 v11, 0x0

    move/from16 v16, v6

    const/4 v6, 0x1

    goto/16 :goto_f

    :cond_1d
    move/from16 v26, v14

    move-object/from16 p1, v15

    .line 196
    iget-object v0, v0, Landroid/icu/impl/duration/BasicPeriodFormatter;->data:Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v2, v9, v1}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendSuffix(IILjava/lang/StringBuffer;)V

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Landroid/icu/impl/duration/Period;)Ljava/lang/String;
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/icu/impl/duration/Period;->isSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-byte v0, p1, Landroid/icu/impl/duration/Period;->timeLimit:B

    iget-boolean v1, p1, Landroid/icu/impl/duration/Period;->inFuture:Z

    iget-object p1, p1, Landroid/icu/impl/duration/Period;->counts:[I

    invoke-direct {p0, v0, v1, p1}, Landroid/icu/impl/duration/BasicPeriodFormatter;->format(IZ[I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "period is not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodFormatter;
    .locals 3

    .line 50
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->localeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;->getData(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;

    move-result-object v0

    .line 52
    new-instance v1, Landroid/icu/impl/duration/BasicPeriodFormatter;

    iget-object v2, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->factory:Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    iget-object p0, p0, Landroid/icu/impl/duration/BasicPeriodFormatter;->customs:Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v1, v2, p1, v0, p0}, Landroid/icu/impl/duration/BasicPeriodFormatter;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterFactory;Ljava/lang/String;Landroid/icu/impl/duration/impl/PeriodFormatterData;Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;)V

    return-object v1

    :cond_0
    return-object p0
.end method
