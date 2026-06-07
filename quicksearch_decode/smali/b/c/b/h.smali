.class public final Lb/c/b/h;
.super Lb/c/b/e;
.source "JsonObject.java"


# instance fields
.field public final a:Lb/c/b/o/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/o/h<",
            "Ljava/lang/String;",
            "Lb/c/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/c/b/e;-><init>()V

    .line 2
    new-instance v0, Lb/c/b/o/h;

    invoke-direct {v0}, Lb/c/b/o/h;-><init>()V

    iput-object v0, p0, Lb/c/b/h;->a:Lb/c/b/o/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lb/c/b/e;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lb/c/b/g;->a:Lb/c/b/g;

    .line 2
    :cond_0
    iget-object v0, p0, Lb/c/b/h;->a:Lb/c/b/o/h;

    invoke-virtual {v0, p1, p2}, Lb/c/b/o/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lb/c/b/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/h;->a:Lb/c/b/o/h;

    invoke-virtual {v0}, Lb/c/b/o/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 1
    instance-of v0, p1, Lb/c/b/h;

    if-eqz v0, :cond_0

    check-cast p1, Lb/c/b/h;

    iget-object p1, p1, Lb/c/b/h;->a:Lb/c/b/o/h;

    iget-object v0, p0, Lb/c/b/h;->a:Lb/c/b/o/h;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/b/h;->a:Lb/c/b/o/h;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method
