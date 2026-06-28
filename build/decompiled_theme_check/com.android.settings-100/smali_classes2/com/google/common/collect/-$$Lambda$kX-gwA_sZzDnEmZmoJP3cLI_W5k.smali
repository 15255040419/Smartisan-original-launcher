.class public final synthetic Lcom/google/common/collect/-$$Lambda$kX-gwA_sZzDnEmZmoJP3cLI_W5k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$kX-gwA_sZzDnEmZmoJP3cLI_W5k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$kX-gwA_sZzDnEmZmoJP3cLI_W5k;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$kX-gwA_sZzDnEmZmoJP3cLI_W5k;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$kX-gwA_sZzDnEmZmoJP3cLI_W5k;->INSTANCE:Lcom/google/common/collect/-$$Lambda$kX-gwA_sZzDnEmZmoJP3cLI_W5k;

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

    check-cast p1, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->combine(Lcom/google/common/collect/ImmutableMultimap$Builder;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p0

    return-object p0
.end method
