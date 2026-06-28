.class public Lafu/org/checkerframework/checker/formatter/FormatUtil;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;,
        Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;,
        Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;
    }
.end annotation


# static fields
.field private static final formatSpecifier:Ljava/lang/String; = "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

.field private static fsPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "%(\\d+\\$)?([-#+ 0,(\\<]*)?(\\d+)?(\\.\\d+)?([tT])?([a-zA-Z%])"

    .line 116
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lafu/org/checkerframework/checker/formatter/FormatUtil;->fsPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asFormat(Ljava/lang/String;[Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lafu/org/checkerframework/checker/formatter/qual/ReturnsFormat;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lafu/org/checkerframework/checker/formatter/FormatUtil;->formatParameterCategories(Ljava/lang/String;)[Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    .line 50
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 54
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 55
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    new-instance p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;

    aget-object p1, p1, v1

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lafu/org/checkerframework/checker/formatter/FormatUtil$IllegalFormatConversionCategoryException;-><init>(Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;)V

    throw p0

    :cond_1
    return-object p0

    .line 51
    :cond_2
    new-instance p0, Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;

    array-length p1, p1

    array-length v0, v0

    invoke-direct {p0, p1, v0}, Lafu/org/checkerframework/checker/formatter/FormatUtil$ExcessiveOrMissingFormatArgumentException;-><init>(II)V

    throw p0
.end method

.method private static conversionCharFromFormat(Ljava/util/regex/Matcher;)C
    .locals 2

    const/4 v0, 0x5

    .line 134
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 136
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    .line 138
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public static formatParameterCategories(Ljava/lang/String;)[Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    .line 77
    invoke-static {p0}, Lafu/org/checkerframework/checker/formatter/FormatUtil;->tryFormatSatisfiability(Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lafu/org/checkerframework/checker/formatter/FormatUtil;->parse(Ljava/lang/String;)[Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;

    move-result-object p0

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v8, p0, v4

    .line 87
    invoke-virtual {v8}, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->index()I

    move-result v9

    if-eq v9, v3, :cond_1

    if-eqz v9, :cond_0

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    .line 99
    :cond_1
    :goto_1
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 100
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    goto :goto_2

    :cond_2
    sget-object v10, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 102
    :goto_2
    invoke-virtual {v8}, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;->category()Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v8

    .line 100
    invoke-static {v10, v8}, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;->intersect(Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;)Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v8

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p0, v5, 0x1

    .line 105
    new-array p0, p0, [Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    :goto_3
    if-gt v2, v5, :cond_5

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    goto :goto_4

    :cond_4
    sget-object v1, Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;->UNUSED:Lafu/org/checkerframework/checker/formatter/qual/ConversionCategory;

    :goto_4
    aput-object v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-object p0
.end method

.method private static indexFromFormat(Ljava/util/regex/Matcher;)I
    .locals 3

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 124
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, -0x1

    :cond_1
    :goto_0
    return v2
.end method

.method private static parse(Ljava/lang/String;)[Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;
    .locals 4

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    sget-object v1, Lafu/org/checkerframework/checker/formatter/FormatUtil;->fsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-static {p0}, Lafu/org/checkerframework/checker/formatter/FormatUtil;->conversionCharFromFormat(Ljava/util/regex/Matcher;)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_0

    .line 152
    new-instance v2, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;

    invoke-static {p0}, Lafu/org/checkerframework/checker/formatter/FormatUtil;->indexFromFormat(Ljava/util/regex/Matcher;)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;-><init>(CI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lafu/org/checkerframework/checker/formatter/FormatUtil$Conversion;

    return-object p0
.end method

.method public static tryFormatSatisfiability(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/IllegalFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
