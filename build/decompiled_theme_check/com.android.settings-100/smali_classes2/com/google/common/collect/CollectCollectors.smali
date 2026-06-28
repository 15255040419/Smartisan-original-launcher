.class final Lcom/google/common/collect/CollectCollectors;
.super Ljava/lang/Object;
.source "CollectCollectors.java"


# static fields
.field private static final TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Comparable;",
            ">;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_SET:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 43
    sget-object v0, Lcom/google/common/collect/-$$Lambda$Dfyd-zOF3bxBxHq3iqs49ZgMLUs;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Dfyd-zOF3bxBxHq3iqs49ZgMLUs;

    sget-object v1, Lcom/google/common/collect/-$$Lambda$Qvyai-L_hYayIQFE2St24To5wZE;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Qvyai-L_hYayIQFE2St24To5wZE;

    sget-object v2, Lcom/google/common/collect/-$$Lambda$Qx83BY6lz6Jpv1dd6polKavxmK8;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Qx83BY6lz6Jpv1dd6polKavxmK8;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$B6qMqDjsj2i6-zaZiqfU9Ziu4KU;->INSTANCE:Lcom/google/common/collect/-$$Lambda$B6qMqDjsj2i6-zaZiqfU9Ziu4KU;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 44
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;

    .line 66
    sget-object v0, Lcom/google/common/collect/-$$Lambda$D2fWAlgZqZ-KOlZH1XayB5NNFYg;->INSTANCE:Lcom/google/common/collect/-$$Lambda$D2fWAlgZqZ-KOlZH1XayB5NNFYg;

    sget-object v1, Lcom/google/common/collect/-$$Lambda$IdVJip9QnNnOjsjbknfdGci9RiE;->INSTANCE:Lcom/google/common/collect/-$$Lambda$IdVJip9QnNnOjsjbknfdGci9RiE;

    sget-object v2, Lcom/google/common/collect/-$$Lambda$wUARe-slCQiBwCn6kktgOARAFWY;->INSTANCE:Lcom/google/common/collect/-$$Lambda$wUARe-slCQiBwCn6kktgOARAFWY;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$T_uso8JlwUHIict0GBhQKP-JhLA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$T_uso8JlwUHIict0GBhQKP-JhLA;

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 67
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_SET:Ljava/util/stream/Collector;

    .line 108
    sget-object v0, Lcom/google/common/collect/-$$Lambda$qYrmkTOaUrLYeL7EApXANHaSYdI;->INSTANCE:Lcom/google/common/collect/-$$Lambda$qYrmkTOaUrLYeL7EApXANHaSYdI;

    sget-object v1, Lcom/google/common/collect/-$$Lambda$lowwVYyQOaWraSEhFKduT64LPV0;->INSTANCE:Lcom/google/common/collect/-$$Lambda$lowwVYyQOaWraSEhFKduT64LPV0;

    sget-object v2, Lcom/google/common/collect/-$$Lambda$7Mxhy81NAiwcDk9tE05wrS15B5g;->INSTANCE:Lcom/google/common/collect/-$$Lambda$7Mxhy81NAiwcDk9tE05wrS15B5g;

    sget-object v3, Lcom/google/common/collect/-$$Lambda$3snfJOhsHXrS4Qvlzt9iufmIkY8;->INSTANCE:Lcom/google/common/collect/-$$Lambda$3snfJOhsHXrS4Qvlzt9iufmIkY8;

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 109
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$toImmutableBiMap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableMap$1(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 61
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableRangeMap$5(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 130
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Range;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedMap$2(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 1

    .line 89
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedMap$3(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 90
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedSet$4(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 1

    .line 100
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static toImmutableBiMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/google/common/collect/-$$Lambda$_m_t76O2vKrvy2DwB7sQvYoUFCw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$_m_t76O2vKrvy2DwB7sQvYoUFCw;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$CollectCollectors$HMw9mDrSvkUs_smMpKcOhX6haxs;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$HMw9mDrSvkUs_smMpKcOhX6haxs;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/-$$Lambda$QPuM9iKoW1PCf2mQzuKDfsTjICw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$QPuM9iKoW1PCf2mQzuKDfsTjICw;

    sget-object p1, Lcom/google/common/collect/-$$Lambda$XhUs_LRH-e4OdfH7q5ERshr3mO8;->INSTANCE:Lcom/google/common/collect/-$$Lambda$XhUs_LRH-e4OdfH7q5ERshr3mO8;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableList()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 57
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/common/collect/-$$Lambda$2DoWASnF6dZ7iLd1Bp9mMxtgx34;->INSTANCE:Lcom/google/common/collect/-$$Lambda$2DoWASnF6dZ7iLd1Bp9mMxtgx34;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$CollectCollectors$QEt2k0TxRNpKjocJNjSlM4nzwzg;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$QEt2k0TxRNpKjocJNjSlM4nzwzg;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/-$$Lambda$iMl639MbEQfK2Uwz4dSjiDOdD0Y;->INSTANCE:Lcom/google/common/collect/-$$Lambda$iMl639MbEQfK2Uwz4dSjiDOdD0Y;

    sget-object p1, Lcom/google/common/collect/-$$Lambda$-JNR12gyt_ZEeeKFrcwlQXfJuBo;->INSTANCE:Lcom/google/common/collect/-$$Lambda$-JNR12gyt_ZEeeKFrcwlQXfJuBo;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableRangeMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;",
            "Lcom/google/common/collect/Range<",
            "TK;>;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 126
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/google/common/collect/-$$Lambda$gysTBkYkLoQ6CU7u_E1e7mz2F-g;->INSTANCE:Lcom/google/common/collect/-$$Lambda$gysTBkYkLoQ6CU7u_E1e7mz2F-g;

    new-instance v1, Lcom/google/common/collect/-$$Lambda$CollectCollectors$65HCb4TFteqa_fnqC20JyjqXnWQ;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$65HCb4TFteqa_fnqC20JyjqXnWQ;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/common/collect/-$$Lambda$-zFfqyVq5T798wGUZivKwgD4lls;->INSTANCE:Lcom/google/common/collect/-$$Lambda$-zFfqyVq5T798wGUZivKwgD4lls;

    sget-object p1, Lcom/google/common/collect/-$$Lambda$k2Nywlv8-zwjiSiBaJUxSur-cGA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$k2Nywlv8-zwjiSiBaJUxSur-cGA;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableRangeSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "TE;>;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$JbNzTVqa2YS9FTms4CBu4SjH7ak;

    invoke-direct {v0, p0}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$JbNzTVqa2YS9FTms4CBu4SjH7ak;-><init>(Ljava/util/Comparator;)V

    new-instance p0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$LRJvFLvkG13RJZ8bFXav4HMCTMQ;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$LRJvFLvkG13RJZ8bFXav4HMCTMQ;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p1, Lcom/google/common/collect/-$$Lambda$xRTACJ_W0N2wW_qcPf4oUEy47wM;->INSTANCE:Lcom/google/common/collect/-$$Lambda$xRTACJ_W0N2wW_qcPf4oUEy47wM;

    sget-object p2, Lcom/google/common/collect/-$$Lambda$siK1rvzVZhWHDX4C7n3RSZYbQfs;->INSTANCE:Lcom/google/common/collect/-$$Lambda$siK1rvzVZhWHDX4C7n3RSZYbQfs;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    sget-object v2, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p0, p1, p2, v1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableSortedSet(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 98
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/google/common/collect/-$$Lambda$CollectCollectors$hEyPbqEvvnuK__OqWC8HpCfj_fE;

    invoke-direct {v0, p0}, Lcom/google/common/collect/-$$Lambda$CollectCollectors$hEyPbqEvvnuK__OqWC8HpCfj_fE;-><init>(Ljava/util/Comparator;)V

    sget-object p0, Lcom/google/common/collect/-$$Lambda$FLuZpkQmNg7JOBdGkuDvpE1c7wY;->INSTANCE:Lcom/google/common/collect/-$$Lambda$FLuZpkQmNg7JOBdGkuDvpE1c7wY;

    sget-object v1, Lcom/google/common/collect/-$$Lambda$Gb0cLX-snGYbZK6C3LsaZrtl7k8;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Gb0cLX-snGYbZK6C3LsaZrtl7k8;

    sget-object v2, Lcom/google/common/collect/-$$Lambda$HYy5QkqepjzFGDSicdDzvjxFZSk;->INSTANCE:Lcom/google/common/collect/-$$Lambda$HYy5QkqepjzFGDSicdDzvjxFZSk;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0, v1, v2, v3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method
