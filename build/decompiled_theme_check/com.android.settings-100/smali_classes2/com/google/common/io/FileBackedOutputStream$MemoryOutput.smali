.class Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;
.super Ljava/io/ByteArrayOutputStream;
.source "FileBackedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/FileBackedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryOutput"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/io/FileBackedOutputStream$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;-><init>()V

    return-void
.end method


# virtual methods
.method getBuffer()[B
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->buf:[B

    return-object p0
.end method

.method getCount()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/google/common/io/FileBackedOutputStream$MemoryOutput;->count:I

    return p0
.end method
