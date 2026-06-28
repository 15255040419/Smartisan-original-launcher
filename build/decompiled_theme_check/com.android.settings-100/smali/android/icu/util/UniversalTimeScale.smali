.class public final Landroid/icu/util/UniversalTimeScale;
.super Ljava/lang/Object;
.source "UniversalTimeScale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    }
.end annotation


# static fields
.field public static final DB2_TIME:I = 0x8

.field public static final DOTNET_DATE_TIME:I = 0x4

.field public static final EPOCH_OFFSET_MINUS_1_VALUE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EPOCH_OFFSET_PLUS_1_VALUE:I = 0x6

.field public static final EPOCH_OFFSET_VALUE:I = 0x1

.field public static final EXCEL_TIME:I = 0x7

.field public static final FROM_MAX_VALUE:I = 0x3

.field public static final FROM_MIN_VALUE:I = 0x2

.field public static final ICU4C_TIME:I = 0x2

.field public static final JAVA_TIME:I = 0x0

.field public static final MAC_OLD_TIME:I = 0x5

.field public static final MAC_TIME:I = 0x6

.field public static final MAX_ROUND_VALUE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_SCALE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_SCALE_VALUE:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIN_ROUND_VALUE:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TO_MAX_VALUE:I = 0x5

.field public static final TO_MIN_VALUE:I = 0x4

.field public static final UNITS_ROUND_VALUE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNITS_VALUE:I = 0x0

.field public static final UNIX_MICROSECONDS_TIME:I = 0x9

.field public static final UNIX_TIME:I = 0x1

.field public static final WINDOWS_FILE_TIME:I = 0x3

.field private static final days:J = 0xc92a69c000L

.field private static final hours:J = 0x861c46800L

.field private static final microseconds:J = 0xaL

.field private static final milliseconds:J = 0x2710L

.field private static final minutes:J = 0x23c34600L

.field private static final seconds:J = 0x989680L

.field private static final ticks:J = 0x1L

.field private static final timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    .line 306
    new-instance v14, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v2, 0x2710

    const-wide v4, 0x89f7ff5f7b58000L

    const-wide v6, -0x7ffffffffffffcd7L    # -3.997E-321

    const-wide v8, 0x7ffffffffffffcd7L

    const-wide v10, -0x37f5f6f906065L

    const-wide v12, 0x30e594b36b065L

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v1, 0x0

    aput-object v14, v0, v1

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/32 v16, 0x989680

    const-wide v18, 0x89f7ff5f7b58000L

    const-wide/high16 v20, -0x8000000000000000L

    const-wide v22, 0x7fffffffffffffffL

    const-wide v24, -0xe53726cce5L

    const-wide v26, 0xc84802dee5L

    move-object v15, v1

    invoke-direct/range {v15 .. v27}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v4, 0x2710

    const-wide v6, 0x89f7ff5f7b58000L

    const-wide v8, -0x7ffffffffffffcd7L    # -3.997E-321

    const-wide v10, 0x7ffffffffffffcd7L

    const-wide v12, -0x37f5f6f906065L

    const-wide v14, 0x30e594b36b065L

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v4, 0x1

    const-wide v6, 0x701ce1722770000L

    const-wide v8, -0x78fe31e8dd890000L    # -6.42831179684452E-275

    const-wide v10, 0x7fffffffffffffffL

    const-wide/high16 v12, -0x8000000000000000L

    const-wide v14, 0x78fe31e8dd88ffffL    # 6.533870374225853E274

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v14, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/32 v4, 0x989680

    const-wide v6, 0x855809903724000L

    const-wide v12, -0xe4bb011c65L

    const-wide v14, 0xc8c4288f65L

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v6, 0x8c2419ceb14c000L

    const-wide v12, -0xe571769565L

    const-wide v14, 0xc80db31665L

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide v4, 0xc92a69c000L

    const-wide v6, 0x8510489f5ed8000L

    const-wide/32 v12, -0xad7959

    const-wide/32 v14, 0x984ea5

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    const-wide/16 v4, 0xa

    const-wide v6, 0x89f7ff5f7b58000L

    const-wide v8, -0x7ffffffffffffffcL    # -2.0E-323

    const-wide v10, 0x7ffffffffffffffcL

    const-wide v12, -0xda98ccbcbf88cccL

    const-wide v14, 0xbf00ccdcda10cccL

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Landroid/icu/util/UniversalTimeScale$TimeScaleData;-><init>(JJJJJJ)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/UniversalTimeScale;->timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigDecimalFrom(DI)Landroid/icu/math/BigDecimal;
    .locals 3

    .line 357
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p2

    .line 358
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 359
    new-instance p0, Landroid/icu/math/BigDecimal;

    iget-wide v1, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {p0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 360
    new-instance p1, Landroid/icu/math/BigDecimal;

    iget-wide v1, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {p1, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 362
    invoke-virtual {v0, p1}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static bigDecimalFrom(JI)Landroid/icu/math/BigDecimal;
    .locals 3

    .line 377
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p2

    .line 378
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 379
    new-instance p0, Landroid/icu/math/BigDecimal;

    iget-wide v1, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {p0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 380
    new-instance p1, Landroid/icu/math/BigDecimal;

    iget-wide v1, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {p1, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 382
    invoke-virtual {v0, p1}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static bigDecimalFrom(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 4

    .line 397
    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p1

    .line 399
    new-instance v0, Landroid/icu/math/BigDecimal;

    iget-wide v1, p1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 400
    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v2, p1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v1, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 402
    invoke-virtual {p0, v1}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static from(JI)J
    .locals 2

    .line 340
    invoke-static {p0, p1, p2}, Landroid/icu/util/UniversalTimeScale;->fromRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p2

    .line 342
    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    add-long/2addr p0, v0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static fromRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .locals 2

    .line 578
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p2

    .line 580
    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-object p2

    .line 584
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "otherTime out of range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .locals 3

    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 510
    sget-object v0, Landroid/icu/util/UniversalTimeScale;->timeScaleTable:[Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    aget-object p0, v0, p0

    return-object p0

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scale out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimeScaleValue(II)J
    .locals 2

    .line 523
    invoke-static {p0}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p0

    packed-switch p1, :pswitch_data_0

    .line 561
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 558
    :pswitch_0
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    return-wide p0

    .line 555
    :pswitch_1
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    return-wide p0

    .line 552
    :pswitch_2
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    return-wide p0

    .line 549
    :pswitch_3
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    return-wide p0

    .line 546
    :pswitch_4
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    return-wide p0

    .line 543
    :pswitch_5
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    return-wide p0

    .line 540
    :pswitch_6
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    return-wide p0

    .line 537
    :pswitch_7
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMax:J

    return-wide p0

    .line 534
    :pswitch_8
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->fromMin:J

    return-wide p0

    .line 531
    :pswitch_9
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    return-wide p0

    .line 528
    :pswitch_a
    iget-wide p0, p0, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toBigDecimal(JI)Landroid/icu/math/BigDecimal;
    .locals 3

    .line 472
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p2

    .line 473
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 474
    new-instance p0, Landroid/icu/math/BigDecimal;

    iget-wide v1, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {p0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 475
    new-instance p1, Landroid/icu/math/BigDecimal;

    iget-wide v1, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {p1, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    const/4 p2, 0x4

    .line 477
    invoke-virtual {v0, p0, p2}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toBigDecimal(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 4

    .line 490
    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p1

    .line 491
    new-instance v0, Landroid/icu/math/BigDecimal;

    iget-wide v1, p1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 492
    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v2, p1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v1, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    const/4 p1, 0x4

    .line 494
    invoke-virtual {p0, v0, p1}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toBigDecimalTrunc(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    invoke-static {p1}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p1

    .line 605
    new-instance v0, Landroid/icu/math/BigDecimal;

    iget-wide v1, p1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;-><init>(J)V

    .line 606
    new-instance v1, Landroid/icu/math/BigDecimal;

    iget-wide v2, p1, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    invoke-direct {v1, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    const/4 p1, 0x1

    .line 608
    invoke-virtual {p0, v0, p1}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toLong(JI)J
    .locals 2

    .line 445
    invoke-static {p0, p1, p2}, Landroid/icu/util/UniversalTimeScale;->toRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 448
    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->minRound:J

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 449
    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    add-long/2addr p0, v0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr p0, v0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetP1:J

    :goto_0
    sub-long/2addr p0, v0

    return-wide p0

    .line 452
    :cond_0
    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    sub-long/2addr p0, v0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr p0, v0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    goto :goto_0

    .line 455
    :cond_1
    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->maxRound:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    .line 456
    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    sub-long/2addr p0, v0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr p0, v0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffsetM1:J

    goto :goto_0

    .line 459
    :cond_2
    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->unitsRound:J

    add-long/2addr p0, v0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->units:J

    div-long/2addr p0, v0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->epochOffset:J

    goto :goto_0
.end method

.method private static toRangeCheck(JI)Landroid/icu/util/UniversalTimeScale$TimeScaleData;
    .locals 2

    .line 567
    invoke-static {p2}, Landroid/icu/util/UniversalTimeScale;->getTimeScaleData(I)Landroid/icu/util/UniversalTimeScale$TimeScaleData;

    move-result-object p2

    .line 569
    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMin:J

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    iget-wide v0, p2, Landroid/icu/util/UniversalTimeScale$TimeScaleData;->toMax:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    return-object p2

    .line 573
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "universalTime out of range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
