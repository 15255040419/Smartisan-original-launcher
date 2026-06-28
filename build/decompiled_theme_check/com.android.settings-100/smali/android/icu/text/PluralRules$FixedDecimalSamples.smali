.class public Landroid/icu/text/PluralRules$FixedDecimalSamples;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimalSamples"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final bounded:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final sampleType:Landroid/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final samples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$FixedDecimalRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules$SampleType;",
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$FixedDecimalRange;",
            ">;Z)V"
        }
    .end annotation

    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    iput-object p1, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    .line 1134
    iput-object p2, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    .line 1135
    iput-boolean p3, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    return-void
.end method

.method private static checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V
    .locals 3

    .line 1185
    sget-object v0, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$FixedDecimal;->getVisibleDecimalDigitCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-ne p0, v1, :cond_2

    return-void

    .line 1186
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed number range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static parse(Ljava/lang/String;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 12

    .line 1144
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "integer"

    .line 1146
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1147
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    goto :goto_0

    :cond_0
    const-string v1, "decimal"

    .line 1148
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1149
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    :goto_0
    const/4 v2, 0x7

    .line 1153
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1155
    sget-object v2, Landroid/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v7, v5

    move v6, v4

    :goto_1
    if-ge v5, v2, :cond_6

    aget-object v8, p0, v5

    const-string/jumbo v9, "\u2026"

    .line 1156
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    if-nez v7, :cond_4

    .line 1164
    sget-object v9, Landroid/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v9

    .line 1165
    array-length v10, v9

    if-eq v10, v4, :cond_3

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 1172
    new-instance v8, Landroid/icu/text/PluralRules$FixedDecimal;

    aget-object v10, v9, v3

    invoke-direct {v8, v10}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    .line 1173
    new-instance v10, Landroid/icu/text/PluralRules$FixedDecimal;

    aget-object v9, v9, v4

    invoke-direct {v10, v9}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    .line 1174
    invoke-static {v1, v8}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V

    .line 1175
    invoke-static {v1, v10}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V

    .line 1176
    new-instance v9, Landroid/icu/text/PluralRules$FixedDecimalRange;

    invoke-direct {v9, v8, v10}, Landroid/icu/text/PluralRules$FixedDecimalRange;-><init>(Landroid/icu/text/PluralRules$FixedDecimal;Landroid/icu/text/PluralRules$FixedDecimal;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1178
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed number range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1167
    :cond_3
    new-instance v8, Landroid/icu/text/PluralRules$FixedDecimal;

    aget-object v9, v9, v3

    invoke-direct {v8, v9}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    .line 1168
    invoke-static {v1, v8}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Landroid/icu/text/PluralRules$SampleType;Landroid/icu/text/PluralRules$FixedDecimal;)V

    .line 1169
    new-instance v9, Landroid/icu/text/PluralRules$FixedDecimalRange;

    invoke-direct {v9, v8, v8}, Landroid/icu/text/PluralRules$FixedDecimalRange;-><init>(Landroid/icu/text/PluralRules$FixedDecimal;Landroid/icu/text/PluralRules$FixedDecimal;)V

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1162
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only have \u2026 at the end of samples: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    move v6, v3

    move v7, v4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1181
    :cond_6
    new-instance p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v1, v0, v6}, Landroid/icu/text/PluralRules$FixedDecimalSamples;-><init>(Landroid/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V

    return-object p0

    .line 1151
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Samples must start with \'integer\' or \'decimal\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addSamples(Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1197
    iget-object p0, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$FixedDecimalRange;

    .line 1199
    iget-object v1, v0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$FixedDecimal;->getShiftedValue()J

    move-result-wide v1

    .line 1200
    iget-object v3, v0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v3}, Landroid/icu/text/PluralRules$FixedDecimal;->getShiftedValue()J

    move-result-wide v3

    :goto_0
    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    long-to-double v5, v1

    .line 1203
    iget-object v7, v0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-static {v7}, Landroid/icu/text/PluralRules$FixedDecimal;->access$100(Landroid/icu/text/PluralRules$FixedDecimal;)I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getSamples()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$FixedDecimalRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1240
    iget-object p0, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    return-object p0
.end method

.method public getStartEndSamples(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/text/PluralRules$FixedDecimal;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1250
    iget-object p0, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PluralRules$FixedDecimalRange;

    .line 1251
    iget-object v1, v0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1252
    iget-object v0, v0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Landroid/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$SampleType;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    iget-object v1, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/PluralRules$FixedDecimalRange;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ","

    .line 1223
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v4, 0x20

    .line 1225
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1227
    :cond_1
    iget-boolean p0, p0, Landroid/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    if-nez p0, :cond_2

    const-string p0, ", \u2026"

    .line 1228
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
