.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$SLUqlvP2vUYpFEdZojvXQ6hxVIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$SLUqlvP2vUYpFEdZojvXQ6hxVIY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$SLUqlvP2vUYpFEdZojvXQ6hxVIY;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$SLUqlvP2vUYpFEdZojvXQ6hxVIY;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$SLUqlvP2vUYpFEdZojvXQ6hxVIY;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$SLUqlvP2vUYpFEdZojvXQ6hxVIY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->lambda$toImmutableSortedMultiset$0(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
