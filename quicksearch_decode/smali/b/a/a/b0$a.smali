.class public Lb/a/a/b0$a;
.super Ljava/lang/Object;
.source "QsbApplication.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Factory<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/a/a/b0$a;->a:I

    .line 3
    iput-object p2, p0, Lb/a/a/b0$a;->b:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/b0$a;->create()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public create()Ljava/util/concurrent/Executor;
    .locals 2

    .line 2
    iget v0, p0, Lb/a/a/b0$a;->a:I

    iget-object v1, p0, Lb/a/a/b0$a;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
