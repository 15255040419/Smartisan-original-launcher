.class public interface abstract Lcom/android/quicksearchbox/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final SEARCH_METHOD_BUTTON:I = 0x0

.field public static final SEARCH_METHOD_KEYBOARD:I = 0x1

.field public static final SUGGESTION_CLICK_TYPE_CALL_CONTACT:I = 0x4

.field public static final SUGGESTION_CLICK_TYPE_LAUNCH:I = 0x0

.field public static final SUGGESTION_CLICK_TYPE_MUSIC:I = 0x5

.field public static final SUGGESTION_CLICK_TYPE_QUICK_CONTACT:I = 0x2

.field public static final SUGGESTION_CLICK_TYPE_REFINE:I = 0x1

.field public static final SUGGESTION_CLICK_TYPE_SMS_CONTACT:I = 0x3


# virtual methods
.method public abstract logExit(Lcom/android/quicksearchbox/SuggestionCursor;I)V
.end method

.method public abstract logLatency(Lcom/android/quicksearchbox/CorpusResult;)V
.end method

.method public abstract logSearch(Lcom/android/quicksearchbox/Corpus;II)V
.end method

.method public abstract logStart(IILjava/lang/String;Lcom/android/quicksearchbox/Corpus;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/android/quicksearchbox/Corpus;",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract logVoiceSearch(Lcom/android/quicksearchbox/Corpus;)V
.end method
