.class public final Lb/c/b/o/m/m;
.super Lb/c/b/m;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/b/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/c/b/c;

.field public final b:Lb/c/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lb/c/b/c;Lb/c/b/m;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/c;",
            "Lb/c/b/m<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/b/o/m/m;->a:Lb/c/b/c;

    .line 3
    iput-object p2, p0, Lb/c/b/o/m/m;->b:Lb/c/b/m;

    .line 4
    iput-object p3, p0, Lb/c/b/o/m/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/o/m/m;->b:Lb/c/b/m;

    invoke-virtual {v0, p1}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    .line 9
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/c;",
            "TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/b/o/m/m;->b:Lb/c/b/m;

    .line 3
    iget-object v1, p0, Lb/c/b/o/m/m;->c:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v1, p2}, Lb/c/b/o/m/m;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lb/c/b/o/m/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    .line 5
    iget-object v0, p0, Lb/c/b/o/m/m;->a:Lb/c/b/c;

    invoke-static {v1}, Lb/c/b/p/a;->a(Ljava/lang/reflect/Type;)Lb/c/b/p/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/b/c;->a(Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lb/c/b/o/m/i$b;

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lb/c/b/o/m/m;->b:Lb/c/b/m;

    instance-of v2, v1, Lb/c/b/o/m/i$b;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    return-void
.end method
