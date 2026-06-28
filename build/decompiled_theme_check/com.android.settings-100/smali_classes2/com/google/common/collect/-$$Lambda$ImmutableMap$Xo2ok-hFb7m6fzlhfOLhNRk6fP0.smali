.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableMap$Xo2ok-hFb7m6fzlhfOLhNRk6fP0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMap$Xo2ok-hFb7m6fzlhfOLhNRk6fP0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableMap$Xo2ok-hFb7m6fzlhfOLhNRk6fP0;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableMap$Xo2ok-hFb7m6fzlhfOLhNRk6fP0;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableMap$Xo2ok-hFb7m6fzlhfOLhNRk6fP0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMap$Xo2ok-hFb7m6fzlhfOLhNRk6fP0;

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

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->lambda$Xo2ok-hFb7m6fzlhfOLhNRk6fP0()Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method
