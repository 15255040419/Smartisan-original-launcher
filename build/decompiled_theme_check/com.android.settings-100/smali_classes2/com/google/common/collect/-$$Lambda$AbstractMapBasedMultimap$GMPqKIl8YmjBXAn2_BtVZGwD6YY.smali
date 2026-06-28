.class public final synthetic Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$GMPqKIl8YmjBXAn2_BtVZGwD6YY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$GMPqKIl8YmjBXAn2_BtVZGwD6YY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$GMPqKIl8YmjBXAn2_BtVZGwD6YY;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$GMPqKIl8YmjBXAn2_BtVZGwD6YY;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$GMPqKIl8YmjBXAn2_BtVZGwD6YY;->INSTANCE:Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$GMPqKIl8YmjBXAn2_BtVZGwD6YY;

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

    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->lambda$entrySpliterator$1(Ljava/util/Map$Entry;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
