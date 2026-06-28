.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$iSZBRszHXFXNOPGHgGMuoWQwExE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$iSZBRszHXFXNOPGHgGMuoWQwExE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$iSZBRszHXFXNOPGHgGMuoWQwExE;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$iSZBRszHXFXNOPGHgGMuoWQwExE;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$iSZBRszHXFXNOPGHgGMuoWQwExE;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableSortedMultiset$iSZBRszHXFXNOPGHgGMuoWQwExE;

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

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->lambda$toImmutableSortedMultiset$3(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;

    move-result-object p0

    return-object p0
.end method
