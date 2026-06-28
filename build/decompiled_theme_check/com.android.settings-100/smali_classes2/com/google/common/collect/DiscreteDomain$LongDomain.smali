.class final Lcom/google/common/collect/DiscreteDomain$LongDomain;
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
    name = "LongDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/DiscreteDomain;-><init>(ZLcom/google/common/collect/DiscreteDomain$1;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/collect/DiscreteDomain$LongDomain;
    .locals 1

    .line 118
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 170
    sget-object p0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 0

    .line 118
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->distance(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p0

    return-wide p0
.end method

.method public distance(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 6

    .line 149
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 150
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p0, v2, v4

    const-wide/16 v2, 0x0

    if-lez p0, :cond_0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 153
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, v4, p0

    if-gez p0, :cond_1

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method public bridge synthetic maxValue()Ljava/lang/Comparable;
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->maxValue()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public maxValue()Ljava/lang/Long;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic minValue()Ljava/lang/Comparable;
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->minValue()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public minValue()Ljava/lang/Long;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    .line 118
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->next(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public next(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .line 127
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 128
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method bridge synthetic offset(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 0

    .line 118
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->offset(Ljava/lang/Long;J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method offset(Ljava/lang/Long;J)Ljava/lang/Long;
    .locals 2

    const-string p0, "distance"

    .line 139
    invoke-static {p2, p3, p0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(JLjava/lang/String;)J

    .line 140
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, v0, p2

    if-gez p0, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "overflow"

    invoke-static {p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 144
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    .line 118
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->previous(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public previous(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .line 133
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 134
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DiscreteDomain.longs()"

    return-object p0
.end method
