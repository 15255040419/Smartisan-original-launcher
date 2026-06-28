.class public final synthetic Lcom/google/common/collect/-$$Lambda$Multimaps$EGq-BcBjNFW4VPyKfp3wZs77_0A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Multimaps$EGq-BcBjNFW4VPyKfp3wZs77_0A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Multimaps$EGq-BcBjNFW4VPyKfp3wZs77_0A;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Multimaps$EGq-BcBjNFW4VPyKfp3wZs77_0A;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Multimaps$EGq-BcBjNFW4VPyKfp3wZs77_0A;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Multimaps$EGq-BcBjNFW4VPyKfp3wZs77_0A;

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

    check-cast p1, Lcom/google/common/collect/Multimap;

    check-cast p2, Lcom/google/common/collect/Multimap;

    invoke-static {p1, p2}, Lcom/google/common/collect/Multimaps;->lambda$flatteningToMultimap$3(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;

    move-result-object p0

    return-object p0
.end method
