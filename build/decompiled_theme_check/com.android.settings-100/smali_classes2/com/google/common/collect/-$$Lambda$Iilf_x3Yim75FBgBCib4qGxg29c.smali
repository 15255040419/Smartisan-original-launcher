.class public final synthetic Lcom/google/common/collect/-$$Lambda$Iilf_x3Yim75FBgBCib4qGxg29c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Iilf_x3Yim75FBgBCib4qGxg29c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Iilf_x3Yim75FBgBCib4qGxg29c;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Iilf_x3Yim75FBgBCib4qGxg29c;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Iilf_x3Yim75FBgBCib4qGxg29c;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Iilf_x3Yim75FBgBCib4qGxg29c;

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

    check-cast p1, Lcom/google/common/collect/TopKSelector;

    check-cast p2, Lcom/google/common/collect/TopKSelector;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/TopKSelector;->combine(Lcom/google/common/collect/TopKSelector;)Lcom/google/common/collect/TopKSelector;

    move-result-object p0

    return-object p0
.end method
