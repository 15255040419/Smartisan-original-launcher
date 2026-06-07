.class public final Le/a/h1$c;
.super Le/a/x1/k$a;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h1;->a(Ljava/lang/Object;Le/a/l1;Le/a/g1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/a/h1;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/x1/k;Le/a/x1/k;Le/a/h1;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Le/a/h1$c;->d:Le/a/h1;

    iput-object p4, p0, Le/a/h1$c;->e:Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p2}, Le/a/x1/k$a;-><init>(Le/a/x1/k;)V

    return-void
.end method


# virtual methods
.method public a(Le/a/x1/k;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/h1$c;->d:Le/a/h1;

    invoke-virtual {p1}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Le/a/h1$c;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Le/a/x1/j;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Le/a/x1/k;

    invoke-virtual {p0, p1}, Le/a/h1$c;->a(Le/a/x1/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
