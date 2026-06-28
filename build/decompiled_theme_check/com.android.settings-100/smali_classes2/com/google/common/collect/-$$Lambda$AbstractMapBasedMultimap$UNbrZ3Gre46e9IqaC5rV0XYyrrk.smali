.class public final synthetic Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$UNbrZ3Gre46e9IqaC5rV0XYyrrk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/BiConsumer;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$UNbrZ3Gre46e9IqaC5rV0XYyrrk;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$UNbrZ3Gre46e9IqaC5rV0XYyrrk;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$UNbrZ3Gre46e9IqaC5rV0XYyrrk;->f$0:Ljava/util/function/BiConsumer;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$UNbrZ3Gre46e9IqaC5rV0XYyrrk;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->lambda$null$2(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
