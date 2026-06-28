.class public final Landroid/icu/impl/duration/TimeUnit;
.super Ljava/lang/Object;
.source "TimeUnit.java"


# static fields
.field public static final DAY:Landroid/icu/impl/duration/TimeUnit;

.field public static final HOUR:Landroid/icu/impl/duration/TimeUnit;

.field public static final MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

.field public static final MINUTE:Landroid/icu/impl/duration/TimeUnit;

.field public static final MONTH:Landroid/icu/impl/duration/TimeUnit;

.field public static final SECOND:Landroid/icu/impl/duration/TimeUnit;

.field public static final WEEK:Landroid/icu/impl/duration/TimeUnit;

.field public static final YEAR:Landroid/icu/impl/duration/TimeUnit;

.field static final approxDurations:[J

.field static final units:[Landroid/icu/impl/duration/TimeUnit;


# instance fields
.field final name:Ljava/lang/String;

.field final ordinal:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 37
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const/4 v1, 0x0

    const-string/jumbo v2, "year"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    .line 40
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const/4 v2, 0x1

    const-string v3, "month"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    .line 43
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const/4 v3, 0x2

    const-string/jumbo v4, "week"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->WEEK:Landroid/icu/impl/duration/TimeUnit;

    .line 46
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const/4 v4, 0x3

    const-string v5, "day"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    .line 49
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const/4 v5, 0x4

    const-string v6, "hour"

    invoke-direct {v0, v6, v5}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    .line 52
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const/4 v6, 0x5

    const-string v7, "minute"

    invoke-direct {v0, v7, v6}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    .line 55
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const/4 v7, 0x6

    const-string/jumbo v8, "second"

    invoke-direct {v0, v8, v7}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    .line 58
    new-instance v0, Landroid/icu/impl/duration/TimeUnit;

    const/4 v8, 0x7

    const-string v9, "millisecond"

    invoke-direct {v0, v9, v8}, Landroid/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    const/16 v0, 0x8

    new-array v9, v0, [Landroid/icu/impl/duration/TimeUnit;

    .line 71
    sget-object v10, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    aput-object v10, v9, v1

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MONTH:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v9, v2

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->WEEK:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v9, v3

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->DAY:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v9, v4

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->HOUR:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v9, v5

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v9, v6

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->SECOND:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v9, v7

    sget-object v1, Landroid/icu/impl/duration/TimeUnit;->MILLISECOND:Landroid/icu/impl/duration/TimeUnit;

    aput-object v1, v9, v8

    sput-object v9, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    new-array v0, v0, [J

    .line 86
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/duration/TimeUnit;->approxDurations:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x758fac300L
        0x9cd00b00L
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
        0x1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    int-to-byte p1, p2

    .line 28
    iput-byte p1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    return-void
.end method


# virtual methods
.method public larger()Landroid/icu/impl/duration/TimeUnit;
    .locals 1

    .line 62
    iget-byte p0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    :goto_0
    return-object p0
.end method

.method public ordinal()I
    .locals 0

    .line 77
    iget-byte p0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    return p0
.end method

.method public smaller()Landroid/icu/impl/duration/TimeUnit;
    .locals 2

    .line 67
    iget-byte p0, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    sget-object v0, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    aget-object p0, v0, p0

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Landroid/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    return-object p0
.end method
