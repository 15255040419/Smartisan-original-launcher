.class public Lcom/google/common/cache/CacheBuilderSpec$f;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lcom/google/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Lb/c/a/b/c;


# direct methods
.method public constructor <init>(Lb/c/a/b/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec$f;->a:Lb/c/a/b/c;

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    const-string v2, "key %s does not take values"

    .line 1
    invoke-static {p3, v2, p2}, Lb/c/a/a/l;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p3, p1, Lcom/google/common/cache/CacheBuilderSpec;->e:Lb/c/a/b/c;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p3, p1, Lcom/google/common/cache/CacheBuilderSpec;->e:Lb/c/a/b/c;

    const-string v1, "%s was already set to %s"

    invoke-static {v0, v1, p2, p3}, Lb/c/a/a/l;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/google/common/cache/CacheBuilderSpec$f;->a:Lb/c/a/b/c;

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->e:Lb/c/a/b/c;

    return-void
.end method
