.class public final synthetic Lcom/google/common/collect/-$$Lambda$Multiset$y63SmnatRR1Ke2x1fqDeFclRelQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/ObjIntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ObjIntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Multiset$y63SmnatRR1Ke2x1fqDeFclRelQ;->f$0:Ljava/util/function/ObjIntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Multiset$y63SmnatRR1Ke2x1fqDeFclRelQ;->f$0:Ljava/util/function/ObjIntConsumer;

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multiset;->lambda$forEachEntry$0(Ljava/util/function/ObjIntConsumer;Lcom/google/common/collect/Multiset$Entry;)V

    return-void
.end method
