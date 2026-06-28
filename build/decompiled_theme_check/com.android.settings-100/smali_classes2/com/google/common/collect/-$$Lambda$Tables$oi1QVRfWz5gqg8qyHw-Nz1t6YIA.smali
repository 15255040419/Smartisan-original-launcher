.class public final synthetic Lcom/google/common/collect/-$$Lambda$Tables$oi1QVRfWz5gqg8qyHw-Nz1t6YIA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Tables$oi1QVRfWz5gqg8qyHw-Nz1t6YIA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Tables$oi1QVRfWz5gqg8qyHw-Nz1t6YIA;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Tables$oi1QVRfWz5gqg8qyHw-Nz1t6YIA;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Tables$oi1QVRfWz5gqg8qyHw-Nz1t6YIA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Tables$oi1QVRfWz5gqg8qyHw-Nz1t6YIA;

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

    invoke-static {p1, p2}, Lcom/google/common/collect/Tables;->lambda$toTable$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
