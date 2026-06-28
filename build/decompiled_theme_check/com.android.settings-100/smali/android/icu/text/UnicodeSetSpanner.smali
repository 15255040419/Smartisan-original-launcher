.class public Landroid/icu/text/UnicodeSetSpanner;
.super Ljava/lang/Object;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/UnicodeSetSpanner$TrimOption;,
        Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    }
.end annotation


# instance fields
.field private final unicodeSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2

    .line 119
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0
.end method

.method public countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;)I
    .locals 1

    .line 132
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSetSpanner;->countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    return p0
.end method

.method public countIn(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 6

    .line 151
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_0

    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_0

    .line 152
    :cond_0
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 153
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    :goto_1
    if-eq v3, v1, :cond_4

    .line 156
    iget-object v5, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, p1, v3, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_2

    .line 160
    :cond_1
    sget-object v5, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p2, v5, :cond_2

    .line 161
    iget-object v5, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, p1, v3, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 165
    new-instance v4, Landroid/icu/util/OutputInt;

    invoke-direct {v4}, Landroid/icu/util/OutputInt;-><init>()V

    .line 167
    :cond_3
    iget-object v5, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v5, p1, v3, p3, v4}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v3

    .line 168
    iget v5, v4, Landroid/icu/util/OutputInt;->value:I

    add-int/2addr v2, v5

    goto :goto_1

    :cond_4
    :goto_2
    return v2
.end method

.method public deleteFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 182
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const-string v2, ""

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public deleteFrom(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .locals 2

    .line 195
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    const-string v1, ""

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 74
    instance-of v0, p1, Landroid/icu/text/UnicodeSetSpanner;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    check-cast p1, Landroid/icu/text/UnicodeSetSpanner;

    iget-object p1, p1, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUnicodeSet()Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 65
    iget-object p0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->hashCode()I

    move-result p0

    return p0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 209
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;)Ljava/lang/String;
    .locals 1

    .line 225
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/UnicodeSetSpanner;->replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$CountMethod;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/String;
    .locals 7

    .line 244
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p4, v0, :cond_0

    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_0

    .line 245
    :cond_0
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 246
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 247
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-eq v2, v4, :cond_8

    .line 255
    sget-object v6, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p3, v6, :cond_2

    .line 256
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v2, p4}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    goto :goto_3

    :cond_2
    if-nez v5, :cond_3

    .line 259
    new-instance v5, Landroid/icu/util/OutputInt;

    invoke-direct {v5}, Landroid/icu/util/OutputInt;-><init>()V

    .line 261
    :cond_3
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v2, p4, v5}, Landroid/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v2

    :goto_3
    if-nez v1, :cond_6

    if-nez v2, :cond_4

    goto :goto_5

    .line 265
    :cond_4
    sget-object v6, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    if-ne p3, v6, :cond_5

    .line 266
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 268
    :cond_5
    iget v6, v5, Landroid/icu/util/OutputInt;->value:I

    :goto_4
    if-lez v6, :cond_6

    .line 269
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-ne v2, v4, :cond_7

    goto :goto_6

    .line 275
    :cond_7
    iget-object v6, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v6, p1, v2, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v6

    .line 276
    invoke-interface {p1, v2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move v2, v6

    goto :goto_2

    .line 278
    :cond_8
    :goto_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 315
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;)Ljava/lang/CharSequence;
    .locals 1

    .line 337
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public trim(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner$TrimOption;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/CharSequence;
    .locals 3

    .line 362
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 363
    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    if-eq p2, v1, :cond_0

    .line 364
    iget-object v1, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 371
    :cond_1
    sget-object v2, Landroid/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Landroid/icu/text/UnicodeSetSpanner$TrimOption;

    if-eq p2, v2, :cond_2

    .line 372
    iget-object p0, p0, Landroid/icu/text/UnicodeSetSpanner;->unicodeSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p3}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    if-nez v1, :cond_3

    if-ne p0, v0, :cond_3

    goto :goto_1

    .line 376
    :cond_3
    invoke-interface {p1, v1, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    return-object p1
.end method
