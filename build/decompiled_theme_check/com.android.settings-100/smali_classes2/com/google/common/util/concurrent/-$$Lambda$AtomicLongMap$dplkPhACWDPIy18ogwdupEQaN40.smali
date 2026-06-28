.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongBinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$dplkPhACWDPIy18ogwdupEQaN40;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$dplkPhACWDPIy18ogwdupEQaN40(JJ)J

    move-result-wide p0

    return-wide p0
.end method
