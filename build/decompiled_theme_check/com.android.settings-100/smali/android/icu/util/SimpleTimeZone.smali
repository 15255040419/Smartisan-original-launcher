.class public Landroid/icu/util/SimpleTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "SimpleTimeZone.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field private static final serialVersionUID:J = -0x61a030c4b2083e91L

.field private static final staticMonthLength:[B


# instance fields
.field private dst:I

.field private transient dstRule:Landroid/icu/util/AnnualTimeZoneRule;

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private endTimeMode:I

.field private transient firstTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private raw:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startTimeMode:I

.field private startYear:I

.field private transient stdRule:Landroid/icu/util/AnnualTimeZoneRule;

.field private transient transitionRulesInitialized:Z

.field private useDaylight:Z

.field private xinfo:Landroid/icu/util/STZInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 617
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    return-void

    :array_0
    .array-data 1
        0x1ft
        0x1dt
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 13

    .line 64
    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const p2, 0x36ee80

    .line 922
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 p2, 0x0

    .line 923
    iput-object p2, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    const/4 p2, 0x0

    .line 1386
    iput-boolean p2, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x36ee80

    move-object v0, p0

    move v1, p1

    .line 65
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    .line 132
    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v1, 0x36ee80

    .line 922
    iput v1, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 v1, 0x0

    .line 923
    iput-object v1, v0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    const/4 v1, 0x0

    .line 1386
    iput-boolean v1, v0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    const/4 v6, 0x0

    const/4 v11, 0x0

    const v12, 0x36ee80

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 133
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    .line 224
    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v1, 0x36ee80

    .line 922
    iput v1, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 v1, 0x0

    .line 923
    iput-object v1, v0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    const/4 v1, 0x0

    .line 1386
    iput-boolean v1, v0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    const/4 v6, 0x0

    const/4 v11, 0x0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v12, p11

    .line 225
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 13

    move-object v0, p0

    move-object v1, p2

    .line 182
    invoke-direct {p0, p2}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v1, 0x36ee80

    .line 922
    iput v1, v0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 v1, 0x0

    .line 923
    iput-object v1, v0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    const/4 v1, 0x0

    .line 1386
    iput-boolean v1, v0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 183
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    return-void
.end method

.method private compareToRule(IIIIIIIIIIII)I
    .locals 0

    add-int/2addr p6, p7

    const/4 p0, 0x1

    :cond_0
    :goto_0
    const p7, 0x5265c00

    if-lt p6, p7, :cond_1

    sub-int/2addr p6, p7

    add-int/lit8 p4, p4, 0x1

    .line 839
    rem-int/lit8 p5, p5, 0x7

    add-int/2addr p5, p0

    if-le p4, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    move p4, p0

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p6, :cond_3

    add-int/lit8 p4, p4, -0x1

    add-int/lit8 p5, p5, 0x5

    .line 862
    rem-int/lit8 p5, p5, 0x7

    add-int/2addr p5, p0

    if-ge p4, p0, :cond_2

    add-int/lit8 p1, p1, -0x1

    move p4, p3

    :cond_2
    add-int/2addr p6, p7

    goto :goto_1

    :cond_3
    const/4 p3, -0x1

    if-ge p1, p9, :cond_4

    return p3

    :cond_4
    if-le p1, p9, :cond_5

    return p0

    :cond_5
    if-le p11, p2, :cond_6

    move p11, p2

    :cond_6
    const/4 p1, 0x0

    if-eq p8, p0, :cond_b

    const/4 p7, 0x2

    if-eq p8, p7, :cond_9

    const/4 p2, 0x3

    if-eq p8, p2, :cond_8

    const/4 p2, 0x4

    if-eq p8, p2, :cond_7

    move p11, p1

    goto :goto_3

    :cond_7
    rsub-int/lit8 p2, p10, 0x31

    add-int/2addr p2, p11

    add-int/2addr p2, p5

    sub-int/2addr p2, p4

    .line 901
    rem-int/lit8 p2, p2, 0x7

    sub-int/2addr p11, p2

    goto :goto_3

    :cond_8
    add-int/lit8 p10, p10, 0x31

    sub-int/2addr p10, p11

    sub-int/2addr p10, p5

    add-int/2addr p10, p4

    .line 897
    rem-int/lit8 p10, p10, 0x7

    :goto_2
    add-int/2addr p11, p10

    goto :goto_3

    :cond_9
    if-lez p11, :cond_a

    add-int/lit8 p11, p11, -0x1

    mul-int/lit8 p11, p11, 0x7

    add-int/2addr p11, p0

    add-int/lit8 p10, p10, 0x7

    sub-int/2addr p5, p4

    add-int/2addr p5, p0

    sub-int/2addr p10, p5

    .line 888
    rem-int/lit8 p10, p10, 0x7

    goto :goto_2

    :cond_a
    add-int/lit8 p11, p11, 0x1

    mul-int/lit8 p11, p11, 0x7

    add-int/2addr p11, p2

    add-int/2addr p5, p2

    sub-int/2addr p5, p4

    add-int/lit8 p5, p5, 0x7

    sub-int/2addr p5, p10

    .line 892
    rem-int/lit8 p5, p5, 0x7

    sub-int/2addr p11, p5

    :cond_b
    :goto_3
    if-ge p4, p11, :cond_c

    return p3

    :cond_c
    if-le p4, p11, :cond_d

    return p0

    :cond_d
    if-ge p6, p12, :cond_e

    return p3

    :cond_e
    if-le p6, p12, :cond_f

    return p0

    :cond_f
    return p1
.end method

.method private construct(IIIIIIIIIIII)V
    .locals 0

    .line 976
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    .line 977
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    .line 978
    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    .line 979
    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    .line 980
    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    .line 981
    iput p6, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    .line 982
    iput p7, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    .line 983
    iput p8, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    .line 984
    iput p9, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    .line 985
    iput p10, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    .line 986
    iput p11, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    .line 987
    iput p12, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 p1, 0x0

    .line 988
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    const/4 p1, 0x1

    .line 989
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    .line 990
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    .line 992
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeRules()V

    if-lez p12, :cond_0

    return-void

    .line 995
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private decodeEndRule()V
    .locals 5

    .line 1074
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    .line 1075
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const v2, 0x5265c00

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1

    .line 1076
    iput v2, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 1078
    :cond_1
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_b

    .line 1079
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-ltz v3, :cond_a

    const/16 v4, 0xb

    if-gt v3, v4, :cond_a

    .line 1082
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-ltz v3, :cond_9

    if-gt v3, v2, :cond_9

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ltz v2, :cond_9

    const/4 v3, 0x2

    if-gt v2, v3, :cond_9

    .line 1086
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v2, :cond_2

    .line 1087
    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    .line 1090
    iput v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_1

    :cond_3
    neg-int v2, v2

    .line 1092
    iput v2, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-lez v0, :cond_4

    const/4 v0, 0x3

    .line 1094
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_1

    :cond_4
    neg-int v0, v0

    .line 1096
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    const/4 v0, 0x4

    .line 1097
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    .line 1100
    :goto_1
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v2, 0x7

    if-gt v0, v2, :cond_8

    .line 1104
    :goto_2
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-ne v0, v3, :cond_6

    .line 1105
    iget p0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    const/4 v0, -0x5

    if-lt p0, v0, :cond_5

    const/4 v0, 0x5

    if-gt p0, v0, :cond_5

    goto :goto_3

    .line 1106
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1108
    :cond_6
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-lt v0, v1, :cond_7

    sget-object v1, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget p0, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    aget-byte p0, v1, p0

    if-gt v0, p0, :cond_7

    goto :goto_3

    .line 1109
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1101
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1084
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1080
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b
    :goto_3
    return-void
.end method

.method private decodeRules()V
    .locals 0

    .line 999
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeStartRule()V

    .line 1000
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeEndRule()V

    return-void
.end method

.method private decodeStartRule()V
    .locals 5

    .line 1028
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    .line 1029
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const v2, 0x5265c00

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_1

    .line 1030
    iput v2, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    .line 1032
    :cond_1
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_b

    .line 1033
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    if-ltz v3, :cond_a

    const/16 v4, 0xb

    if-gt v3, v4, :cond_a

    .line 1036
    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-ltz v3, :cond_9

    if-gt v3, v2, :cond_9

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ltz v2, :cond_9

    const/4 v3, 0x2

    if-gt v2, v3, :cond_9

    .line 1040
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v2, :cond_2

    .line 1041
    iput v1, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_2

    :cond_2
    if-lez v2, :cond_3

    .line 1044
    iput v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_1

    :cond_3
    neg-int v2, v2

    .line 1046
    iput v2, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-lez v0, :cond_4

    const/4 v0, 0x3

    .line 1048
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_1

    :cond_4
    neg-int v0, v0

    .line 1050
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v0, 0x4

    .line 1051
    iput v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    .line 1054
    :goto_1
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v2, 0x7

    if-gt v0, v2, :cond_8

    .line 1058
    :goto_2
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    if-ne v0, v3, :cond_6

    .line 1059
    iget p0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    const/4 v0, -0x5

    if-lt p0, v0, :cond_5

    const/4 v0, 0x5

    if-gt p0, v0, :cond_5

    goto :goto_3

    .line 1060
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1062
    :cond_6
    iget v0, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-lt v0, v1, :cond_7

    sget-object v1, Landroid/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget p0, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    aget-byte p0, v1, p0

    if-gt v0, p0, :cond_7

    goto :goto_3

    .line 1063
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1055
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1038
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1034
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_b
    :goto_3
    return-void
.end method

.method private getOffset(IIIIIIII)I
    .locals 24

    move-object/from16 v13, p0

    move/from16 v0, p1

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move/from16 v9, p8

    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    if-nez v0, :cond_c

    :cond_0
    if-ltz v14, :cond_c

    const/16 v1, 0xb

    if-gt v14, v1, :cond_c

    if-lt v15, v8, :cond_c

    if-gt v15, v10, :cond_c

    if-lt v12, v8, :cond_c

    const/4 v1, 0x7

    if-gt v12, v1, :cond_c

    if-ltz v11, :cond_c

    const v1, 0x5265c00

    if-ge v11, v1, :cond_c

    const/16 v1, 0x1c

    if-lt v10, v1, :cond_c

    const/16 v2, 0x1f

    if-gt v10, v2, :cond_c

    if-lt v9, v1, :cond_c

    if-gt v9, v2, :cond_c

    .line 721
    iget v7, v13, Landroid/icu/util/SimpleTimeZone;->raw:I

    .line 724
    iget-boolean v1, v13, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v1, :cond_b

    iget v1, v13, Landroid/icu/util/SimpleTimeZone;->startYear:I

    move/from16 v2, p2

    if-lt v2, v1, :cond_b

    if-eq v0, v8, :cond_1

    goto/16 :goto_5

    .line 728
    :cond_1
    iget v0, v13, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v1, v13, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    const/16 v16, 0x0

    if-le v0, v1, :cond_2

    move v6, v8

    goto :goto_0

    :cond_2
    move/from16 v6, v16

    .line 734
    :goto_0
    iget v0, v13, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    iget v0, v13, Landroid/icu/util/SimpleTimeZone;->raw:I

    neg-int v0, v0

    move/from16 v17, v0

    goto :goto_1

    :cond_3
    move/from16 v17, v16

    :goto_1
    iget v4, v13, Landroid/icu/util/SimpleTimeZone;->startMode:I

    iget v3, v13, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v2, v13, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v1, v13, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v0, v13, Landroid/icu/util/SimpleTimeZone;->startTime:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move/from16 v1, p3

    move/from16 v20, v2

    move/from16 v2, p7

    move/from16 v21, v3

    move/from16 v3, p8

    move/from16 v22, v4

    move/from16 v4, p4

    move v14, v5

    move/from16 v5, p5

    move v14, v6

    move/from16 v6, p6

    move/from16 v23, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move/from16 v8, v22

    move/from16 v9, v21

    move/from16 v10, v20

    move/from16 v11, v19

    move/from16 v12, v18

    .line 732
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v18

    if-ltz v18, :cond_4

    move/from16 v0, v17

    goto :goto_2

    :cond_4
    move/from16 v0, v16

    :goto_2
    if-eq v14, v0, :cond_7

    .line 751
    iget v0, v13, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-nez v0, :cond_5

    iget v0, v13, Landroid/icu/util/SimpleTimeZone;->dst:I

    :goto_3
    move v7, v0

    goto :goto_4

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 752
    iget v0, v13, Landroid/icu/util/SimpleTimeZone;->raw:I

    neg-int v0, v0

    goto :goto_3

    :cond_6
    move/from16 v7, v16

    :goto_4
    iget v8, v13, Landroid/icu/util/SimpleTimeZone;->endMode:I

    iget v9, v13, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v10, v13, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v11, v13, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v12, v13, Landroid/icu/util/SimpleTimeZone;->endTime:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 749
    invoke-direct/range {v0 .. v12}, Landroid/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v16

    :cond_7
    if-nez v14, :cond_8

    if-ltz v18, :cond_8

    if-ltz v16, :cond_9

    :cond_8
    if-eqz v14, :cond_a

    if-gez v18, :cond_9

    if-gez v16, :cond_a

    .line 763
    :cond_9
    iget v0, v13, Landroid/icu/util/SimpleTimeZone;->dst:I

    add-int v7, v23, v0

    move/from16 v23, v7

    :cond_a
    return v23

    :cond_b
    :goto_5
    move/from16 v23, v7

    return v23

    .line 684
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private getSTZInfo()Landroid/icu/util/STZInfo;
    .locals 1

    .line 601
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Landroid/icu/util/STZInfo;

    invoke-direct {v0}, Landroid/icu/util/STZInfo;-><init>()V

    iput-object v0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    .line 604
    :cond_0
    iget-object p0, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    return-object p0
.end method

.method private idEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1149
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 22

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1307
    :try_start_0
    iget-boolean v0, v1, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1308
    monitor-exit p0

    return-void

    .line 1310
    :cond_0
    :try_start_1
    iget-boolean v0, v1, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 1316
    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v5, 0x2

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_0

    .line 1317
    :cond_1
    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v2

    .line 1318
    :goto_0
    iget v6, v1, Landroid/icu/util/SimpleTimeZone;->startMode:I

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v6, v3, :cond_6

    if-eq v6, v5, :cond_5

    if-eq v6, v14, :cond_4

    if-eq v6, v13, :cond_3

    goto :goto_1

    .line 1331
    :cond_3
    new-instance v0, Landroid/icu/util/DateTimeRule;

    iget v7, v1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v10, 0x0

    iget v11, v1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    move-object v6, v0

    move v12, v4

    invoke-direct/range {v6 .. v12}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_1

    .line 1327
    :cond_4
    new-instance v0, Landroid/icu/util/DateTimeRule;

    iget v7, v1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v10, 0x1

    iget v11, v1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    move-object v6, v0

    move v12, v4

    invoke-direct/range {v6 .. v12}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_1

    .line 1323
    :cond_5
    new-instance v0, Landroid/icu/util/DateTimeRule;

    iget v7, v1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v10, v1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    move-object v6, v0

    move v11, v4

    invoke-direct/range {v6 .. v11}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    goto :goto_1

    .line 1320
    :cond_6
    new-instance v0, Landroid/icu/util/DateTimeRule;

    iget v6, v1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v7, v1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    invoke-direct {v0, v6, v7, v8, v4}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    .line 1336
    :goto_1
    new-instance v4, Landroid/icu/util/AnnualTimeZoneRule;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(DST)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v18

    iget v6, v1, Landroid/icu/util/SimpleTimeZone;->startYear:I

    const v21, 0x7fffffff

    move-object v15, v4

    move-object/from16 v19, v0

    move/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    iput-object v4, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1340
    iget-object v4, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v6

    invoke-virtual {v4, v6, v2}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 1343
    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v4, v3, :cond_7

    move v4, v3

    goto :goto_2

    .line 1344
    :cond_7
    iget v4, v1, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v4, v5, :cond_8

    move v4, v5

    goto :goto_2

    :cond_8
    move v4, v2

    .line 1345
    :goto_2
    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-eq v8, v3, :cond_c

    if-eq v8, v5, :cond_b

    if-eq v8, v14, :cond_a

    if-eq v8, v13, :cond_9

    :goto_3
    move-object v14, v0

    goto :goto_4

    .line 1357
    :cond_9
    new-instance v0, Landroid/icu/util/DateTimeRule;

    iget v5, v1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/16 v19, 0x0

    iget v10, v1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    move-object v15, v0

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    move/from16 v21, v4

    invoke-direct/range {v15 .. v21}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_3

    .line 1353
    :cond_a
    new-instance v0, Landroid/icu/util/DateTimeRule;

    iget v5, v1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/16 v19, 0x1

    iget v10, v1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    move-object v15, v0

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    move/from16 v21, v4

    invoke-direct/range {v15 .. v21}, Landroid/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_3

    .line 1350
    :cond_b
    new-instance v0, Landroid/icu/util/DateTimeRule;

    iget v5, v1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v10, v1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    move-object v15, v0

    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    goto :goto_3

    .line 1347
    :cond_c
    new-instance v0, Landroid/icu/util/DateTimeRule;

    iget v5, v1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v8, v1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v9, v1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    invoke-direct {v0, v5, v8, v9, v4}, Landroid/icu/util/DateTimeRule;-><init>(IIII)V

    goto :goto_3

    .line 1362
    :goto_4
    new-instance v0, Landroid/icu/util/AnnualTimeZoneRule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(STD)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v12

    const/4 v13, 0x0

    iget v15, v1, Landroid/icu/util/SimpleTimeZone;->startYear:I

    const v16, 0x7fffffff

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1366
    iget-object v0, v1, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    iget-object v5, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gez v0, :cond_d

    .line 1370
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(DST)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v6

    iget-object v7, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1371
    invoke-virtual {v7}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v7

    invoke-direct {v0, v2, v6, v7}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1372
    new-instance v0, Landroid/icu/util/TimeZoneTransition;

    iget-object v2, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    iget-object v6, v1, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v4, v5, v2, v6}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    goto :goto_5

    .line 1374
    :cond_d
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(STD)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v5

    invoke-direct {v0, v4, v5, v2}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1375
    new-instance v0, Landroid/icu/util/TimeZoneTransition;

    iget-object v2, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    iget-object v4, v1, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v6, v7, v2, v4}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    goto :goto_5

    .line 1380
    :cond_e
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v5

    invoke-direct {v0, v4, v5, v2}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v0, v1, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1382
    :goto_5
    iput-boolean v3, v1, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 563
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 586
    iget-object p1, p0, Landroid/icu/util/SimpleTimeZone;->xinfo:Landroid/icu/util/STZInfo;

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p1, p0}, Landroid/icu/util/STZInfo;->applyTo(Landroid/icu/util/SimpleTimeZone;)V

    :cond_0
    return-void
.end method

.method private setEndRule(IIIII)V
    .locals 0

    .line 512
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    .line 513
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    .line 514
    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    .line 515
    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    .line 516
    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    .line 517
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeEndRule()V

    const/4 p1, 0x0

    .line 519
    iput-boolean p1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method private setEndRule(IIIIIZ)V
    .locals 6

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, p2

    :goto_0
    move v2, p2

    neg-int v3, p3

    move-object v0, p0

    move v1, p1

    move v4, p4

    move v5, p5

    .line 489
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    return-void
.end method

.method private setStartRule(IIIII)V
    .locals 0

    .line 357
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    .line 358
    iput p2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    .line 359
    iput p3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    .line 360
    iput p4, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    .line 361
    iput p5, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    .line 362
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->decodeStartRule()V

    const/4 p1, 0x0

    .line 364
    iput-boolean p1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1186
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1189
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 1

    .line 1410
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    check-cast p0, Landroid/icu/util/SimpleTimeZone;

    const/4 v0, 0x0

    .line 1411
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1122
    :cond_1
    check-cast p1, Landroid/icu/util/SimpleTimeZone;

    .line 1123
    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->raw:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, p1, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_2

    .line 1125
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/icu/util/SimpleTimeZone;->idEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    iget p1, p1, Landroid/icu/util/SimpleTimeZone;->startYear:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    .line 1401
    iput-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public getDSTSavings()I
    .locals 0

    .line 549
    iget p0, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    return p0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 8

    .line 1234
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1238
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1239
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_6

    if-eqz p3, :cond_1

    if-nez v0, :cond_1

    goto :goto_0

    .line 1243
    :cond_1
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    move-wide v3, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 1245
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v3, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v3}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v3, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v3}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    move-wide v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1247
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1248
    :cond_2
    new-instance p1, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object p0, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {p1, p2, p3, v0, p0}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 1250
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1251
    :cond_4
    new-instance p2, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p1, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object p0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {p2, v0, v1, p1, p0}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p2

    :cond_5
    return-object v1

    .line 1241
    :cond_6
    :goto_0
    iget-object p0, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    return-object p0
.end method

.method public getOffset(IIIIII)I
    .locals 9

    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-gt p3, v0, :cond_0

    .line 637
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIIII)I

    move-result p0

    return p0

    .line 634
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getOffset(IIIIIII)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move v3, p3

    if-ltz v3, :cond_0

    const/16 v0, 0xb

    if-gt v3, v0, :cond_0

    .line 660
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v7

    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->previousMonthLength(II)I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 659
    invoke-direct/range {v0 .. v8}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIIIII)I

    move-result v0

    return v0

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide/from16 v0, p1

    .line 777
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v2

    const/4 v3, 0x0

    aput v2, p5, v3

    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 779
    invoke-static {v0, v1, v2}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 780
    aget v6, v2, v3

    const/4 v11, 0x1

    aget v7, v2, v11

    const/4 v12, 0x2

    aget v8, v2, v12

    const/4 v13, 0x3

    aget v9, v2, v13

    const/4 v14, 0x5

    aget v10, v2, v14

    const/4 v5, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v4

    aget v5, p5, v3

    sub-int/2addr v4, v5

    aput v4, p5, v11

    .line 787
    aget v4, p5, v11

    const/16 v5, 0xc

    if-lez v4, :cond_1

    and-int/lit8 v4, p3, 0x3

    if-eq v4, v11, :cond_0

    if-eq v4, v13, :cond_2

    and-int/lit8 v4, p3, 0xc

    if-eq v4, v5, :cond_2

    .line 791
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v4

    goto :goto_1

    :cond_1
    and-int/lit8 v4, p4, 0x3

    if-eq v4, v13, :cond_3

    if-eq v4, v11, :cond_2

    and-int/lit8 v4, p4, 0xc

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v0

    move v0, v3

    goto :goto_2

    .line 798
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v4

    :goto_1
    int-to-long v4, v4

    sub-long/2addr v0, v4

    move-wide v4, v0

    move v0, v11

    :goto_2
    if-eqz v0, :cond_4

    .line 804
    invoke-static {v4, v5, v2}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    const/16 v16, 0x1

    .line 805
    aget v17, v2, v3

    aget v18, v2, v11

    aget v19, v2, v12

    aget v20, v2, v13

    aget v21, v2, v14

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v21}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    aget v1, p5, v3

    sub-int/2addr v0, v1

    aput v0, p5, v11

    :cond_4
    return-void
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 8

    .line 1261
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1265
    :cond_0
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1266
    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->firstTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_5

    if-nez p3, :cond_1

    if-nez v0, :cond_1

    goto :goto_0

    .line 1270
    :cond_1
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1271
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    move-wide v3, p1

    move v7, p3

    .line 1270
    invoke-virtual/range {v2 .. v7}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 1272
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object v3, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v3}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v3, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    .line 1273
    invoke-virtual {v3}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    move-wide v3, p1

    .line 1272
    invoke-virtual/range {v2 .. v7}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1274
    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1275
    :cond_2
    new-instance p1, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object v0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object p0, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {p1, p2, p3, v0, p0}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p1

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 1277
    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1278
    :cond_4
    new-instance p2, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p1, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    iget-object p0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    invoke-direct {p2, v0, v1, p1, p0}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p2

    :cond_5
    :goto_0
    return-object v1
.end method

.method public getRawOffset()I
    .locals 0

    .line 268
    iget p0, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    return p0
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 4

    .line 1288
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1290
    iget-boolean v0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1291
    :goto_0
    new-array v0, v0, [Landroid/icu/util/TimeZoneRule;

    const/4 v2, 0x0

    .line 1292
    iget-object v3, p0, Landroid/icu/util/SimpleTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    aput-object v3, v0, v2

    .line 1293
    iget-boolean v2, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_1

    .line 1294
    iget-object v2, p0, Landroid/icu/util/SimpleTimeZone;->stdRule:Landroid/icu/util/AnnualTimeZoneRule;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 1295
    iget-object p0, p0, Landroid/icu/util/SimpleTimeZone;->dstRule:Landroid/icu/util/AnnualTimeZoneRule;

    aput-object p0, v0, v1

    :cond_1
    return-object v0
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1202
    :cond_0
    instance-of v1, p1, Landroid/icu/util/SimpleTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1205
    :cond_1
    check-cast p1, Landroid/icu/util/SimpleTimeZone;

    if-eqz p1, :cond_2

    .line 1206
    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->raw:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, p1, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v1, v3, :cond_2

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->dst:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startMode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startDay:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startTime:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endMode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endDay:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endTime:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v3, p1, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    iget p1, p1, Landroid/icu/util/SimpleTimeZone;->startYear:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1159
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v1, 0x8

    .line 1161
    iget-boolean v2, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    xor-int/lit8 v3, v2, 0x1

    add-int/2addr v1, v3

    xor-int/2addr v0, v1

    if-nez v2, :cond_0

    .line 1163
    iget v1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    ushr-int/lit8 v2, v1, 0xa

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xb

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xc

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xd

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xe

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0xf

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->startTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x10

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x11

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x12

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x13

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x14

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x15

    iget v3, p0, Landroid/icu/util/SimpleTimeZone;->endTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v3, 0x16

    iget p0, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    add-int/2addr v2, p0

    xor-int/2addr v1, v2

    ushr-int/lit8 p0, p0, 0x17

    xor-int/2addr p0, v1

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1

    .line 956
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    .line 957
    invoke-virtual {v0, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 958
    invoke-virtual {v0}, Landroid/icu/util/GregorianCalendar;->inDaylightTime()Z

    move-result p0

    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 1393
    iget-boolean p0, p0, Landroid/icu/util/SimpleTimeZone;->isFrozen:Z

    return p0
.end method

.method public observesDaylightTime()Z
    .locals 0

    .line 947
    iget-boolean p0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    return p0
.end method

.method public setDSTSavings(I)V
    .locals 1

    .line 529
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    .line 536
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->dst:I

    const/4 p1, 0x0

    .line 538
    iput-boolean p1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 534
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 530
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEndRule(III)V
    .locals 8

    .line 453
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    move v2, p1

    move v5, p3

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    return-void

    .line 454
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEndRule(IIII)V
    .locals 14

    .line 433
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 438
    invoke-direct/range {v8 .. v13}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIII)V

    return-void

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndRule(IIIIZ)V
    .locals 11

    .line 478
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p2

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setEnd(IIIIIZ)V

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p1

    move v7, p3

    move v8, p4

    move/from16 v10, p5

    .line 483
    invoke-direct/range {v4 .. v10}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIIIIZ)V

    return-void

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    .line 238
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 239
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRawOffset(I)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->raw:I

    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStartRule(III)V
    .locals 14

    .line 379
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x0

    move v2, p1

    move/from16 v5, p3

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v12, p3

    .line 384
    invoke-direct/range {v8 .. v13}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartRule(IIII)V
    .locals 14

    .line 308
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    const/4 v13, 0x0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 313
    invoke-direct/range {v8 .. v13}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStartRule(IIIIZ)V
    .locals 8

    .line 404
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v1

    const/4 v3, -0x1

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p2

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/STZInfo;->setStart(IIIIIZ)V

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, p2

    :goto_0
    move v2, p2

    neg-int v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p4

    .line 409
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIIII)V

    return-void

    .line 405
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStartYear(I)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Landroid/icu/util/SimpleTimeZone;->getSTZInfo()Landroid/icu/util/STZInfo;

    move-result-object v0

    iput p1, v0, Landroid/icu/util/STZInfo;->sy:I

    .line 282
    iput p1, p0, Landroid/icu/util/SimpleTimeZone;->startYear:I

    const/4 p1, 0x0

    .line 283
    iput-boolean p1, p0, Landroid/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 278
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleTimeZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useDaylightTime()Z
    .locals 0

    .line 939
    iget-boolean p0, p0, Landroid/icu/util/SimpleTimeZone;->useDaylight:Z

    return p0
.end method
