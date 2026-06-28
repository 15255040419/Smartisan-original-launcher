.class final enum Lcom/google/common/io/Files$FilePredicate$2;
.super Lcom/google/common/io/Files$FilePredicate;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files$FilePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 926
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/io/Files$FilePredicate;-><init>(Ljava/lang/String;ILcom/google/common/io/Files$1;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/io/File;)Z
    .locals 0

    .line 929
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 926
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/common/io/Files$FilePredicate$2;->apply(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Files.isFile()"

    return-object p0
.end method
