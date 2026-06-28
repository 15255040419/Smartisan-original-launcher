.class public final synthetic Lcom/google/common/collect/-$$Lambda$D3oviQ9ZA_OVdxA685lwkI5pkC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$D3oviQ9ZA_OVdxA685lwkI5pkC8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$D3oviQ9ZA_OVdxA685lwkI5pkC8;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$D3oviQ9ZA_OVdxA685lwkI5pkC8;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$D3oviQ9ZA_OVdxA685lwkI5pkC8;->INSTANCE:Lcom/google/common/collect/-$$Lambda$D3oviQ9ZA_OVdxA685lwkI5pkC8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    return-object p0
.end method
