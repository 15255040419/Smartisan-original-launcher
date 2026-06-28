.class public final synthetic Lcom/google/common/collect/-$$Lambda$_swt8Zk1tNFsHoMh5XS-2Yp6uvM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$_swt8Zk1tNFsHoMh5XS-2Yp6uvM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$_swt8Zk1tNFsHoMh5XS-2Yp6uvM;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$_swt8Zk1tNFsHoMh5XS-2Yp6uvM;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$_swt8Zk1tNFsHoMh5XS-2Yp6uvM;->INSTANCE:Lcom/google/common/collect/-$$Lambda$_swt8Zk1tNFsHoMh5XS-2Yp6uvM;

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

    check-cast p1, Lcom/google/common/collect/Sets$Accumulator;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/Sets$Accumulator;->add(Ljava/lang/Enum;)V

    return-void
.end method
