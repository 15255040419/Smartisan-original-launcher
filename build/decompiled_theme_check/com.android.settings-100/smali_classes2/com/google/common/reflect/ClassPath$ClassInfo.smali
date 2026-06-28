.class public final Lcom/google/common/reflect/ClassPath$ClassInfo;
.super Lcom/google/common/reflect/ClassPath$ResourceInfo;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassInfo"
.end annotation


# instance fields
.field private final className:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/ClassPath$ResourceInfo;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 274
    invoke-static {p1}, Lcom/google/common/reflect/ClassPath;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/reflect/ClassPath$ClassInfo;)Ljava/lang/String;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/reflect/Reflection;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 296
    iget-object p0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-static {}, Lcom/google/common/base/CharMatcher;->digit()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/reflect/ClassPath$ClassInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object p0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    return-object p0

    .line 307
    :cond_1
    iget-object p0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public load()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->loader:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/google/common/reflect/ClassPath$ClassInfo;->className:Ljava/lang/String;

    return-object p0
.end method
