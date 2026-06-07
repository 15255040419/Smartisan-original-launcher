.class public final Lb/a/a/n1/e0$a;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/e0;->a(Ljava/util/concurrent/ThreadFactory;)Lcom/android/quicksearchbox/util/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Factory<",
        "Lcom/android/quicksearchbox/util/NamedTaskExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/e0$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 2

    .line 2
    new-instance v0, Lb/a/a/n1/e0;

    iget-object v1, p0, Lb/a/a/n1/e0$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lb/a/a/n1/e0;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/n1/e0$a;->create()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    return-object v0
.end method
