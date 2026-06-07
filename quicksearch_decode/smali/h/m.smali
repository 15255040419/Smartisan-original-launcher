.class public final Lh/m;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/m$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Lf/m;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lf/l;

.field public final f:Lf/n;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[Lh/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lh/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/m$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lh/m$a;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lh/m;->a:Ljava/lang/reflect/Method;

    .line 3
    iget-object v0, p1, Lh/m$a;->a:Lh/o;

    iget-object v0, v0, Lh/o;->c:Lf/m;

    iput-object v0, p0, Lh/m;->b:Lf/m;

    .line 4
    iget-object v0, p1, Lh/m$a;->n:Ljava/lang/String;

    iput-object v0, p0, Lh/m;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lh/m$a;->r:Ljava/lang/String;

    iput-object v0, p0, Lh/m;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lh/m$a;->s:Lf/l;

    iput-object v0, p0, Lh/m;->e:Lf/l;

    .line 7
    iget-object v0, p1, Lh/m$a;->t:Lf/n;

    iput-object v0, p0, Lh/m;->f:Lf/n;

    .line 8
    iget-boolean v0, p1, Lh/m$a;->o:Z

    iput-boolean v0, p0, Lh/m;->g:Z

    .line 9
    iget-boolean v0, p1, Lh/m$a;->p:Z

    iput-boolean v0, p0, Lh/m;->h:Z

    .line 10
    iget-boolean v0, p1, Lh/m$a;->q:Z

    iput-boolean v0, p0, Lh/m;->i:Z

    .line 11
    iget-object p1, p1, Lh/m$a;->v:[Lh/j;

    iput-object p1, p0, Lh/m;->j:[Lh/j;

    return-void
.end method

.method public static a(Lh/o;Ljava/lang/reflect/Method;)Lh/m;
    .locals 1

    .line 1
    new-instance v0, Lh/m$a;

    invoke-direct {v0, p0, p1}, Lh/m$a;-><init>(Lh/o;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Lh/m$a;->a()Lh/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Lf/s;
    .locals 12

    .line 2
    iget-object v0, p0, Lh/m;->j:[Lh/j;

    .line 3
    array-length v1, p1

    .line 4
    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 5
    new-instance v2, Lh/l;

    iget-object v4, p0, Lh/m;->c:Ljava/lang/String;

    iget-object v5, p0, Lh/m;->b:Lf/m;

    iget-object v6, p0, Lh/m;->d:Ljava/lang/String;

    iget-object v7, p0, Lh/m;->e:Lf/l;

    iget-object v8, p0, Lh/m;->f:Lf/n;

    iget-boolean v9, p0, Lh/m;->g:Z

    iget-boolean v10, p0, Lh/m;->h:Z

    iget-boolean v11, p0, Lh/m;->i:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lh/l;-><init>(Ljava/lang/String;Lf/m;Ljava/lang/String;Lf/l;Lf/n;ZZZ)V

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 7
    aget-object v5, p1, v4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    aget-object v5, v0, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v2, v6}, Lh/j;->a(Lh/l;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2}, Lh/l;->a()Lf/s$a;

    move-result-object p1

    const-class v0, Lh/g;

    new-instance v1, Lh/g;

    iget-object v2, p0, Lh/m;->a:Ljava/lang/reflect/Method;

    invoke-direct {v1, v2, v3}, Lh/g;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    .line 10
    invoke-virtual {p1, v0, v1}, Lf/s$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lf/s$a;

    .line 11
    invoke-virtual {p1}, Lf/s$a;->a()Lf/s;

    move-result-object p1

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") doesn\'t match expected count ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
