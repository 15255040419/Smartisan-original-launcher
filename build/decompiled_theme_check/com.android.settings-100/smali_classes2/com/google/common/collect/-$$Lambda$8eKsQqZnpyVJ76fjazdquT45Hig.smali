.class public final synthetic Lcom/google/common/collect/-$$Lambda$8eKsQqZnpyVJ76fjazdquT45Hig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$8eKsQqZnpyVJ76fjazdquT45Hig;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$8eKsQqZnpyVJ76fjazdquT45Hig;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$8eKsQqZnpyVJ76fjazdquT45Hig;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$8eKsQqZnpyVJ76fjazdquT45Hig;->INSTANCE:Lcom/google/common/collect/-$$Lambda$8eKsQqZnpyVJ76fjazdquT45Hig;

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

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
