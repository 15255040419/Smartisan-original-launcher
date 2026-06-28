.class public Landroid/icu/text/PluralRules$FixedDecimal;
.super Ljava/lang/Number;
.source "PluralRules.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/icu/text/PluralRules$IFixedDecimal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/PluralRules$FixedDecimal;",
        ">;",
        "Landroid/icu/text/PluralRules$IFixedDecimal;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final MAX:J = 0xde0b6b3a7640000L

.field private static final MAX_INTEGER_PART:J = 0x3b9aca00L

.field private static final serialVersionUID:J = -0x42016b294abcff1dL


# instance fields
.field private final baseFactor:I

.field final decimalDigits:J

.field final decimalDigitsWithoutTrailingZeros:J

.field final hasIntegerValue:Z

.field final integerValue:J

.field final isNegative:Z

.field final source:D

.field final visibleDecimalDigitCount:I

.field final visibleDecimalDigitCountWithoutTrailingZeros:I


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 741
    invoke-static {p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;->decimals(D)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 718
    invoke-static {p1, p2, p3}, Landroid/icu/text/PluralRules$FixedDecimal;->getFractionalDigits(DI)I

    move-result v0

    int-to-long v5, v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    return-void
.end method

.method public constructor <init>(DIJ)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 673
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 674
    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    .line 675
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v0, :cond_1

    neg-double v3, p1

    goto :goto_1

    :cond_1
    move-wide v3, p1

    :goto_1
    iput-wide v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    .line 676
    iput p3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    .line 677
    iput-wide p4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    const-wide v3, 0x43abc16d674ec800L    # 1.0E18

    cmpl-double v0, p1, v3

    if-lez v0, :cond_2

    const-wide p1, 0xde0b6b3a7640000L

    goto :goto_2

    :cond_2
    double-to-long p1, p1

    .line 680
    :goto_2
    iput-wide p1, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    .line 681
    iget-wide p1, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double v3, v3

    cmpl-double p1, p1, v3

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    const-wide/16 p1, 0x0

    cmp-long v0, p4, p1

    if-nez v0, :cond_4

    .line 696
    iput-wide p1, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 697
    iput v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    goto :goto_5

    :cond_4
    move v0, p3

    :goto_4
    const-wide/16 v1, 0xa

    .line 701
    rem-long v3, p4, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_5

    .line 702
    div-long/2addr p4, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 705
    :cond_5
    iput-wide p4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 706
    iput v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    :goto_5
    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    int-to-double p3, p3

    .line 708
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    long-to-double p1, p1

    const/4 v0, 0x0

    .line 751
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 815
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p1}, Landroid/icu/text/PluralRules$FixedDecimal;->getVisibleFractionCount(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    return-void
.end method

.method static synthetic access$100(Landroid/icu/text/PluralRules$FixedDecimal;)I
    .locals 0

    .line 526
    iget p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return p0
.end method

.method public static decimals(D)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 767
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_1

    neg-double p0, p0

    .line 773
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v0, p0, v2

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v0, p0, v2

    if-gez v0, :cond_5

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p0, v2

    double-to-long p0, p0

    const-wide/32 v2, 0xf4240

    .line 777
    rem-long/2addr p0, v2

    const/4 v0, 0x6

    const/16 v2, 0xa

    :goto_0
    if-lez v0, :cond_4

    int-to-long v3, v2

    .line 779
    rem-long v3, p0, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v0

    :cond_3
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v1

    .line 785
    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "%1.15e"

    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x65

    .line 786
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 788
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 791
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v3, p1, -0x2

    sub-int/2addr v3, v0

    if-gez v3, :cond_7

    return v1

    :cond_7
    sub-int/2addr p1, v2

    :goto_1
    if-lez v3, :cond_9

    .line 798
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_9
    :goto_2
    return v3

    :cond_a
    :goto_3
    return v1
.end method

.method private static getFractionalDigits(DI)I
    .locals 4

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    neg-double p0, p0

    :cond_1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p2

    .line 728
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p2, v0

    int-to-double v0, p2

    mul-double/2addr p0, v0

    .line 729
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    int-to-long v0, p2

    .line 730
    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getOperand(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 855
    invoke-static {p0}, Landroid/icu/text/PluralRules$Operand;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;

    move-result-object p0

    return-object p0
.end method

.method private static getVisibleFractionCount(Ljava/lang/String;)I
    .locals 1

    .line 819
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 820
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 824
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1000
    new-instance p0, Ljava/io/NotSerializableException;

    invoke-direct {p0}, Ljava/io/NotSerializableException;-><init>()V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 995
    new-instance p0, Ljava/io/NotSerializableException;

    invoke-direct {p0}, Ljava/io/NotSerializableException;-><init>()V

    throw p0
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/PluralRules$FixedDecimal;)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 867
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget-wide v2, p1, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    return v5

    .line 870
    :cond_1
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v2, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    cmpg-double p0, v0, v2

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    return v5

    .line 873
    :cond_3
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v1, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-eq v0, v1, :cond_5

    if-ge v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    return v5

    .line 876
    :cond_5
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide p0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_7

    if-gez p0, :cond_6

    goto :goto_3

    :cond_6
    move v5, v6

    :goto_3
    return v5

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 525
    check-cast p1, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules$FixedDecimal;->compareTo(Landroid/icu/text/PluralRules$FixedDecimal;)I

    move-result p0

    return p0
.end method

.method public doubleValue()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 979
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    neg-double v0, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    :goto_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 897
    :cond_1
    instance-of v2, p1, Landroid/icu/text/PluralRules$FixedDecimal;

    if-nez v2, :cond_2

    return v0

    .line 900
    :cond_2
    check-cast p1, Landroid/icu/text/PluralRules$FixedDecimal;

    .line 901
    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v4, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v3, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide p0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public floatValue()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 968
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    double-to-float p0, v0

    return p0
.end method

.method public getBaseFactor()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 658
    iget p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return p0
.end method

.method public getDecimalDigits()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 608
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    return-wide v0
.end method

.method public getDecimalDigitsWithoutTrailingZeros()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 618
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    return-wide v0
.end method

.method public getIntegerValue()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    return-wide v0
.end method

.method public getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 837
    sget-object v0, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 844
    iget-wide p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    return-wide p0

    .line 843
    :pswitch_0
    iget p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    int-to-double p0, p0

    return-wide p0

    .line 842
    :pswitch_1
    iget p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    int-to-double p0, p0

    return-wide p0

    .line 841
    :pswitch_2
    iget-wide p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    long-to-double p0, p0

    return-wide p0

    .line 840
    :pswitch_3
    iget-wide p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    long-to-double p0, p0

    return-wide p0

    .line 839
    :pswitch_4
    iget-wide p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double p0, p0

    return-wide p0

    .line 838
    :pswitch_5
    iget-wide p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShiftedValue()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 989
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSource()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 578
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    return-wide v0
.end method

.method public getVisibleDecimalDigitCount()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 588
    iget p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    return p0
.end method

.method public getVisibleDecimalDigitCountWithoutTrailingZeros()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 598
    iget p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    return p0
.end method

.method public hasIntegerValue()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 934
    iget-boolean p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    return p0
.end method

.method public hashCode()I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 913
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget-wide v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    const-wide v5, 0x4042800000000000L    # 37.0

    mul-double/2addr v3, v5

    double-to-int p0, v3

    add-int/2addr v2, p0

    mul-int/lit8 v2, v2, 0x25

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public intValue()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 946
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-int p0, v0

    return p0
.end method

.method public isHasIntegerValue()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    iget-boolean p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    return p0
.end method

.method public isInfinite()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1024
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    return p0
.end method

.method public isNaN()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1012
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0
.end method

.method public isNegative()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    iget-boolean p0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    return p0
.end method

.method public longValue()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 957
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
