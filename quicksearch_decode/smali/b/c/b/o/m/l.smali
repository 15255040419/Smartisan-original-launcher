.class public final Lb/c/b/o/m/l;
.super Lb/c/b/m;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/b/o/m/l$b;
    }
.end annotation

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
.field public final a:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lb/c/b/c;

.field public final d:Lb/c/b/p/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/p/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/gson/TypeAdapterFactory;

.field public final f:Lb/c/b/o/m/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/o/m/l<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public g:Lb/c/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lb/c/b/c;Lb/c/b/p/a;Lcom/google/gson/TypeAdapterFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/google/gson/JsonDeserializer<",
            "TT;>;",
            "Lb/c/b/c;",
            "Lb/c/b/p/a<",
            "TT;>;",
            "Lcom/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    .line 2
    new-instance v0, Lb/c/b/o/m/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/c/b/o/m/l$b;-><init>(Lb/c/b/o/m/l;Lb/c/b/o/m/l$a;)V

    iput-object v0, p0, Lb/c/b/o/m/l;->f:Lb/c/b/o/m/l$b;

    .line 3
    iput-object p1, p0, Lb/c/b/o/m/l;->a:Lcom/google/gson/JsonSerializer;

    .line 4
    iput-object p2, p0, Lb/c/b/o/m/l;->b:Lcom/google/gson/JsonDeserializer;

    .line 5
    iput-object p3, p0, Lb/c/b/o/m/l;->c:Lb/c/b/c;

    .line 6
    iput-object p4, p0, Lb/c/b/o/m/l;->d:Lb/c/b/p/a;

    .line 7
    iput-object p5, p0, Lb/c/b/o/m/l;->e:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method


# virtual methods
.method public a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/o/m/l;->b:Lcom/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/m/l;->b()Lb/c/b/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lb/c/b/o/k;->a(Lb/c/b/q/a;)Lb/c/b/e;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lb/c/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lb/c/b/o/m/l;->b:Lcom/google/gson/JsonDeserializer;

    iget-object v1, p0, Lb/c/b/o/m/l;->d:Lb/c/b/p/a;

    invoke-virtual {v1}, Lb/c/b/p/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lb/c/b/o/m/l;->f:Lb/c/b/o/m/l$b;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/gson/JsonDeserializer;->deserialize(Lb/c/b/e;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p1

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

    .line 6
    iget-object v0, p0, Lb/c/b/o/m/l;->a:Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lb/c/b/o/m/l;->b()Lb/c/b/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lb/c/b/q/c;->k()Lb/c/b/q/c;

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lb/c/b/o/m/l;->d:Lb/c/b/p/a;

    invoke-virtual {v1}, Lb/c/b/p/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lb/c/b/o/m/l;->f:Lb/c/b/o/m/l$b;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lb/c/b/e;

    move-result-object p2

    .line 10
    invoke-static {p2, p1}, Lb/c/b/o/k;->a(Lb/c/b/e;Lb/c/b/q/c;)V

    return-void
.end method

.method public final b()Lb/c/b/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/o/m/l;->g:Lb/c/b/m;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/c/b/o/m/l;->c:Lb/c/b/c;

    iget-object v1, p0, Lb/c/b/o/m/l;->e:Lcom/google/gson/TypeAdapterFactory;

    iget-object v2, p0, Lb/c/b/o/m/l;->d:Lb/c/b/p/a;

    .line 3
    invoke-virtual {v0, v1, v2}, Lb/c/b/c;->a(Lcom/google/gson/TypeAdapterFactory;Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object v0

    iput-object v0, p0, Lb/c/b/o/m/l;->g:Lb/c/b/m;

    :goto_0
    return-object v0
.end method
