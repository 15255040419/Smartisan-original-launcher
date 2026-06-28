.class public final synthetic Lcom/google/common/collect/-$$Lambda$yEFp6dlddIAxuEuCjcM4vSwhwAE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$yEFp6dlddIAxuEuCjcM4vSwhwAE;->f$0:Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$yEFp6dlddIAxuEuCjcM4vSwhwAE;->f$0:Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object p0

    return-object p0
.end method
