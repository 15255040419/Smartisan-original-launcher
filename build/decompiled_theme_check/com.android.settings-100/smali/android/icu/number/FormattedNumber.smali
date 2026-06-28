.class public Landroid/icu/number/FormattedNumber;
.super Ljava/lang/Object;
.source "FormattedNumber.java"


# instance fields
.field fq:Landroid/icu/impl/number/DecimalQuantity;

.field micros:Landroid/icu/impl/number/MicroProps;

.field nsb:Landroid/icu/impl/number/NumberStringBuilder;


# direct methods
.method constructor <init>(Landroid/icu/impl/number/NumberStringBuilder;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    .line 33
    iput-object p2, p0, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    .line 34
    iput-object p3, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 66
    :try_start_0
    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 69
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 197
    :cond_1
    instance-of v1, p1, Landroid/icu/number/FormattedNumber;

    if-nez v1, :cond_2

    return v0

    .line 201
    :cond_2
    check-cast p1, Landroid/icu/number/FormattedNumber;

    .line 202
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/number/NumberStringBuilder;->toCharArray()[C

    move-result-object v0

    iget-object v1, p1, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v1}, Landroid/icu/impl/number/NumberStringBuilder;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    iget-object v1, p0, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    .line 203
    invoke-virtual {v1}, Landroid/icu/impl/number/NumberStringBuilder;->toFieldArray()[Landroid/icu/text/NumberFormat$Field;

    move-result-object v1

    iget-object v2, p1, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v2}, Landroid/icu/impl/number/NumberStringBuilder;->toFieldArray()[Landroid/icu/text/NumberFormat$Field;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    .line 204
    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p0

    iget-object p1, p1, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public getFieldIterator()Ljava/text/AttributedCharacterIterator;
    .locals 0

    .line 120
    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/number/NumberStringBuilder;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public getFixedDecimal()Landroid/icu/text/PluralRules$IFixedDecimal;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    new-instance v0, Landroid/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/number/NumberStringBuilder;-><init>()V

    .line 142
    iget-object v1, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v1, v1, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result v1

    .line 143
    iget-object v3, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v3, v3, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3, v0, v2, v1}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result v3

    add-int/2addr v1, v3

    .line 144
    iget-object v3, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v3, v3, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3, v0, v2, v1}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    .line 145
    iget-object v1, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v1, v1, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    invoke-interface {v1}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v1

    iget-object v3, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v3, v3, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v3

    add-int/2addr v1, v3

    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object p0, p0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    .line 146
    invoke-interface {p0}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result p0

    add-int/2addr v1, p0

    .line 147
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/number/NumberStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    new-instance v0, Landroid/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Landroid/icu/impl/number/NumberStringBuilder;-><init>()V

    .line 157
    iget-object v1, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v1, v1, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result v1

    .line 158
    iget-object v3, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v3, v3, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3, v0, v2, v1}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result v3

    add-int/2addr v1, v3

    .line 159
    iget-object v3, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v3, v3, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3, v0, v2, v1}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result v2

    add-int/2addr v1, v2

    .line 160
    iget-object v2, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v2, v2, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    invoke-interface {v2}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v2

    iget-object v3, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object v3, v3, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {v3}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result v3

    add-int/2addr v2, v3

    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->micros:Landroid/icu/impl/number/MicroProps;

    iget-object p0, p0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    .line 161
    invoke-interface {p0}, Landroid/icu/impl/number/Modifier;->getPrefixLength()I

    move-result p0

    add-int/2addr v2, p0

    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/number/NumberStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 183
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Landroid/icu/impl/number/NumberStringBuilder;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    iget-object v1, p0, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v1}, Landroid/icu/impl/number/NumberStringBuilder;->toFieldArray()[Landroid/icu/text/NumberFormat$Field;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public populateFieldPosition(Ljava/text/FieldPosition;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Landroid/icu/number/FormattedNumber;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    return-void
.end method

.method public populateFieldPosition(Ljava/text/FieldPosition;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/number/NumberStringBuilder;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    .line 103
    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {p0, p1}, Landroid/icu/impl/number/DecimalQuantity;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    return-void
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 0

    .line 132
    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->fq:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/icu/number/FormattedNumber;->nsb:Landroid/icu/impl/number/NumberStringBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
