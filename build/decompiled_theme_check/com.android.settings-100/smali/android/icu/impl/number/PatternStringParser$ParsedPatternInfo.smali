.class public Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;
.super Ljava/lang/Object;
.source "PatternStringParser.java"

# interfaces
.implements Landroid/icu/impl/number/AffixPatternProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/PatternStringParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedPatternInfo"
.end annotation


# instance fields
.field public negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

.field public pattern:Ljava/lang/String;

.field public positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/icu/impl/number/PatternStringParser$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getEndpoints(I)J
    .locals 4

    and-int/lit16 v0, p1, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit16 v3, p1, 0x200

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 131
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-wide p0

    :cond_3
    if-eqz v1, :cond_4

    .line 133
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->paddingEndpoints:J

    return-wide p0

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 135
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    return-wide p0

    :cond_5
    if-eqz v0, :cond_6

    .line 137
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->prefixEndpoints:J

    return-wide p0

    :cond_6
    if-eqz v3, :cond_7

    .line 139
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    return-wide p0

    .line 141
    :cond_7
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->suffixEndpoints:J

    return-wide p0
.end method

.method public static getLengthFromEndpoints(J)I
    .locals 2

    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    const/16 v1, 0x20

    ushr-long/2addr p0, v1

    long-to-int p0, p0

    sub-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public charAt(II)C
    .locals 4

    .line 96
    invoke-direct {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getEndpoints(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int p1, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    if-ltz p2, :cond_0

    sub-int/2addr v0, p1

    if-ge p2, v0, :cond_0

    .line 102
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public containsSymbolType(I)Z
    .locals 0

    .line 167
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    .line 117
    invoke-direct {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getEndpoints(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    and-long/2addr v2, v0

    long-to-int p1, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    if-ne p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 123
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->pattern:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasCurrencySign()Z
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean v0, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasCurrencySign:Z

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

.method public hasNegativeSubpattern()Z
    .locals 0

    .line 152
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public length(I)I
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getEndpoints(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->getLengthFromEndpoints(J)I

    move-result p0

    return p0
.end method

.method public negativeHasMinusSign()Z
    .locals 0

    .line 157
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->negative:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasMinusSign:Z

    return p0
.end method

.method public positiveHasPlusSign()Z
    .locals 0

    .line 147
    iget-object p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-boolean p0, p0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->hasPlusSign:Z

    return p0
.end method
