.class final Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "AbstractNonStreamingHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferingHasher"
.end annotation


# instance fields
.field final stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

.field final synthetic this$0:Lcom/google/common/hash/AbstractNonStreamingHashFunction;


# direct methods
.method constructor <init>(Lcom/google/common/hash/AbstractNonStreamingHashFunction;I)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->this$0:Lcom/google/common/hash/AbstractNonStreamingHashFunction;

    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 83
    new-instance p1, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-direct {p1, p2}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->this$0:Lcom/google/common/hash/AbstractNonStreamingHashFunction;

    iget-object v1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->byteArray()[B

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(I)V

    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->stream:Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->write([BII)V

    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method
