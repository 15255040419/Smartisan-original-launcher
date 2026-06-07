.class public Lcom/google/common/cache/CacheBuilderSpec$h;
.super Lcom/google/common/cache/CacheBuilderSpec$g;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/CacheBuilderSpec;J)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    const-string v4, "maximum size was already set to "

    invoke-static {v0, v4, v3}, Lb/c/a/a/l;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->c:Ljava/lang/Long;

    const-string v2, "maximum weight was already set to "

    invoke-static {v1, v2, v0}, Lb/c/a/a/l;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    return-void
.end method
