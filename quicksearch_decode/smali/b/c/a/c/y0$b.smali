.class public final Lb/c/a/c/y0$b;
.super Lb/c/a/c/o0;
.source "JdkBackedImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/o0<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lb/c/a/c/y0;


# direct methods
.method public constructor <init>(Lb/c/a/c/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/y0$b;->b:Lb/c/a/c/y0;

    invoke-direct {p0}, Lb/c/a/c/o0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/c/a/c/y0;Lb/c/a/c/y0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/c/a/c/y0$b;-><init>(Lb/c/a/c/y0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/a/c/y0$b;->get(I)Ljava/util/Map$Entry;

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
    iget-object v0, p0, Lb/c/a/c/y0$b;->b:Lb/c/a/c/y0;

    invoke-static {v0}, Lb/c/a/c/y0;->a(Lb/c/a/c/y0;)Lb/c/a/c/o0;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/a/c/y0$b;->b:Lb/c/a/c/y0;

    invoke-static {v0}, Lb/c/a/c/y0;->a(Lb/c/a/c/y0;)Lb/c/a/c/o0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
