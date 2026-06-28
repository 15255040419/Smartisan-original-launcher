.class public interface abstract Lcom/android/settingslib/core/instrumentation/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"


# virtual methods
.method public varargs abstract action(II[Landroid/util/Pair;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract action(IZ[Landroid/util/Pair;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract action(Landroid/content/Context;II)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public varargs abstract action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract action(Landroid/content/Context;IZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public varargs abstract action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract actionWithSource(Landroid/content/Context;II)V
.end method

.method public abstract count(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract hidden(Landroid/content/Context;I)V
.end method

.method public abstract histogram(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract visible(Landroid/content/Context;II)V
.end method
