.class public final synthetic Lcom/google/common/collect/-$$Lambda$Streams$0xkxYg8VXW7gpz14ijnFhxnO6gU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$Streams$0xkxYg8VXW7gpz14ijnFhxnO6gU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$Streams$0xkxYg8VXW7gpz14ijnFhxnO6gU;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$Streams$0xkxYg8VXW7gpz14ijnFhxnO6gU;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$Streams$0xkxYg8VXW7gpz14ijnFhxnO6gU;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Streams$0xkxYg8VXW7gpz14ijnFhxnO6gU;

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

    check-cast p1, Ljava/util/stream/IntStream;

    invoke-static {p1}, Lcom/google/common/collect/Streams;->lambda$concat$2(Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method
