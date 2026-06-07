.class public final Lb/b/a/a/a;
.super Ljava/lang/Object;
.source "BlockCanary.java"


# static fields
.field public static a:Lb/b/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lb/b/a/a/b;)Lb/b/a/a/a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb/b/a/a/b;->a(Landroid/content/Context;Lb/b/a/a/b;)V

    .line 2
    invoke-static {}, Lb/b/a/a/a;->b()Lb/b/a/a/a;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lb/b/a/a/a;
    .locals 2

    .line 1
    sget-object v0, Lb/b/a/a/a;->a:Lb/b/a/a/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lb/b/a/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lb/b/a/a/a;->a:Lb/b/a/a/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lb/b/a/a/a;

    invoke-direct {v1}, Lb/b/a/a/a;-><init>()V

    sput-object v1, Lb/b/a/a/a;->a:Lb/b/a/a/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lb/b/a/a/a;->a:Lb/b/a/a/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "BlockCanary-no-op"

    const-string v1, "start"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
