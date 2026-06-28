.class public final synthetic Lcom/google/common/collect/-$$Lambda$siK1rvzVZhWHDX4C7n3RSZYbQfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$siK1rvzVZhWHDX4C7n3RSZYbQfs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$siK1rvzVZhWHDX4C7n3RSZYbQfs;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$siK1rvzVZhWHDX4C7n3RSZYbQfs;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$siK1rvzVZhWHDX4C7n3RSZYbQfs;->INSTANCE:Lcom/google/common/collect/-$$Lambda$siK1rvzVZhWHDX4C7n3RSZYbQfs;

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

    check-cast p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->build()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method
