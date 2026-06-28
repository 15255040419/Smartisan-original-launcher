.class Lcom/google/common/cache/CacheBuilderSpec$MaximumWeightParser;
.super Lcom/google/common/cache/CacheBuilderSpec$LongParser;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaximumWeightParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/google/common/cache/CacheBuilderSpec$LongParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseLong(Lcom/google/common/cache/CacheBuilderSpec;J)V
    .locals 4

    .line 345
    iget-object p0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    iget-object v2, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    const-string v3, "maximum weight was already set to "

    invoke-static {p0, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 347
    iget-object p0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    const-string v1, "maximum size was already set to "

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 348
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p1, Lcom/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    return-void
.end method
