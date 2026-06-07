.class public Lb/c/a/c/a0$c;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/c/a0;->a(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TT;>;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/util/Spliterator;

.field public final synthetic c:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Ljava/util/Spliterator;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/c/a/c/a0$c;->b:Ljava/util/Spliterator;

    iput-object p2, p0, Lb/c/a/c/a0$c;->c:Ljava/util/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lb/c/a/c/a0$c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/c/a/c/a0$c;->a:Ljava/lang/Object;

    return-void
.end method

.method public characteristics()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/a0$c;->b:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, 0x115

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 1
    iget-object v0, p0, Lb/c/a/c/a0$c;->b:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/a0$c;->b:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lb/c/a/c/a0$c;->b:Ljava/util/Spliterator;

    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/c/a/c/a0$c;->c:Ljava/util/function/Predicate;

    iget-object v2, p0, Lb/c/a/c/a0$c;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/c/a/c/a0$c;->a:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 4
    iput-object v0, p0, Lb/c/a/c/a0$c;->a:Ljava/lang/Object;

    return p1

    :cond_0
    iput-object v0, p0, Lb/c/a/c/a0$c;->a:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lb/c/a/c/a0$c;->a:Ljava/lang/Object;

    .line 5
    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/a0$c;->b:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lb/c/a/c/a0$c;->c:Ljava/util/function/Predicate;

    invoke-static {v0, v1}, Lb/c/a/c/a0;->a(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method
