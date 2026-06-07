.class public Lcom/google/common/cache/CacheBuilderSpec$d;
.super Lcom/google/common/cache/CacheBuilderSpec$e;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/CacheBuilderSpec;I)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    const-string v2, "initial capacity was already set to "

    invoke-static {v0, v2, v1}, Lb/c/a/a/l;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    return-void
.end method
