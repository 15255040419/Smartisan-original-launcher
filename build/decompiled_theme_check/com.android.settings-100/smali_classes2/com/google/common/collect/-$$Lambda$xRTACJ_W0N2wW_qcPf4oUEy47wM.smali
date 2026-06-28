.class public final synthetic Lcom/google/common/collect/-$$Lambda$xRTACJ_W0N2wW_qcPf4oUEy47wM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$xRTACJ_W0N2wW_qcPf4oUEy47wM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$xRTACJ_W0N2wW_qcPf4oUEy47wM;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$xRTACJ_W0N2wW_qcPf4oUEy47wM;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$xRTACJ_W0N2wW_qcPf4oUEy47wM;->INSTANCE:Lcom/google/common/collect/-$$Lambda$xRTACJ_W0N2wW_qcPf4oUEy47wM;

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

    check-cast p1, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    check-cast p2, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->combine(Lcom/google/common/collect/ImmutableMap$Builder;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p0

    return-object p0
.end method
