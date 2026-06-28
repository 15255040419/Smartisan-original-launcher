.class public final synthetic Lcom/google/common/collect/-$$Lambda$StandardTable$yAUD7t0EfnuoEXM26-IC-hhDy0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$StandardTable$yAUD7t0EfnuoEXM26-IC-hhDy0g;->f$0:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$StandardTable$yAUD7t0EfnuoEXM26-IC-hhDy0g;->f$0:Ljava/util/Map$Entry;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/google/common/collect/StandardTable;->lambda$null$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Lcom/google/common/collect/Table$Cell;

    move-result-object p0

    return-object p0
.end method
