.class public interface abstract Lcom/android/quicksearchbox/SuggestionCursor;
.super Ljava/lang/Object;
.source "SuggestionCursor.java"

# interfaces
.implements Lcom/android/quicksearchbox/Suggestion;
.implements Lcom/android/quicksearchbox/util/QuietlyCloseable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCount()I
.end method

.method public abstract getExtraColumns()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPosition()I
.end method

.method public abstract getUserQuery()Ljava/lang/String;
.end method

.method public abstract moveTo(I)V
.end method

.method public abstract moveToNext()Z
.end method

.method public abstract registerDataSetObserver(Landroid/database/DataSetObserver;)V
.end method

.method public abstract unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.end method
