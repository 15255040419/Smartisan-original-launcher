.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableTable$zZeMrBtoGSnbzy_M-_iHgpKXoKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableTable$zZeMrBtoGSnbzy_M-_iHgpKXoKo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableTable$zZeMrBtoGSnbzy_M-_iHgpKXoKo;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableTable$zZeMrBtoGSnbzy_M-_iHgpKXoKo;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableTable$zZeMrBtoGSnbzy_M-_iHgpKXoKo;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableTable$zZeMrBtoGSnbzy_M-_iHgpKXoKo;

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

    check-cast p1, Lcom/google/common/collect/ImmutableTable$CollectorState;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableTable;->lambda$toImmutableTable$7(Lcom/google/common/collect/ImmutableTable$CollectorState;)Lcom/google/common/collect/ImmutableTable;

    move-result-object p0

    return-object p0
.end method
