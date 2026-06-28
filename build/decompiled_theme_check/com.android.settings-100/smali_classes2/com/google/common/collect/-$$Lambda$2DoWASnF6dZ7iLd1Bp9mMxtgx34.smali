.class public final synthetic Lcom/google/common/collect/-$$Lambda$2DoWASnF6dZ7iLd1Bp9mMxtgx34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$2DoWASnF6dZ7iLd1Bp9mMxtgx34;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$2DoWASnF6dZ7iLd1Bp9mMxtgx34;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$2DoWASnF6dZ7iLd1Bp9mMxtgx34;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$2DoWASnF6dZ7iLd1Bp9mMxtgx34;->INSTANCE:Lcom/google/common/collect/-$$Lambda$2DoWASnF6dZ7iLd1Bp9mMxtgx34;

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

    new-instance p0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    return-object p0
.end method
