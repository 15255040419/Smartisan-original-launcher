.class public final Lcom/google/common/io/InsecureRecursiveDeleteException;
.super Ljava/nio/file/FileSystemException;
.source "InsecureRecursiveDeleteException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "unable to guarantee security of recursive delete"

    .line 44
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
