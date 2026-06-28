.class final enum Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DateTimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;


# instance fields
.field absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 837
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "SECOND"

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 838
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v4, 0x1

    const-string v5, "MINUTE"

    invoke-direct {v0, v5, v4, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 839
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const/4 v5, 0x2

    const-string v6, "HOUR"

    invoke-direct {v0, v6, v5, v1, v3}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 840
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v7, 0x3

    const-string v8, "DAY"

    invoke-direct {v0, v8, v7, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 841
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v8, 0x4

    const-string v9, "WEEK"

    invoke-direct {v0, v9, v8, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 842
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v9, 0x5

    const-string v10, "MONTH"

    invoke-direct {v0, v10, v9, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 843
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v10, 0x6

    const-string v11, "QUARTER"

    invoke-direct {v0, v11, v10, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 844
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/4 v11, 0x7

    const-string v12, "YEAR"

    invoke-direct {v0, v12, v11, v1, v6}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 845
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v6, 0x8

    const-string v12, "SUNDAY"

    invoke-direct {v0, v12, v6, v3, v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 846
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v12, 0x9

    const-string v13, "MONDAY"

    invoke-direct {v0, v13, v12, v3, v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 847
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v13, 0xa

    const-string v14, "TUESDAY"

    invoke-direct {v0, v14, v13, v3, v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 848
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v14, 0xb

    const-string v15, "WEDNESDAY"

    invoke-direct {v0, v15, v14, v3, v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 849
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v15, 0xc

    const-string v14, "THURSDAY"

    invoke-direct {v0, v14, v15, v3, v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 850
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const/16 v14, 0xd

    const-string v15, "FRIDAY"

    invoke-direct {v0, v15, v14, v3, v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 851
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v15, "SATURDAY"

    const/16 v14, 0xe

    invoke-direct {v0, v15, v14, v3, v1}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    const/16 v0, 0xf

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 836
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v11

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v12

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    aput-object v1, v0, v13

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            ")V"
        }
    .end annotation

    .line 856
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 857
    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 858
    iput-object p4, p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->absUnit:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    .locals 0

    .line 836
    invoke-static {p0}, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    move-result-object p0

    return-object p0
.end method

.method private static final orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    .locals 2

    .line 863
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v0, "quarter"

    .line 905
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 906
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_1
    const-string v0, "minute"

    .line 898
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MINUTE:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_2
    const-string/jumbo v0, "second"

    .line 900
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 901
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SECOND:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_3
    const-string v0, "month"

    .line 893
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 894
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_4
    const-string v0, "hour"

    .line 884
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 885
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->HOUR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_5
    const-string/jumbo v0, "week"

    .line 886
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 887
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_6
    const-string/jumbo v0, "year"

    .line 888
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 889
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_7
    const-string v0, "day"

    .line 865
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 866
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_8
    const-string/jumbo v0, "sun"

    .line 867
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 868
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_9
    const-string v0, "mon"

    .line 869
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 870
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_a
    const-string/jumbo v0, "tue"

    .line 871
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 872
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_b
    const-string/jumbo v0, "wed"

    .line 873
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 874
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_c
    const-string/jumbo v0, "thu"

    .line 875
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 876
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_d
    const-string v0, "fri"

    .line 877
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 878
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_e
    const-string/jumbo v0, "sat"

    .line 879
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 880
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_f
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    .locals 1

    .line 836
    const-class v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    .locals 1

    .line 836
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->$VALUES:[Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    invoke-virtual {v0}, [Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object v0
.end method
