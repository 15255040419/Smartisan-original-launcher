.class Lcom/google/common/io/FileBackedOutputStream$1;
.super Lcom/google/common/io/ByteSource;
.source "FileBackedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/FileBackedOutputStream;-><init>(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/io/FileBackedOutputStream;


# direct methods
.method constructor <init>(Lcom/google/common/io/FileBackedOutputStream;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/common/io/FileBackedOutputStream$1;->this$0:Lcom/google/common/io/FileBackedOutputStream;

    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .line 103
    :try_start_0
    iget-object p0, p0, Lcom/google/common/io/FileBackedOutputStream$1;->this$0:Lcom/google/common/io/FileBackedOutputStream;

    invoke-virtual {p0}, Lcom/google/common/io/FileBackedOutputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 105
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object p0, p0, Lcom/google/common/io/FileBackedOutputStream$1;->this$0:Lcom/google/common/io/FileBackedOutputStream;

    invoke-static {p0}, Lcom/google/common/io/FileBackedOutputStream;->access$100(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
