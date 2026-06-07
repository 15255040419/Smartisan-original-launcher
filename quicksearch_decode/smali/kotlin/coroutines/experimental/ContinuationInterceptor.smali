.class public interface abstract Lkotlin/coroutines/experimental/ContinuationInterceptor;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lkotlin/coroutines/experimental/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/experimental/ContinuationInterceptor$a;
    }
.end annotation


# static fields
.field public static final Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor$a;->a:Lkotlin/coroutines/experimental/ContinuationInterceptor$a;

    sput-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;->Key:Lkotlin/coroutines/experimental/ContinuationInterceptor$a;

    return-void
.end method


# virtual methods
.method public abstract interceptContinuation(Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "TT;>;"
        }
    .end annotation
.end method
