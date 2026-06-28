.class public final synthetic Lcom/google/common/collect/-$$Lambda$OugZ7uzX1ge93a2UFbU199Ga9uI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$OugZ7uzX1ge93a2UFbU199Ga9uI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$OugZ7uzX1ge93a2UFbU199Ga9uI;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$OugZ7uzX1ge93a2UFbU199Ga9uI;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$OugZ7uzX1ge93a2UFbU199Ga9uI;->INSTANCE:Lcom/google/common/collect/-$$Lambda$OugZ7uzX1ge93a2UFbU199Ga9uI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->add(Ljava/lang/Object;)V

    return-void
.end method
