.class public interface abstract Lkotlin/jvm/functions/FunctionN;
.super Ljava/lang/Object;
.source "FunctionN.kt"

# interfaces
.implements Lkotlin/Function;
.implements Lkotlin/jvm/internal/FunctionBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/Function<",
        "TR;>;",
        "Lkotlin/jvm/internal/FunctionBase<",
        "TR;>;"
    }
.end annotation


# virtual methods
.method public abstract getArity()I
.end method

.method public varargs abstract invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation
.end method
