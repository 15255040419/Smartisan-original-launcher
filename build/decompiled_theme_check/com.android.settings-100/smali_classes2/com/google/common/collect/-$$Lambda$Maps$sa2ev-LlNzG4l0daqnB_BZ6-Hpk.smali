.class public final synthetic Lcom/google/common/collect/-$$Lambda$Maps$sa2ev-LlNzG4l0daqnB_BZ6-Hpk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Maps$sa2ev-LlNzG4l0daqnB_BZ6-Hpk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Maps$sa2ev-LlNzG4l0daqnB_BZ6-Hpk;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Maps$sa2ev-LlNzG4l0daqnB_BZ6-Hpk;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Maps$sa2ev-LlNzG4l0daqnB_BZ6-Hpk;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Maps$sa2ev-LlNzG4l0daqnB_BZ6-Hpk;

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

    invoke-static {}, Lcom/google/common/collect/Maps;->lambda$toImmutableEnumMap$1()Lcom/google/common/collect/Maps$Accumulator;

    move-result-object p0

    return-object p0
.end method
