.class final Landroid/icu/impl/ICUBinary$SingleDataFile;
.super Landroid/icu/impl/ICUBinary$DataFile;
.source "ICUBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleDataFile"
.end annotation


# instance fields
.field private final path:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUBinary$DataFile;-><init>(Ljava/lang/String;)V

    .line 231
    iput-object p2, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    return-void
.end method


# virtual methods
.method addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 251
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    .line 254
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p0, p2

    .line 254
    invoke-virtual {v0, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->itemPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->access$100(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Landroid/icu/impl/ICUBinary$SingleDataFile;->path:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
