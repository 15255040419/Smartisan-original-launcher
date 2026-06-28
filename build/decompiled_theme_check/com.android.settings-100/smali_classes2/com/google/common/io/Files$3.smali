.class final Lcom/google/common/io/Files$3;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Lcom/google/common/graph/SuccessorsFunction;


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
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/SuccessorsFunction<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public successors(Ljava/io/File;)Ljava/lang/Iterable;
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

    .line 879
    invoke-static {p1}, Lcom/google/common/io/Files;->access$200(Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 876
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/common/io/Files$3;->successors(Ljava/io/File;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
