.class public interface abstract Lcom/android/quicksearchbox/SuggestionExtras;
.super Ljava/lang/Object;
.source "SuggestionExtras.java"


# virtual methods
.method public abstract getExtra(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getExtraColumnNames()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toJsonString()Ljava/lang/String;
.end method
