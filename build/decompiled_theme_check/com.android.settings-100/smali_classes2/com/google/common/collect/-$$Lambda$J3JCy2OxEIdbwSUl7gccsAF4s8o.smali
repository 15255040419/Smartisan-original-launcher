.class public final synthetic Lcom/google/common/collect/-$$Lambda$J3JCy2OxEIdbwSUl7gccsAF4s8o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$J3JCy2OxEIdbwSUl7gccsAF4s8o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$J3JCy2OxEIdbwSUl7gccsAF4s8o;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$J3JCy2OxEIdbwSUl7gccsAF4s8o;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$J3JCy2OxEIdbwSUl7gccsAF4s8o;->INSTANCE:Lcom/google/common/collect/-$$Lambda$J3JCy2OxEIdbwSUl7gccsAF4s8o;

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

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lcom/google/common/collect/Streams;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
