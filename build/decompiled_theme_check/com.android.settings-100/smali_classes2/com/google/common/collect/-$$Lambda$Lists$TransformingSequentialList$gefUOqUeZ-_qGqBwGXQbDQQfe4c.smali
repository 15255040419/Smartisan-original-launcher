.class public final synthetic Lcom/google/common/collect/-$$Lambda$Lists$TransformingSequentialList$gefUOqUeZ-_qGqBwGXQbDQQfe4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/google/common/collect/Lists$TransformingSequentialList;

.field private final synthetic f$1:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Lists$TransformingSequentialList$gefUOqUeZ-_qGqBwGXQbDQQfe4c;->f$0:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Lists$TransformingSequentialList$gefUOqUeZ-_qGqBwGXQbDQQfe4c;->f$1:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Lists$TransformingSequentialList$gefUOqUeZ-_qGqBwGXQbDQQfe4c;->f$0:Lcom/google/common/collect/Lists$TransformingSequentialList;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Lists$TransformingSequentialList$gefUOqUeZ-_qGqBwGXQbDQQfe4c;->f$1:Ljava/util/function/Predicate;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingSequentialList;->lambda$removeIf$0$Lists$TransformingSequentialList(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
