.class final Lcom/google/common/reflect/ClassPath$1;
.super Ljava/lang/Object;
.source "ClassPath.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/google/common/reflect/ClassPath$ClassInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/reflect/ClassPath$ClassInfo;)Z
    .locals 0

    .line 85
    invoke-static {p1}, Lcom/google/common/reflect/ClassPath$ClassInfo;->access$000(Lcom/google/common/reflect/ClassPath$ClassInfo;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 82
    check-cast p1, Lcom/google/common/reflect/ClassPath$ClassInfo;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/ClassPath$1;->apply(Lcom/google/common/reflect/ClassPath$ClassInfo;)Z

    move-result p0

    return p0
.end method
