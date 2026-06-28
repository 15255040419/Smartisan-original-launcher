.class final Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/DayPeriodRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DayPeriodRulesDataSink"
.end annotation


# instance fields
.field private cutoffType:Landroid/icu/impl/DayPeriodRules$CutoffType;

.field private cutoffs:[I

.field private data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

.field private period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

.field private ruleSetNum:I


# direct methods
.method private constructor <init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 142
    iput-object v0, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    .line 81
    iput-object p1, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;Landroid/icu/impl/DayPeriodRules$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;-><init>(Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;)V

    return-void
.end method

.method private addCutoff(Landroid/icu/impl/DayPeriodRules$CutoffType;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 152
    invoke-static {p2}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->parseHour(Ljava/lang/String;)I

    move-result p2

    .line 153
    iget-object p0, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v0, p0, p2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result p1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    aput p1, p0, p2

    return-void

    .line 151
    :cond_0
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "Cutoff type not recognized."

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseHour(Ljava/lang/String;)I
    .locals 3

    const/16 v0, 0x3a

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance p0, Landroid/icu/util/ICUException;

    const-string v0, "Cutoff time must begin with h: or hh:"

    invoke-direct {p0, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_2

    const/16 v0, 0x18

    if-gt p0, v0, :cond_2

    return p0

    .line 204
    :cond_2
    new-instance p0, Landroid/icu/util/ICUException;

    const-string v0, "Cutoff hour must be between 0 and 24, inclusive."

    invoke-direct {p0, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_3
    new-instance p0, Landroid/icu/util/ICUException;

    const-string v0, "Cutoff time must end in \":00\"."

    invoke-direct {p0, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processRules(Landroid/icu/impl/UResource$Table;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_0
    invoke-interface {p1, v1, p2, p3}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 103
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/DayPeriodRules;->access$000(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    .line 104
    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v2, v2, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    iget v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    new-instance v4, Landroid/icu/impl/DayPeriodRules;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/icu/impl/DayPeriodRules;-><init>(Landroid/icu/impl/DayPeriodRules$1;)V

    aput-object v4, v2, v3

    .line 106
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    move v3, v0

    .line 107
    :goto_1
    invoke-interface {v2, v3, p2, p3}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    invoke-static {p2}, Landroid/icu/impl/DayPeriodRules$DayPeriod;->access$200(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    .line 109
    iget-object v4, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eqz v4, :cond_4

    .line 111
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v4

    move v5, v0

    .line 112
    :goto_2
    invoke-interface {v4, v5, p2, p3}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v6

    if-nez v6, :cond_0

    .line 115
    invoke-static {p2}, Landroid/icu/impl/DayPeriodRules$CutoffType;->access$300(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;

    move-result-object v6

    .line 116
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->addCutoff(Landroid/icu/impl/DayPeriodRules$CutoffType;Ljava/lang/String;)V

    goto :goto_4

    .line 119
    :cond_0
    invoke-static {p2}, Landroid/icu/impl/DayPeriodRules$CutoffType;->access$300(Ljava/lang/CharSequence;)Landroid/icu/impl/DayPeriodRules$CutoffType;

    move-result-object v6

    iput-object v6, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffType:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 120
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v6

    .line 121
    invoke-interface {v6}, Landroid/icu/impl/UResource$Array;->getSize()I

    move-result v7

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_1

    .line 123
    invoke-interface {v6, v8, p3}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 124
    iget-object v9, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffType:Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->addCutoff(Landroid/icu/impl/DayPeriodRules$CutoffType;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 128
    :cond_2
    invoke-direct {p0}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->setDayPeriodForHoursFromCutoffs()V

    move v4, v0

    .line 129
    :goto_5
    iget-object v5, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 130
    aput v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    :cond_4
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "Unknown day period in data."

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_5
    iget-object v2, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v2, v2, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    iget v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/icu/impl/DayPeriodRules;->access$400(Landroid/icu/impl/DayPeriodRules;)[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_6
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 135
    :cond_6
    new-instance p0, Landroid/icu/util/ICUException;

    const-string p1, "Rules in data don\'t cover all 24 hours (they should)."

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private setDayPeriodForHoursFromCutoffs()V
    .locals 7

    .line 157
    iget-object v0, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v0, v0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Landroid/icu/impl/DayPeriodRules;

    iget v1, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x18

    if-gt v2, v3, :cond_8

    .line 160
    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v3, v3, v2

    sget-object v4, Landroid/icu/impl/DayPeriodRules$CutoffType;->AT:Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v4}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    and-int/2addr v3, v4

    if-lez v3, :cond_2

    if-nez v2, :cond_0

    .line 161
    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v4, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v3, v4, :cond_0

    .line 162
    invoke-static {v0, v5}, Landroid/icu/impl/DayPeriodRules;->access$502(Landroid/icu/impl/DayPeriodRules;Z)Z

    goto :goto_1

    :cond_0
    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 163
    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v4, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v3, v4, :cond_1

    .line 164
    invoke-static {v0, v5}, Landroid/icu/impl/DayPeriodRules;->access$602(Landroid/icu/impl/DayPeriodRules;Z)Z

    goto :goto_1

    .line 166
    :cond_1
    new-instance p0, Landroid/icu/util/ICUException;

    const-string v0, "AT cutoff must only be set for 0:00 or 12:00."

    invoke-direct {p0, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v3, v3, v2

    sget-object v4, Landroid/icu/impl/DayPeriodRules$CutoffType;->FROM:Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v4}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v4

    shl-int v4, v5, v4

    and-int/2addr v3, v4

    if-gtz v3, :cond_3

    iget-object v3, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v3, v3, v2

    sget-object v4, Landroid/icu/impl/DayPeriodRules$CutoffType;->AFTER:Landroid/icu/impl/DayPeriodRules$CutoffType;

    .line 172
    invoke-virtual {v4}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v4

    shl-int v4, v5, v4

    and-int/2addr v3, v4

    if-lez v3, :cond_5

    :cond_3
    add-int/lit8 v3, v2, 0x1

    :goto_2
    if-eq v3, v2, :cond_7

    const/16 v4, 0x19

    if-ne v3, v4, :cond_4

    move v3, v1

    .line 180
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v4, v4, v3

    sget-object v6, Landroid/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Landroid/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v6}, Landroid/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v6

    shl-int v6, v5, v6

    and-int/2addr v4, v6

    if-lez v4, :cond_6

    .line 181
    iget-object v4, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    invoke-static {v0, v2, v3, v4}, Landroid/icu/impl/DayPeriodRules;->access$700(Landroid/icu/impl/DayPeriodRules;IILandroid/icu/impl/DayPeriodRules$DayPeriod;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 176
    :cond_7
    new-instance p0, Landroid/icu/util/ICUException;

    const-string v0, "FROM/AFTER cutoffs must have a matching BEFORE cutoff."

    invoke-direct {p0, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 7

    .line 86
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 87
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "locales"

    .line 88
    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    move v3, v0

    .line 90
    :goto_1
    invoke-interface {v2, v3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/impl/DayPeriodRules;->access$000(Ljava/lang/String;)I

    move-result v4

    .line 92
    iget-object v5, p0, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v5, v5, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesData;->localesToRuleSetNumMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "rules"

    .line 94
    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 96
    invoke-direct {p0, v2, p1, p2}, Landroid/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->processRules(Landroid/icu/impl/UResource$Table;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
