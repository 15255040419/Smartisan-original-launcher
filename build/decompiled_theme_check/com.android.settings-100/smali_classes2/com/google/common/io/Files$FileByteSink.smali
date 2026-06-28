.class final Lcom/google/common/io/Files$FileByteSink;
.super Lcom/google/common/io/ByteSink;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileByteSink"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final modes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/io/FileWriteMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/google/common/io/ByteSink;-><init>()V

    .line 210
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/google/common/io/Files$FileByteSink;->file:Ljava/io/File;

    .line 211
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/Files$FileByteSink;->modes:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;Lcom/google/common/io/Files$1;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/Files$FileByteSink;-><init>(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/common/io/Files$FileByteSink;->file:Ljava/io/File;

    iget-object p0, p0, Lcom/google/common/io/Files$FileByteSink;->modes:Lcom/google/common/collect/ImmutableSet;

    sget-object v2, Lcom/google/common/io/FileWriteMode;->APPEND:Lcom/google/common/io/FileWriteMode;

    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {v0, v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public bridge synthetic openStream()Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/google/common/io/Files$FileByteSink;->openStream()Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Files.asByteSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/io/Files$FileByteSink;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/io/Files$FileByteSink;->modes:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
