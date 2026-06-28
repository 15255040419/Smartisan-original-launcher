.class Lcom/google/common/io/CharSource$StringCharSource;
.super Lcom/google/common/io/CharSource$CharSequenceCharSource;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringCharSource"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 630
    invoke-direct {p0, p1}, Lcom/google/common/io/CharSource$CharSequenceCharSource;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/google/common/io/CharSink;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 649
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/io/CharSink;->openStream()Ljava/io/Writer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object p1

    check-cast p1, Ljava/io/Writer;

    .line 650
    iget-object v1, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 651
    iget-object p0, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p0, p0

    .line 655
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    return-wide p0

    :catchall_0
    move-exception p0

    .line 653
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    .line 655
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw p0
.end method

.method public copyTo(Ljava/lang/Appendable;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 641
    iget-object p0, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public openStream()Ljava/io/Reader;
    .locals 1

    .line 635
    new-instance v0, Ljava/io/StringReader;

    iget-object p0, p0, Lcom/google/common/io/CharSource$StringCharSource;->seq:Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
