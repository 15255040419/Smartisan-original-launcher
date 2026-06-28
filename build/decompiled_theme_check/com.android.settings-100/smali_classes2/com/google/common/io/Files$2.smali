.class final Lcom/google/common/io/Files$2;
.super Lcom/google/common/collect/TreeTraverser;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TreeTraverser<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 838
    invoke-direct {p0}, Lcom/google/common/collect/TreeTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method public children(Ljava/io/File;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 841
    invoke-static {p1}, Lcom/google/common/io/Files;->access$200(Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 838
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/common/io/Files$2;->children(Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Files.fileTreeTraverser()"

    return-object p0
.end method
