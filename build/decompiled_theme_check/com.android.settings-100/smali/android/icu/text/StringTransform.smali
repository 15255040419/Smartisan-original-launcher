.class public interface abstract Landroid/icu/text/StringTransform;
.super Ljava/lang/Object;
.source "StringTransform.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/text/Transform<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/icu/text/StringTransform;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract transform(Ljava/lang/String;)Ljava/lang/String;
.end method
