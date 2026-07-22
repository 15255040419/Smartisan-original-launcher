.class public Landroid/arch/core/a/c;
.super Landroid/arch/core/a/e;
.source "ArchTaskExecutor.java"


# static fields
.field private static final m:Ljava/util/concurrent/Executor;

.field private static volatile sInstance:Landroid/arch/core/a/c;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private k:Landroid/arch/core/a/e;

.field private mDelegate:Landroid/arch/core/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/arch/core/a/a;

    invoke-direct {v0}, Landroid/arch/core/a/a;-><init>()V

    sput-object v0, Landroid/arch/core/a/c;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Landroid/arch/core/a/b;

    invoke-direct {v0}, Landroid/arch/core/a/b;-><init>()V

    sput-object v0, Landroid/arch/core/a/c;->m:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/arch/core/a/e;-><init>()V

    .line 2
    new-instance v0, Landroid/arch/core/a/d;

    invoke-direct {v0}, Landroid/arch/core/a/d;-><init>()V

    iput-object v0, p0, Landroid/arch/core/a/c;->k:Landroid/arch/core/a/e;

    .line 3
    iget-object v0, p0, Landroid/arch/core/a/c;->k:Landroid/arch/core/a/e;

    iput-object v0, p0, Landroid/arch/core/a/c;->mDelegate:Landroid/arch/core/a/e;

    return-void
.end method

.method public static getInstance()Landroid/arch/core/a/c;
    .locals 2

    .line 1
    sget-object v0, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Landroid/arch/core/a/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Landroid/arch/core/a/c;

    invoke-direct {v1}, Landroid/arch/core/a/c;-><init>()V

    sput-object v1, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Landroid/arch/core/a/c;->sInstance:Landroid/arch/core/a/c;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/a/c;->mDelegate:Landroid/arch/core/a/e;

    invoke-virtual {p0, p1}, Landroid/arch/core/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/a/c;->mDelegate:Landroid/arch/core/a/e;

    invoke-virtual {p0, p1}, Landroid/arch/core/a/e;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/a/c;->mDelegate:Landroid/arch/core/a/e;

    invoke-virtual {p0}, Landroid/arch/core/a/e;->m()Z

    move-result p0

    return p0
.end method
