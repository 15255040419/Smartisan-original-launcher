.class public Lb/c/b/o/h$b$a;
.super Lb/c/b/o/h$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/b/o/h$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/b/o/h<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/c/b/o/h$b;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lb/c/b/o/h$b;->a:Lb/c/b/o/h;

    invoke-direct {p0, p1}, Lb/c/b/o/h$d;-><init>(Lb/c/b/o/h;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/b/o/h$b$a;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lb/c/b/o/h$d;->a()Lb/c/b/o/h$e;

    move-result-object v0

    return-object v0
.end method
