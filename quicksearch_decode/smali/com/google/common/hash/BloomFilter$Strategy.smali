.class public interface abstract Lcom/google/common/hash/BloomFilter$Strategy;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILb/c/a/f/a;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lb/c/a/f/a;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract ordinal()I
.end method

.method public abstract put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILb/c/a/f/a;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lb/c/a/f/a;",
            ")Z"
        }
    .end annotation
.end method
