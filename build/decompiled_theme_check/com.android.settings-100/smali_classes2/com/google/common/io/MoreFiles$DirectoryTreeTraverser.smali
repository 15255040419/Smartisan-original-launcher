.class final Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;
.super Lcom/google/common/collect/TreeTraverser;
.source "MoreFiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/MoreFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryTreeTraverser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TreeTraverser<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 297
    new-instance v0, Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;

    invoke-direct {v0}, Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;-><init>()V

    sput-object v0, Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;->INSTANCE:Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/google/common/collect/TreeTraverser;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;
    .locals 1

    .line 295
    sget-object v0, Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;->INSTANCE:Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 295
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lcom/google/common/io/MoreFiles$DirectoryTreeTraverser;->children(Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public children(Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-static {p1}, Lcom/google/common/io/MoreFiles;->access$400(Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
