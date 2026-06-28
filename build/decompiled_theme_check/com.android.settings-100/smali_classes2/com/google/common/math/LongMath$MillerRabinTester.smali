.class abstract enum Lcom/google/common/math/LongMath$MillerRabinTester;
.super Ljava/lang/Enum;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LongMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "MillerRabinTester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/math/LongMath$MillerRabinTester;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

.field public static final enum SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1068
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$1;

    const/4 v1, 0x0

    const-string v2, "SMALL"

    invoke-direct {v0, v2, v1}, Lcom/google/common/math/LongMath$MillerRabinTester$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1086
    new-instance v0, Lcom/google/common/math/LongMath$MillerRabinTester$2;

    const/4 v2, 0x1

    const-string v3, "LARGE"

    invoke-direct {v0, v3, v2}, Lcom/google/common/math/LongMath$MillerRabinTester$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/math/LongMath$MillerRabinTester;

    .line 1066
    sget-object v3, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1066
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/math/LongMath$1;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/LongMath$MillerRabinTester;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private powMod(JJJ)J
    .locals 9

    const-wide/16 v0, 0x1

    move-wide v3, v0

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v2, p3, v5

    if-eqz v2, :cond_1

    and-long v7, p3, v0

    cmp-long v2, v7, v5

    if-eqz v2, :cond_0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p5

    .line 1172
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/math/LongMath$MillerRabinTester;->mulMod(JJJ)J

    move-result-wide v2

    move-wide v3, v2

    .line 1174
    :cond_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide p1

    const/4 v2, 0x1

    shr-long/2addr p3, v2

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method static test(JJ)Z
    .locals 2

    const-wide v0, 0xb504f333L

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1158
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->SMALL:Lcom/google/common/math/LongMath$MillerRabinTester;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->LARGE:Lcom/google/common/math/LongMath$MillerRabinTester;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/math/LongMath$MillerRabinTester;->testWitness(JJ)Z

    move-result p0

    return p0
.end method

.method private testWitness(JJ)Z
    .locals 15

    move-wide/from16 v7, p3

    const-wide/16 v9, 0x1

    sub-long v11, v7, v9

    .line 1181
    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v13

    shr-long v3, v11, v13

    .line 1183
    rem-long v1, p1, v7

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    const/4 v14, 0x1

    if-nez v0, :cond_0

    return v14

    :cond_0
    move-object v0, p0

    move-wide/from16 v5, p3

    .line 1188
    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/LongMath$MillerRabinTester;->powMod(JJJ)J

    move-result-wide v0

    cmp-long v2, v0, v9

    if-nez v2, :cond_1

    return v14

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    cmp-long v4, v0, v11

    if-eqz v4, :cond_3

    add-int/2addr v3, v14

    if-ne v3, v13, :cond_2

    return v2

    :cond_2
    move-object v4, p0

    .line 1200
    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/google/common/math/LongMath$MillerRabinTester;->squareMod(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    return v14
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/math/LongMath$MillerRabinTester;
    .locals 1

    .line 1066
    const-class v0, Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object p0
.end method

.method public static values()[Lcom/google/common/math/LongMath$MillerRabinTester;
    .locals 1

    .line 1066
    sget-object v0, Lcom/google/common/math/LongMath$MillerRabinTester;->$VALUES:[Lcom/google/common/math/LongMath$MillerRabinTester;

    invoke-virtual {v0}, [Lcom/google/common/math/LongMath$MillerRabinTester;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/math/LongMath$MillerRabinTester;

    return-object v0
.end method


# virtual methods
.method abstract mulMod(JJJ)J
.end method

.method abstract squareMod(JJ)J
.end method
