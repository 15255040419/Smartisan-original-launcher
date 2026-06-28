.class final Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "AbstractNonStreamingHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExposedByteArrayOutputStream"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method byteArray()[B
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->buf:[B

    return-object p0
.end method

.method length()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->count:I

    return p0
.end method

.method write(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 118
    iget v1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->count:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->count:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->buf:[B

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->count:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 122
    iget p1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->count:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;->count:I

    return-void
.end method
