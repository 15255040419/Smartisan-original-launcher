.class public final synthetic Lcom/google/common/collect/-$$Lambda$Iterables$4$VpO1YP7t_U0V7DaI5u55sdej8A8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/google/common/base/Predicate;

.field private final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/base/Predicate;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Iterables$4$VpO1YP7t_U0V7DaI5u55sdej8A8;->f$0:Lcom/google/common/base/Predicate;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Iterables$4$VpO1YP7t_U0V7DaI5u55sdej8A8;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Iterables$4$VpO1YP7t_U0V7DaI5u55sdej8A8;->f$0:Lcom/google/common/base/Predicate;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Iterables$4$VpO1YP7t_U0V7DaI5u55sdej8A8;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/Iterables$4;->lambda$forEach$0(Lcom/google/common/base/Predicate;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
