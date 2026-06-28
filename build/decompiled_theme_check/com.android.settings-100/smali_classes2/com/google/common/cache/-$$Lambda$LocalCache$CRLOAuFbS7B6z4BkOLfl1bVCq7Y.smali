.class public final synthetic Lcom/google/common/cache/-$$Lambda$LocalCache$CRLOAuFbS7B6z4BkOLfl1bVCq7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field private final synthetic f$0:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$CRLOAuFbS7B6z4BkOLfl1bVCq7Y;->f$0:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/cache/-$$Lambda$LocalCache$CRLOAuFbS7B6z4BkOLfl1bVCq7Y;->f$0:Ljava/util/function/BiFunction;

    invoke-static {p0, p1, p2}, Lcom/google/common/cache/LocalCache;->lambda$computeIfPresent$1(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
