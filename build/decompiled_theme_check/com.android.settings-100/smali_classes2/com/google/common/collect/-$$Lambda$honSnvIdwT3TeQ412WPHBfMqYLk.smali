.class public final synthetic Lcom/google/common/collect/-$$Lambda$honSnvIdwT3TeQ412WPHBfMqYLk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$honSnvIdwT3TeQ412WPHBfMqYLk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$honSnvIdwT3TeQ412WPHBfMqYLk;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$honSnvIdwT3TeQ412WPHBfMqYLk;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$honSnvIdwT3TeQ412WPHBfMqYLk;->INSTANCE:Lcom/google/common/collect/-$$Lambda$honSnvIdwT3TeQ412WPHBfMqYLk;

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

    new-instance p0, Lcom/google/common/collect/Streams$TemporaryPair;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Streams$TemporaryPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
