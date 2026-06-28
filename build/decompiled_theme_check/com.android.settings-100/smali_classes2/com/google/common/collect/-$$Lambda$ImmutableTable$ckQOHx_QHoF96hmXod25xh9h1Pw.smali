.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableTable$ckQOHx_QHoF96hmXod25xh9h1Pw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableTable$ckQOHx_QHoF96hmXod25xh9h1Pw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableTable$ckQOHx_QHoF96hmXod25xh9h1Pw;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableTable$ckQOHx_QHoF96hmXod25xh9h1Pw;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableTable$ckQOHx_QHoF96hmXod25xh9h1Pw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableTable$ckQOHx_QHoF96hmXod25xh9h1Pw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/ImmutableTable$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableTable$Builder;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableTable;->lambda$toImmutableTable$2(Lcom/google/common/collect/ImmutableTable$Builder;Lcom/google/common/collect/ImmutableTable$Builder;)Lcom/google/common/collect/ImmutableTable$Builder;

    move-result-object p0

    return-object p0
.end method
