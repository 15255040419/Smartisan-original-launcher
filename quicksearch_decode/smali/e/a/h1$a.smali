.class public final Le/a/h1$a;
.super Le/a/g1;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/g1<",
        "Lkotlinx/coroutines/Job;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Le/a/h1;

.field public final f:Le/a/h1$b;

.field public final g:Le/a/m;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/h1;Le/a/h1$b;Le/a/m;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p3, Le/a/m;->e:Lkotlinx/coroutines/ChildJob;

    invoke-direct {p0, v0}, Le/a/g1;-><init>(Lkotlinx/coroutines/Job;)V

    iput-object p1, p0, Le/a/h1$a;->e:Le/a/h1;

    iput-object p2, p0, Le/a/h1$a;->f:Le/a/h1$b;

    iput-object p3, p0, Le/a/h1$a;->g:Le/a/m;

    iput-object p4, p0, Le/a/h1$a;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/h1$a;->e:Le/a/h1;

    iget-object v0, p0, Le/a/h1$a;->f:Le/a/h1$b;

    iget-object v1, p0, Le/a/h1$a;->g:Le/a/m;

    iget-object v2, p0, Le/a/h1$a;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Le/a/h1;->a(Le/a/h1;Le/a/h1$b;Le/a/m;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Le/a/h1$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h1$a;->g:Le/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h1$a;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
