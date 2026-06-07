.class public interface abstract Lcom/google/common/base/Supplier;
.super Ljava/lang/Object;
.source "Supplier.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
