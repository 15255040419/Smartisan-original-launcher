.class public final synthetic Lcom/google/common/collect/-$$Lambda$Iterables$5$F27v40ica-vd1kuXO6-hvOVXqQs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;

.field private final synthetic f$1:Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/google/common/base/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Iterables$5$F27v40ica-vd1kuXO6-hvOVXqQs;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Iterables$5$F27v40ica-vd1kuXO6-hvOVXqQs;->f$1:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Iterables$5$F27v40ica-vd1kuXO6-hvOVXqQs;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Iterables$5$F27v40ica-vd1kuXO6-hvOVXqQs;->f$1:Lcom/google/common/base/Function;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/Iterables$5;->lambda$forEach$0(Ljava/util/function/Consumer;Lcom/google/common/base/Function;Ljava/lang/Object;)V

    return-void
.end method
