.class public final synthetic Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$LZeF0aE0_zVLsxZdv41rGXc8McQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$LZeF0aE0_zVLsxZdv41rGXc8McQ;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$AbstractMapBasedMultimap$LZeF0aE0_zVLsxZdv41rGXc8McQ;->f$0:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->lambda$null$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
