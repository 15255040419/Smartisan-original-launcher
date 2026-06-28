.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$JJf8NPYu83yBjje2WFshZ7ZBwE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$JJf8NPYu83yBjje2WFshZ7ZBwE4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$JJf8NPYu83yBjje2WFshZ7ZBwE4;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$JJf8NPYu83yBjje2WFshZ7ZBwE4;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$JJf8NPYu83yBjje2WFshZ7ZBwE4;->INSTANCE:Lcom/google/common/collect/-$$Lambda$ImmutableMultiset$JJf8NPYu83yBjje2WFshZ7ZBwE4;

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

    invoke-static {p1}, Lcom/google/common/collect/ImmutableMultiset;->lambda$toImmutableMultiset$0(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
