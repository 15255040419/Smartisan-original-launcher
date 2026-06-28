.class public Landroid/icu/number/Grouper;
.super Ljava/lang/Object;
.source "Grouper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final B2:B = 0x2t

.field private static final B3:B = 0x3t

.field private static final DEFAULTS:Landroid/icu/number/Grouper;

.field private static final GROUPING_3:Landroid/icu/number/Grouper;

.field private static final GROUPING_3_2:Landroid/icu/number/Grouper;

.field private static final GROUPING_3_2_MIN2:Landroid/icu/number/Grouper;

.field private static final GROUPING_3_MIN2:Landroid/icu/number/Grouper;

.field private static final MIN2:Landroid/icu/number/Grouper;

.field private static final N1:B = -0x1t

.field private static final N2:B = -0x2t

.field private static final NONE:Landroid/icu/number/Grouper;


# instance fields
.field private final grouping1:B

.field private final grouping2:B

.field private final min2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Landroid/icu/number/Grouper;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/icu/number/Grouper;-><init>(BBZ)V

    sput-object v0, Landroid/icu/number/Grouper;->DEFAULTS:Landroid/icu/number/Grouper;

    .line 24
    new-instance v0, Landroid/icu/number/Grouper;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v2, v3}, Landroid/icu/number/Grouper;-><init>(BBZ)V

    sput-object v0, Landroid/icu/number/Grouper;->MIN2:Landroid/icu/number/Grouper;

    .line 25
    new-instance v0, Landroid/icu/number/Grouper;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/icu/number/Grouper;-><init>(BBZ)V

    sput-object v0, Landroid/icu/number/Grouper;->NONE:Landroid/icu/number/Grouper;

    .line 68
    new-instance v0, Landroid/icu/number/Grouper;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v2, v1}, Landroid/icu/number/Grouper;-><init>(BBZ)V

    sput-object v0, Landroid/icu/number/Grouper;->GROUPING_3:Landroid/icu/number/Grouper;

    .line 69
    new-instance v0, Landroid/icu/number/Grouper;

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4, v1}, Landroid/icu/number/Grouper;-><init>(BBZ)V

    sput-object v0, Landroid/icu/number/Grouper;->GROUPING_3_2:Landroid/icu/number/Grouper;

    .line 70
    new-instance v0, Landroid/icu/number/Grouper;

    invoke-direct {v0, v2, v2, v3}, Landroid/icu/number/Grouper;-><init>(BBZ)V

    sput-object v0, Landroid/icu/number/Grouper;->GROUPING_3_MIN2:Landroid/icu/number/Grouper;

    .line 71
    new-instance v0, Landroid/icu/number/Grouper;

    invoke-direct {v0, v2, v4, v3}, Landroid/icu/number/Grouper;-><init>(BBZ)V

    sput-object v0, Landroid/icu/number/Grouper;->GROUPING_3_2_MIN2:Landroid/icu/number/Grouper;

    return-void
.end method

.method private constructor <init>(BBZ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Landroid/icu/number/Grouper;->grouping1:B

    .line 33
    iput-byte p2, p0, Landroid/icu/number/Grouper;->grouping2:B

    .line 34
    iput-boolean p3, p0, Landroid/icu/number/Grouper;->min2:Z

    return-void
.end method

.method public static defaults()Landroid/icu/number/Grouper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    sget-object v0, Landroid/icu/number/Grouper;->DEFAULTS:Landroid/icu/number/Grouper;

    return-object v0
.end method

.method static getInstance(BBZ)Landroid/icu/number/Grouper;
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 75
    sget-object p0, Landroid/icu/number/Grouper;->NONE:Landroid/icu/number/Grouper;

    return-object p0

    :cond_0
    const/4 v0, 0x3

    if-nez p2, :cond_1

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_1

    .line 77
    sget-object p0, Landroid/icu/number/Grouper;->GROUPING_3:Landroid/icu/number/Grouper;

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-nez p2, :cond_2

    if-ne p0, v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 79
    sget-object p0, Landroid/icu/number/Grouper;->GROUPING_3_2:Landroid/icu/number/Grouper;

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    if-ne p0, v0, :cond_3

    if-ne p1, v0, :cond_3

    .line 81
    sget-object p0, Landroid/icu/number/Grouper;->GROUPING_3_MIN2:Landroid/icu/number/Grouper;

    return-object p0

    :cond_3
    if-eqz p2, :cond_4

    if-ne p0, v0, :cond_4

    if-ne p1, v1, :cond_4

    .line 83
    sget-object p0, Landroid/icu/number/Grouper;->GROUPING_3_2_MIN2:Landroid/icu/number/Grouper;

    return-object p0

    .line 85
    :cond_4
    new-instance v0, Landroid/icu/number/Grouper;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/number/Grouper;-><init>(BBZ)V

    return-object v0
.end method

.method public static minTwoDigits()Landroid/icu/number/Grouper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    sget-object v0, Landroid/icu/number/Grouper;->MIN2:Landroid/icu/number/Grouper;

    return-object v0
.end method

.method public static none()Landroid/icu/number/Grouper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    sget-object v0, Landroid/icu/number/Grouper;->NONE:Landroid/icu/number/Grouper;

    return-object v0
.end method


# virtual methods
.method groupAtPosition(ILandroid/icu/impl/number/DecimalQuantity;)Z
    .locals 3

    .line 108
    iget-byte v0, p0, Landroid/icu/number/Grouper;->grouping1:B

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sub-int/2addr p1, v0

    const/4 v0, 0x1

    if-ltz p1, :cond_2

    .line 113
    iget-byte v1, p0, Landroid/icu/number/Grouper;->grouping2:B

    rem-int/2addr p1, v1

    if-nez p1, :cond_2

    .line 114
    invoke-interface {p2}, Landroid/icu/impl/number/DecimalQuantity;->getUpperDisplayMagnitude()I

    move-result p1

    iget-byte p2, p0, Landroid/icu/number/Grouper;->grouping1:B

    sub-int/2addr p1, p2

    add-int/2addr p1, v0

    iget-boolean p0, p0, Landroid/icu/number/Grouper;->min2:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-lt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    :goto_2
    return v2
.end method

.method withLocaleData(Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;)Landroid/icu/number/Grouper;
    .locals 6

    .line 90
    iget-byte v0, p0, Landroid/icu/number/Grouper;->grouping1:B

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    return-object p0

    .line 94
    :cond_0
    iget-object v0, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v0, v0, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 95
    iget-object v1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v4, v1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 v1, 0x10

    ushr-long/2addr v4, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    .line 96
    iget-object p1, p1, Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;->positive:Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;

    iget-wide v4, p1, Landroid/icu/impl/number/PatternStringParser$ParsedSubpatternInfo;->groupingSizes:J

    const/16 p1, 0x20

    ushr-long/2addr v4, p1

    and-long/2addr v2, v4

    long-to-int p1, v2

    int-to-byte p1, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    if-ne p1, v2, :cond_2

    move v1, v0

    .line 103
    :cond_2
    iget-boolean p0, p0, Landroid/icu/number/Grouper;->min2:Z

    invoke-static {v0, v1, p0}, Landroid/icu/number/Grouper;->getInstance(BBZ)Landroid/icu/number/Grouper;

    move-result-object p0

    return-object p0
.end method
