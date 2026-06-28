.class public final synthetic Lcom/google/common/collect/-$$Lambda$B6qMqDjsj2i6-zaZiqfU9Ziu4KU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$B6qMqDjsj2i6-zaZiqfU9Ziu4KU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$B6qMqDjsj2i6-zaZiqfU9Ziu4KU;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$B6qMqDjsj2i6-zaZiqfU9Ziu4KU;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$B6qMqDjsj2i6-zaZiqfU9Ziu4KU;->INSTANCE:Lcom/google/common/collect/-$$Lambda$B6qMqDjsj2i6-zaZiqfU9Ziu4KU;

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

    check-cast p1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
