.class final Lcom/google/common/io/MoreFiles$PathByteSource;
.super Lcom/google/common/io/ByteSource;
.source "MoreFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/MoreFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathByteSource"
.end annotation


# static fields
.field private static final FOLLOW_LINKS:[Ljava/nio/file/LinkOption;


# instance fields
.field private final followLinks:Z

.field private final options:[Ljava/nio/file/OpenOption;

.field private final path:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 91
    sput-object v0, Lcom/google/common/io/MoreFiles$PathByteSource;->FOLLOW_LINKS:[Ljava/nio/file/LinkOption;

    return-void
.end method

.method private varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    iput-object p1, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Ljava/nio/file/Path;

    .line 99
    invoke-virtual {p2}, [Ljava/nio/file/OpenOption;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/OpenOption;

    iput-object p1, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Ljava/nio/file/OpenOption;

    .line 100
    iget-object p1, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Ljava/nio/file/OpenOption;

    invoke-static {p1}, Lcom/google/common/io/MoreFiles$PathByteSource;->followLinks([Ljava/nio/file/OpenOption;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->followLinks:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;Lcom/google/common/io/MoreFiles$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/MoreFiles$PathByteSource;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/io/MoreFiles$PathByteSource;)Ljava/nio/file/Path;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Ljava/nio/file/Path;

    return-object p0
.end method

.method private static followLinks([Ljava/nio/file/OpenOption;)Z
    .locals 5

    .line 105
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 106
    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Ljava/nio/file/Path;

    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    iget-boolean p0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->followLinks:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/common/io/MoreFiles$PathByteSource;->FOLLOW_LINKS:[Ljava/nio/file/LinkOption;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, p0, v2

    :goto_0
    invoke-static {v0, v1, p0}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Ljava/nio/file/OpenOption;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/google/common/io/MoreFiles$PathByteSource$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/MoreFiles$PathByteSource$1;-><init>(Lcom/google/common/io/MoreFiles$PathByteSource;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/io/ByteSource;->asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object p0

    return-object p0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Ljava/nio/file/Path;

    iget-object p0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Ljava/nio/file/OpenOption;

    invoke-static {v0, p0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public read()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Ljava/nio/file/Path;

    iget-object p0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Ljava/nio/file/OpenOption;

    invoke-static {v0, p0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p0

    .line 163
    :try_start_0
    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v1

    .line 162
    invoke-static {v0, v1, v2}, Lcom/google/common/io/Files;->readFile(Ljava/io/InputStream;J)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 164
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    .line 161
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 164
    :try_start_2
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lcom/google/common/io/MoreFiles$PathByteSource;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    .line 150
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0

    .line 153
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "can\'t read: is a symbolic link"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "can\'t read: is a directory"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/io/MoreFiles$PathByteSource;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0

    .line 138
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0

    .line 132
    :catch_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoreFiles.asByteSource("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->path:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/io/MoreFiles$PathByteSource;->options:[Ljava/nio/file/OpenOption;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
