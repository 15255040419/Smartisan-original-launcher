.class public final synthetic Lcom/google/common/collect/-$$Lambda$2o4X03rSa_8uE4aeQ0-hIjzviXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$2o4X03rSa_8uE4aeQ0-hIjzviXc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$2o4X03rSa_8uE4aeQ0-hIjzviXc;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$2o4X03rSa_8uE4aeQ0-hIjzviXc;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$2o4X03rSa_8uE4aeQ0-hIjzviXc;->INSTANCE:Lcom/google/common/collect/-$$Lambda$2o4X03rSa_8uE4aeQ0-hIjzviXc;

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

    check-cast p1, Lcom/google/common/collect/Maps$Accumulator;

    invoke-virtual {p1}, Lcom/google/common/collect/Maps$Accumulator;->toImmutableMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method
