.class public final synthetic Lcom/google/common/collect/-$$Lambda$Xxw32g7ROf3L8FxiPJeloRx_PDA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Xxw32g7ROf3L8FxiPJeloRx_PDA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Xxw32g7ROf3L8FxiPJeloRx_PDA;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Xxw32g7ROf3L8FxiPJeloRx_PDA;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Xxw32g7ROf3L8FxiPJeloRx_PDA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Xxw32g7ROf3L8FxiPJeloRx_PDA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/ListMultimap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableListMultimap;->copyOf(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method
