.class public final synthetic Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$49jqsgGfolS7k5Y0w5CKFvjzFZk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$49jqsgGfolS7k5Y0w5CKFvjzFZk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$49jqsgGfolS7k5Y0w5CKFvjzFZk;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$49jqsgGfolS7k5Y0w5CKFvjzFZk;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$49jqsgGfolS7k5Y0w5CKFvjzFZk;->INSTANCE:Lcom/google/common/util/concurrent/-$$Lambda$AtomicLongMap$49jqsgGfolS7k5Y0w5CKFvjzFZk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lcom/google/common/util/concurrent/AtomicLongMap;->lambda$removeAllZeros$5(Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method
