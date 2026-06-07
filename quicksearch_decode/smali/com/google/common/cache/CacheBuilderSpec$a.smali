.class public Lcom/google/common/cache/CacheBuilderSpec$a;
.super Lcom/google/common/cache/CacheBuilderSpec$c;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/cache/CacheBuilderSpec;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/common/cache/CacheBuilderSpec;->k:Ljava/util/concurrent/TimeUnit;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expireAfterAccess already set"

    invoke-static {v0, v1}, Lb/c/a/a/l;->a(ZLjava/lang/Object;)V

    .line 2
    iput-wide p2, p1, Lcom/google/common/cache/CacheBuilderSpec;->j:J

    .line 3
    iput-object p4, p1, Lcom/google/common/cache/CacheBuilderSpec;->k:Ljava/util/concurrent/TimeUnit;

    return-void
.end method
