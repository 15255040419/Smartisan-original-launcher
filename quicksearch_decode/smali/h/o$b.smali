.class public final Lh/o$b;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lh/k;

.field public b:Lokhttp3/Call$Factory;

.field public c:Lf/m;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/Converter$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lretrofit2/CallAdapter$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/Executor;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-static {}, Lh/k;->e()Lh/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/o$b;-><init>(Lh/k;)V

    return-void
.end method

.method public constructor <init>(Lh/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/o$b;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/o$b;->e:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lh/o$b;->a:Lh/k;

    return-void
.end method


# virtual methods
.method public a(Lf/m;)Lh/o$b;
    .locals 3

    const-string v0, "baseUrl == null"

    .line 3
    invoke-static {p1, v0}, Lh/q;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lf/m;->j()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-object p1, p0, Lh/o$b;->c:Lf/m;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseUrl must end in /: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lh/o$b;
    .locals 1

    const-string v0, "baseUrl == null"

    .line 1
    invoke-static {p1, v0}, Lh/q;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lf/m;->d(Ljava/lang/String;)Lf/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh/o$b;->a(Lf/m;)Lh/o$b;

    return-object p0
.end method

.method public a(Lretrofit2/Converter$a;)Lh/o$b;
    .locals 2

    .line 8
    iget-object v0, p0, Lh/o$b;->d:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lh/q;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lh/o;
    .locals 9

    .line 9
    iget-object v0, p0, Lh/o$b;->c:Lf/m;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lh/o$b;->b:Lokhttp3/Call$Factory;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lf/p;

    invoke-direct {v0}, Lf/p;-><init>()V

    :cond_0
    move-object v2, v0

    .line 12
    iget-object v0, p0, Lh/o$b;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lh/o$b;->a:Lh/k;

    invoke-virtual {v0}, Lh/k;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_1
    move-object v6, v0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lh/o$b;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iget-object v1, p0, Lh/o$b;->a:Lh/k;

    invoke-virtual {v1, v6}, Lh/k;->a(Ljava/util/concurrent/Executor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lh/o$b;->d:Ljava/util/List;

    .line 17
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lh/o$b;->a:Lh/k;

    invoke-virtual {v4}, Lh/k;->c()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    new-instance v3, Lh/a;

    invoke-direct {v3}, Lh/a;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v3, p0, Lh/o$b;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v3, p0, Lh/o$b;->a:Lh/k;

    invoke-virtual {v3}, Lh/k;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    new-instance v8, Lh/o;

    iget-object v3, p0, Lh/o$b;->c:Lf/m;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-boolean v7, p0, Lh/o$b;->g:Z

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lh/o;-><init>(Lokhttp3/Call$Factory;Lf/m;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v8

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
