.class public final synthetic Lcom/google/common/collect/-$$Lambda$CollectCollectors$JbNzTVqa2YS9FTms4CBu4SjH7ak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$JbNzTVqa2YS9FTms4CBu4SjH7ak;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$JbNzTVqa2YS9FTms4CBu4SjH7ak;->f$0:Ljava/util/Comparator;

    invoke-static {p0}, Lcom/google/common/collect/CollectCollectors;->lambda$toImmutableSortedMap$2(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p0

    return-object p0
.end method
