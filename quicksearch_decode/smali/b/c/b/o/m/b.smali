.class public final Lb/c/b/o/m/b;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/b/o/m/b$a;
    }
.end annotation


# instance fields
.field public final a:Lb/c/b/o/c;


# direct methods
.method public constructor <init>(Lb/c/b/o/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/b/o/m/b;->a:Lb/c/b/o/c;

    return-void
.end method


# virtual methods
.method public create(Lb/c/b/c;Lb/c/b/p/a;)Lb/c/b/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c/b/c;",
            "Lb/c/b/p/a<",
            "TT;>;)",
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lb/c/b/p/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lb/c/b/p/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {v0, v1}, Lb/c/b/o/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lb/c/b/p/a;->a(Ljava/lang/reflect/Type;)Lb/c/b/p/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb/c/b/c;->a(Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lb/c/b/o/m/b;->a:Lb/c/b/o/c;

    invoke-virtual {v2, p2}, Lb/c/b/o/c;->a(Lb/c/b/p/a;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object p2

    .line 7
    new-instance v2, Lb/c/b/o/m/b$a;

    invoke-direct {v2, p1, v0, v1, p2}, Lb/c/b/o/m/b$a;-><init>(Lb/c/b/c;Ljava/lang/reflect/Type;Lb/c/b/m;Lcom/google/gson/internal/ObjectConstructor;)V

    return-object v2
.end method
