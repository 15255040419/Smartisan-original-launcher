.class public final synthetic Lcom/google/common/collect/-$$Lambda$Multimaps$Keys$Gpr87NcF-o5GtWsdYxwu1nUKoqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Multimaps$Keys$Gpr87NcF-o5GtWsdYxwu1nUKoqc;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Multimaps$Keys$Gpr87NcF-o5GtWsdYxwu1nUKoqc;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps$Keys;->lambda$forEach$0(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V

    return-void
.end method
