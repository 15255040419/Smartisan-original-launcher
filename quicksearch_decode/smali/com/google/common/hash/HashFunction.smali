.class public interface abstract Lcom/google/common/hash/HashFunction;
.super Ljava/lang/Object;
.source "HashFunction.java"


# virtual methods
.method public abstract bits()I
.end method

.method public abstract hashBytes(Ljava/nio/ByteBuffer;)Lb/c/a/f/b;
.end method

.method public abstract hashBytes([B)Lb/c/a/f/b;
.end method

.method public abstract hashBytes([BII)Lb/c/a/f/b;
.end method

.method public abstract hashInt(I)Lb/c/a/f/b;
.end method

.method public abstract hashLong(J)Lb/c/a/f/b;
.end method

.method public abstract hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lb/c/a/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lb/c/a/f/b;"
        }
    .end annotation
.end method

.method public abstract hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lb/c/a/f/b;
.end method

.method public abstract hashUnencodedChars(Ljava/lang/CharSequence;)Lb/c/a/f/b;
.end method

.method public abstract newHasher()Lcom/google/common/hash/Hasher;
.end method

.method public abstract newHasher(I)Lcom/google/common/hash/Hasher;
.end method
