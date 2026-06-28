.class public final synthetic Lcom/google/common/collect/-$$Lambda$k2Nywlv8-zwjiSiBaJUxSur-cGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$k2Nywlv8-zwjiSiBaJUxSur-cGA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$k2Nywlv8-zwjiSiBaJUxSur-cGA;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$k2Nywlv8-zwjiSiBaJUxSur-cGA;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$k2Nywlv8-zwjiSiBaJUxSur-cGA;->INSTANCE:Lcom/google/common/collect/-$$Lambda$k2Nywlv8-zwjiSiBaJUxSur-cGA;

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

    check-cast p1, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->build()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object p0

    return-object p0
.end method
