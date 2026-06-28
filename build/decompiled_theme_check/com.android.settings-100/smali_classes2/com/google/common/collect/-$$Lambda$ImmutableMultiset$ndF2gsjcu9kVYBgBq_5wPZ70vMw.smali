.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$ndF2gsjcu9kVYBgBq_5wPZ70vMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$ndF2gsjcu9kVYBgBq_5wPZ70vMw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$ndF2gsjcu9kVYBgBq_5wPZ70vMw;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$ndF2gsjcu9kVYBgBq_5wPZ70vMw;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$ndF2gsjcu9kVYBgBq_5wPZ70vMw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$ndF2gsjcu9kVYBgBq_5wPZ70vMw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/Multiset;

    check-cast p2, Lcom/google/common/collect/Multiset;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMultiset;->lambda$toImmutableMultiset$2(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;

    move-result-object p0

    return-object p0
.end method
