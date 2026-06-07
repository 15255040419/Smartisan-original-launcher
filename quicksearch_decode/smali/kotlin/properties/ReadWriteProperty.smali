.class public interface abstract Lkotlin/properties/ReadWriteProperty;
.super Ljava/lang/Object;
.source "Interfaces.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public abstract setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;)V"
        }
    .end annotation
.end method
