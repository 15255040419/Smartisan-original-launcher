.class public final Lcom/google/common/cache/CacheBuilderSpec;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilderSpec$k;,
        Lcom/google/common/cache/CacheBuilderSpec$m;,
        Lcom/google/common/cache/CacheBuilderSpec$a;,
        Lcom/google/common/cache/CacheBuilderSpec$c;,
        Lcom/google/common/cache/CacheBuilderSpec$j;,
        Lcom/google/common/cache/CacheBuilderSpec$l;,
        Lcom/google/common/cache/CacheBuilderSpec$f;,
        Lcom/google/common/cache/CacheBuilderSpec$b;,
        Lcom/google/common/cache/CacheBuilderSpec$i;,
        Lcom/google/common/cache/CacheBuilderSpec$h;,
        Lcom/google/common/cache/CacheBuilderSpec$d;,
        Lcom/google/common/cache/CacheBuilderSpec$g;,
        Lcom/google/common/cache/CacheBuilderSpec$e;,
        Lcom/google/common/cache/CacheBuilderSpec$ValueParser;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Integer;

.field public e:Lb/c/a/b/c;

.field public f:Lb/c/a/b/c;

.field public g:Ljava/lang/Boolean;

.field public h:J

.field public i:Ljava/util/concurrent/TimeUnit;

.field public j:J

.field public k:Ljava/util/concurrent/TimeUnit;

.field public l:J

.field public m:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2c

    .line 1
    invoke-static {v0}, Lcom/google/common/base/Splitter;->a(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->a()Lcom/google/common/base/Splitter;

    const/16 v0, 0x3d

    .line 2
    invoke-static {v0}, Lcom/google/common/base/Splitter;->a(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->a()Lcom/google/common/base/Splitter;

    .line 3
    invoke-static {}, Lb/c/a/c/p0;->g()Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$d;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$d;-><init>()V

    const-string v2, "initialCapacity"

    .line 4
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$h;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$h;-><init>()V

    const-string v2, "maximumSize"

    .line 5
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$i;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$i;-><init>()V

    const-string v2, "maximumWeight"

    .line 6
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$b;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$b;-><init>()V

    const-string v2, "concurrencyLevel"

    .line 7
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$f;

    sget-object v2, Lb/c/a/b/c;->c:Lb/c/a/b/c;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$f;-><init>(Lb/c/a/b/c;)V

    const-string v2, "weakKeys"

    .line 8
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$l;

    sget-object v2, Lb/c/a/b/c;->b:Lb/c/a/b/c;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$l;-><init>(Lb/c/a/b/c;)V

    const-string v2, "softValues"

    .line 9
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$l;

    sget-object v2, Lb/c/a/b/c;->c:Lb/c/a/b/c;

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheBuilderSpec$l;-><init>(Lb/c/a/b/c;)V

    const-string v2, "weakValues"

    .line 10
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$j;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$j;-><init>()V

    const-string v2, "recordStats"

    .line 11
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$a;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$a;-><init>()V

    const-string v2, "expireAfterAccess"

    .line 12
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$m;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$m;-><init>()V

    const-string v2, "expireAfterWrite"

    .line 13
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$k;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$k;-><init>()V

    const-string v2, "refreshAfterWrite"

    .line 14
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    new-instance v1, Lcom/google/common/cache/CacheBuilderSpec$k;

    invoke-direct {v1}, Lcom/google/common/cache/CacheBuilderSpec$k;-><init>()V

    const-string v2, "refreshInterval"

    .line 15
    invoke-virtual {v0, v2, v1}, Lb/c/a/c/p0$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lb/c/a/c/p0$b;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lb/c/a/c/p0$b;->a()Lb/c/a/c/p0;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/cache/CacheBuilderSpec;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
