.class public final synthetic Lcom/google/common/collect/-$$Lambda$97U0YQNPGq3BJMaleKjDH1EOwEA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$97U0YQNPGq3BJMaleKjDH1EOwEA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$97U0YQNPGq3BJMaleKjDH1EOwEA;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$97U0YQNPGq3BJMaleKjDH1EOwEA;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$97U0YQNPGq3BJMaleKjDH1EOwEA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$97U0YQNPGq3BJMaleKjDH1EOwEA;

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

    check-cast p1, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method
