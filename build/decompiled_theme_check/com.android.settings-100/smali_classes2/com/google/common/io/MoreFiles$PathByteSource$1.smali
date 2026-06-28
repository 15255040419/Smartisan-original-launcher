.class Lcom/google/common/io/MoreFiles$PathByteSource$1;
.super Lcom/google/common/io/ByteSource$AsCharSource;
.source "MoreFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/MoreFiles$PathByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/io/MoreFiles$PathByteSource;


# direct methods
.method constructor <init>(Lcom/google/common/io/MoreFiles$PathByteSource;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/google/common/io/MoreFiles$PathByteSource$1;->this$0:Lcom/google/common/io/MoreFiles$PathByteSource;

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/ByteSource$AsCharSource;-><init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public lines()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource$1;->this$0:Lcom/google/common/io/MoreFiles$PathByteSource;

    invoke-static {v0}, Lcom/google/common/io/MoreFiles$PathByteSource;->access$100(Lcom/google/common/io/MoreFiles$PathByteSource;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/io/MoreFiles$PathByteSource$1;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
