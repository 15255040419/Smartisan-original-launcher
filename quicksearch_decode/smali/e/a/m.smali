.class public final Le/a/m;
.super Le/a/c1;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/ChildHandle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c1<",
        "Le/a/h1;",
        ">;",
        "Lkotlinx/coroutines/ChildHandle;"
    }
.end annotation


# instance fields
.field public final e:Lkotlinx/coroutines/ChildJob;


# direct methods
.method public constructor <init>(Le/a/h1;Lkotlinx/coroutines/ChildJob;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/c1;-><init>(Lkotlinx/coroutines/Job;)V

    iput-object p2, p0, Le/a/m;->e:Lkotlinx/coroutines/ChildJob;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/m;->e:Lkotlinx/coroutines/ChildJob;

    iget-object v0, p0, Le/a/g1;->d:Lkotlinx/coroutines/Job;

    check-cast v0, Lkotlinx/coroutines/ParentJob;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/ChildJob;->parentCancelled(Lkotlinx/coroutines/ParentJob;)V

    return-void
.end method

.method public childCancelled(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g1;->d:Lkotlinx/coroutines/Job;

    check-cast v0, Le/a/h1;

    invoke-virtual {v0, p1}, Le/a/h1;->c(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Le/a/m;->a(Ljava/lang/Throwable;)V

    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/m;->e:Lkotlinx/coroutines/ChildJob;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
