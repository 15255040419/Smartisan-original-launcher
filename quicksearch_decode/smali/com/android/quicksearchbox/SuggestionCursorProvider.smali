.class public interface abstract Lcom/android/quicksearchbox/SuggestionCursorProvider;
.super Ljava/lang/Object;
.source "SuggestionCursorProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/android/quicksearchbox/SuggestionCursor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SuggestionCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZI)TC;"
        }
    .end annotation
.end method
