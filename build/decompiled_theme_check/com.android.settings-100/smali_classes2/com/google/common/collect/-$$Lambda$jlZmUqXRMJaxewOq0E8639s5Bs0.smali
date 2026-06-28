.class public final synthetic Lcom/google/common/collect/-$$Lambda$jlZmUqXRMJaxewOq0E8639s5Bs0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$jlZmUqXRMJaxewOq0E8639s5Bs0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$jlZmUqXRMJaxewOq0E8639s5Bs0;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$jlZmUqXRMJaxewOq0E8639s5Bs0;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$jlZmUqXRMJaxewOq0E8639s5Bs0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$jlZmUqXRMJaxewOq0E8639s5Bs0;

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

    check-cast p1, Lcom/google/common/collect/Sets$Accumulator;

    check-cast p2, Lcom/google/common/collect/Sets$Accumulator;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/Sets$Accumulator;->combine(Lcom/google/common/collect/Sets$Accumulator;)Lcom/google/common/collect/Sets$Accumulator;

    move-result-object p0

    return-object p0
.end method
