.class Lcom/google/common/io/BaseEncoding$1;
.super Lcom/google/common/io/ByteSink;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding;->encodingSink(Lcom/google/common/io/CharSink;)Lcom/google/common/io/ByteSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/io/BaseEncoding;

.field final synthetic val$encodedSink:Lcom/google/common/io/CharSink;


# direct methods
.method constructor <init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSink;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$1;->val$encodedSink:Lcom/google/common/io/CharSink;

    invoke-direct {p0}, Lcom/google/common/io/ByteSink;-><init>()V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding;

    iget-object p0, p0, Lcom/google/common/io/BaseEncoding$1;->val$encodedSink:Lcom/google/common/io/CharSink;

    invoke-virtual {p0}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method
