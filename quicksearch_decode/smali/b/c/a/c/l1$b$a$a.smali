.class public Lb/c/a/c/l1$b$a$a;
.super Lb/c/a/c/j0;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/c/l1$b$a;->e()Lb/c/a/c/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/j0<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lb/c/a/c/l1$b$a;


# direct methods
.method public constructor <init>(Lb/c/a/c/l1$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/l1$b$a$a;->b:Lb/c/a/c/l1$b$a;

    invoke-direct {p0}, Lb/c/a/c/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lb/c/a/c/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/m0<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/a/c/l1$b$a$a;->b:Lb/c/a/c/l1$b$a;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/c/l1$b$a$a;->get(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/c/a/c/l1$b$a$a;->b:Lb/c/a/c/l1$b$a;

    iget-object v0, v0, Lb/c/a/c/l1$b$a;->c:Lb/c/a/c/l1$b;

    iget-object v0, v0, Lb/c/a/c/l1$b;->e:Lb/c/a/c/l1;

    iget-object v0, v0, Lb/c/a/c/l1;->g:[Ljava/util/Map$Entry;

    aget-object p1, v0, p1

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
