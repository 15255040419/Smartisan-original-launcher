.class public interface abstract Lkotlin/reflect/KMutableProperty2;
.super Ljava/lang/Object;
.source "KProperty.kt"

# interfaces
.implements Lkotlin/reflect/KProperty2;
.implements Lkotlin/reflect/KMutableProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/KMutableProperty2$Setter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KProperty2<",
        "TD;TE;TR;>;",
        "Lkotlin/reflect/KMutableProperty<",
        "TR;>;"
    }
.end annotation


# virtual methods
.method public abstract getSetter()Lkotlin/reflect/KMutableProperty2$Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KMutableProperty2$Setter<",
            "TD;TE;TR;>;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TE;TR;)V"
        }
    .end annotation
.end method
