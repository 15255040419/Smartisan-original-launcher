.class public final synthetic Lcom/google/common/collect/-$$Lambda$Maps$FilteredEntryBiMap$OE537khb_eNPcbHxi4mO1N8eLo4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field private final synthetic f$0:Lcom/google/common/collect/Maps$FilteredEntryBiMap;

.field private final synthetic f$1:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryBiMap;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Maps$FilteredEntryBiMap$OE537khb_eNPcbHxi4mO1N8eLo4;->f$0:Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Maps$FilteredEntryBiMap$OE537khb_eNPcbHxi4mO1N8eLo4;->f$1:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Maps$FilteredEntryBiMap$OE537khb_eNPcbHxi4mO1N8eLo4;->f$0:Lcom/google/common/collect/Maps$FilteredEntryBiMap;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Maps$FilteredEntryBiMap$OE537khb_eNPcbHxi4mO1N8eLo4;->f$1:Ljava/util/function/BiFunction;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryBiMap;->lambda$replaceAll$0$Maps$FilteredEntryBiMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
