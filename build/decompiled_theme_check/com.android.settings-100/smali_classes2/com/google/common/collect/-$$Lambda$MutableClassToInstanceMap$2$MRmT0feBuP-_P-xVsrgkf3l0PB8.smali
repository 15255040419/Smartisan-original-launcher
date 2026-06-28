.class public final synthetic Lcom/google/common/collect/-$$Lambda$MutableClassToInstanceMap$2$MRmT0feBuP-_P-xVsrgkf3l0PB8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$MutableClassToInstanceMap$2$MRmT0feBuP-_P-xVsrgkf3l0PB8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$MutableClassToInstanceMap$2$MRmT0feBuP-_P-xVsrgkf3l0PB8;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$MutableClassToInstanceMap$2$MRmT0feBuP-_P-xVsrgkf3l0PB8;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$MutableClassToInstanceMap$2$MRmT0feBuP-_P-xVsrgkf3l0PB8;->INSTANCE:Lcom/google/common/collect/-$$Lambda$MutableClassToInstanceMap$2$MRmT0feBuP-_P-xVsrgkf3l0PB8;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/MutableClassToInstanceMap$2;->lambda$spliterator$0(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
