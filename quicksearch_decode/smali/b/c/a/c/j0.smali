.class public abstract Lb/c/a/c/j0;
.super Lb/c/a/c/o0;
.source "ImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/a/c/j0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/a/c/o0<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/a/c/o0;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/j0;->g()Lb/c/a/c/m0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/c/a/c/m0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract g()Lb/c/a/c/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/m0<",
            "TE;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/j0;->g()Lb/c/a/c/m0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/c/a/c/j0;->g()Lb/c/a/c/m0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lb/c/a/c/j0$a;

    invoke-virtual {p0}, Lb/c/a/c/j0;->g()Lb/c/a/c/m0;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/c/a/c/j0$a;-><init>(Lb/c/a/c/m0;)V

    return-object v0
.end method
