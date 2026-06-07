.class public final Lb/c/a/c/x0$a;
.super Lb/c/a/c/v;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/c/x0;->a(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lb/c/a/c/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Lcom/google/common/base/Predicate;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/x0$a;->c:Ljava/util/Iterator;

    iput-object p2, p0, Lb/c/a/c/x0$a;->d:Lcom/google/common/base/Predicate;

    invoke-direct {p0}, Lb/c/a/c/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lb/c/a/c/x0$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/c/a/c/x0$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lb/c/a/c/x0$a;->d:Lcom/google/common/base/Predicate;

    invoke-interface {v1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lb/c/a/c/v;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
