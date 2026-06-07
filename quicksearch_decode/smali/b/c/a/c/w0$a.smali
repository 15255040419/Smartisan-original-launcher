.class public final Lb/c/a/c/w0$a;
.super Lb/c/a/c/e0;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/c/w0;->a(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/e0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lcom/google/common/base/Predicate;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/w0$a;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lb/c/a/c/w0$a;->c:Lcom/google/common/base/Predicate;

    invoke-direct {p0}, Lb/c/a/c/e0;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/base/Predicate;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Lcom/google/common/base/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lb/c/a/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lb/c/a/c/w0$a;->b:Ljava/lang/Iterable;

    iget-object v1, p0, Lb/c/a/c/w0$a;->c:Lcom/google/common/base/Predicate;

    new-instance v2, Lb/c/a/c/j;

    invoke-direct {v2, v1, p1}, Lb/c/a/c/j;-><init>(Lcom/google/common/base/Predicate;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/w0$a;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/c/w0$a;->c:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lb/c/a/c/x0;->a(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/w0$a;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lb/c/a/c/w0$a;->c:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lb/c/a/c/a0;->a(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
