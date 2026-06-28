.class Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/ByteArrayDataOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayDataOutputStream"
.end annotation


# instance fields
.field final byteArrayOutputSteam:Ljava/io/ByteArrayOutputStream;

.field final output:Ljava/io/DataOutput;


# direct methods
.method constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->byteArrayOutputSteam:Ljava/io/ByteArrayOutputStream;

    .line 453
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->byteArrayOutputSteam:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public write(I)V
    .locals 0

    .line 459
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 461
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public write([B)V
    .locals 0

    .line 468
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 470
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public write([BII)V
    .locals 0

    .line 477
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 479
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeBoolean(Z)V
    .locals 0

    .line 486
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 488
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeByte(I)V
    .locals 0

    .line 495
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 497
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 0

    .line 504
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 506
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeChar(I)V
    .locals 0

    .line 513
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeChar(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 515
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 0

    .line 522
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeChars(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 524
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeDouble(D)V
    .locals 0

    .line 531
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1, p2}, Ljava/io/DataOutput;->writeDouble(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 533
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeFloat(F)V
    .locals 0

    .line 540
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 542
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeInt(I)V
    .locals 0

    .line 549
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 551
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeLong(J)V
    .locals 0

    .line 558
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 560
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeShort(I)V
    .locals 0

    .line 567
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 569
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 0

    .line 576
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;->output:Ljava/io/DataOutput;

    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 578
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
