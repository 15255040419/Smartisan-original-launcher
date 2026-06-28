.class final Lcom/google/common/collect/DiscreteDomain$IntegerDomain;
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
    name = "IntegerDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/DiscreteDomain;-><init>(ZLcom/google/common/collect/DiscreteDomain$1;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/collect/DiscreteDomain$IntegerDomain;
    .locals 1

    .line 57
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 98
    sget-object p0, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$IntegerDomain;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->distance(Ljava/lang/Integer;Ljava/lang/Integer;)J

    move-result-wide p0

    return-wide p0
.end method

.method public distance(Ljava/lang/Integer;Ljava/lang/Integer;)J
    .locals 2

    .line 84
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public bridge synthetic maxValue()Ljava/lang/Comparable;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->maxValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public maxValue()Ljava/lang/Integer;
    .locals 0

    const p0, 0x7fffffff

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic minValue()Ljava/lang/Comparable;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->minValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public minValue()Ljava/lang/Integer;
    .locals 0

    const/high16 p0, -0x80000000

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->next(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public next(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const p1, 0x7fffffff

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method bridge synthetic offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->offset(Ljava/lang/Integer;J)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method offset(Ljava/lang/Integer;J)Ljava/lang/Integer;
    .locals 0

    const-string p0, "distance"

    .line 78
    invoke-static {p2, p3, p0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(JLjava/lang/String;)J

    .line 79
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide p0

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$IntegerDomain;->previous(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public previous(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 p1, -0x80000000

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DiscreteDomain.integers()"

    return-object p0
.end method
