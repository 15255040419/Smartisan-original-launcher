.class public final Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
.super Ljava/lang/Object;
.source "AsyncDifferConfig.java"


# instance fields
.field private final mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;

.field private final mMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/support/v7/util/DiffUtil$ItemCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/support/v7/util/DiffUtil$ItemCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/support/v7/util/DiffUtil$ItemCallback;)V

    return-void
.end method


# virtual methods
.method public getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;

    return-object p0
.end method

.method public getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method
