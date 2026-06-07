.class public interface abstract Lcom/android/quicksearchbox/Sources;
.super Ljava/lang/Object;
.source "Sources.java"


# virtual methods
.method public abstract createSourceFor(Landroid/content/ComponentName;)Lcom/android/quicksearchbox/Source;
.end method

.method public abstract getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;
.end method

.method public abstract getSources()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Source;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWebSearchSource()Lcom/android/quicksearchbox/Source;
.end method

.method public abstract update()V
.end method
