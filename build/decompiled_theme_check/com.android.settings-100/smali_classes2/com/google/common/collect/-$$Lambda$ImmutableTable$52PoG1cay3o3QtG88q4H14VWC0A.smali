.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableTable$52PoG1cay3o3QtG88q4H14VWC0A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableTable$52PoG1cay3o3QtG88q4H14VWC0A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableTable$52PoG1cay3o3QtG88q4H14VWC0A;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableTable$52PoG1cay3o3QtG88q4H14VWC0A;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableTable$52PoG1cay3o3QtG88q4H14VWC0A;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableTable$52PoG1cay3o3QtG88q4H14VWC0A;

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

    invoke-static {}, Lcom/google/common/collect/ImmutableTable;->lambda$toImmutableTable$0()Lcom/google/common/collect/ImmutableTable$Builder;

    move-result-object p0

    return-object p0
.end method
