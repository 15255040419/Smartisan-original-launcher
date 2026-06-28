.class public final synthetic Lcom/google/common/hash/-$$Lambda$P_MmmwgZ0XwLgyONpS1egK2lhh4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/hash/-$$Lambda$P_MmmwgZ0XwLgyONpS1egK2lhh4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/hash/-$$Lambda$P_MmmwgZ0XwLgyONpS1egK2lhh4;

    invoke-direct {v0}, Lcom/google/common/hash/-$$Lambda$P_MmmwgZ0XwLgyONpS1egK2lhh4;-><init>()V

    sput-object v0, Lcom/google/common/hash/-$$Lambda$P_MmmwgZ0XwLgyONpS1egK2lhh4;->INSTANCE:Lcom/google/common/hash/-$$Lambda$P_MmmwgZ0XwLgyONpS1egK2lhh4;

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

    check-cast p1, Lcom/google/common/hash/BloomFilter;

    invoke-virtual {p1, p2}, Lcom/google/common/hash/BloomFilter;->put(Ljava/lang/Object;)Z

    return-void
.end method
