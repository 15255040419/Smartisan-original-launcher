.class public final synthetic Lcom/google/common/collect/-$$Lambda$gysTBkYkLoQ6CU7u_E1e7mz2F-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$gysTBkYkLoQ6CU7u_E1e7mz2F-g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$gysTBkYkLoQ6CU7u_E1e7mz2F-g;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$gysTBkYkLoQ6CU7u_E1e7mz2F-g;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$gysTBkYkLoQ6CU7u_E1e7mz2F-g;->INSTANCE:Lcom/google/common/collect/-$$Lambda$gysTBkYkLoQ6CU7u_E1e7mz2F-g;

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

    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->builder()Lcom/google/common/collect/ImmutableRangeMap$Builder;

    move-result-object p0

    return-object p0
.end method
