.class final Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;
.super Lcom/google/common/collect/DiscreteDomain;
.source "DiscreteDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BigIntegerDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain<",
        "Ljava/math/BigInteger;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

.field private static final MAX_LONG:Ljava/math/BigInteger;

.field private static final MIN_LONG:Ljava/math/BigInteger;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 192
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    const-wide/high16 v0, -0x8000000000000000L

    .line 198
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MIN_LONG:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    .line 199
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MAX_LONG:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/DiscreteDomain;-><init>(ZLcom/google/common/collect/DiscreteDomain$1;)V

    return-void
.end method

.method static synthetic access$300()Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;
    .locals 1

    .line 190
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 223
    sget-object p0, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 0

    .line 190
    check-cast p1, Ljava/math/BigInteger;

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->distance(Ljava/math/BigInteger;Ljava/math/BigInteger;)J

    move-result-wide p0

    return-wide p0
.end method

.method public distance(Ljava/math/BigInteger;Ljava/math/BigInteger;)J
    .locals 0

    .line 219
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MIN_LONG:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p1, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->MAX_LONG:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    .line 190
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->next(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public next(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 203
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 0

    .line 190
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->offset(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method offset(Ljava/math/BigInteger;J)Ljava/math/BigInteger;
    .locals 0

    const-string p0, "distance"

    .line 213
    invoke-static {p2, p3, p0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(JLjava/lang/String;)J

    .line 214
    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    .line 190
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$BigIntegerDomain;->previous(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public previous(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 208
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DiscreteDomain.bigIntegers()"

    return-object p0
.end method
