.class public interface abstract Lkotlin/contracts/ContractBuilder;
.super Ljava/lang/Object;
.source "ContractBuilder.kt"


# virtual methods
.method public abstract callsInPlace(Lkotlin/Function;Ld/m/a;)Lkotlin/contracts/CallsInPlace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/Function<",
            "+TR;>;",
            "Ld/m/a;",
            ")",
            "Lkotlin/contracts/CallsInPlace;"
        }
    .end annotation
.end method

.method public abstract returns()Lkotlin/contracts/Returns;
.end method

.method public abstract returns(Ljava/lang/Object;)Lkotlin/contracts/Returns;
.end method

.method public abstract returnsNotNull()Lkotlin/contracts/ReturnsNotNull;
.end method
