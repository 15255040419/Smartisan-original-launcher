.class public Lb/a/a/q0;
.super Lb/a/a/u0;
.source "SingleSourceCorpusResult.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusResult;


# instance fields
.field public final c:Lcom/android/quicksearchbox/Corpus;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lb/a/a/u0;-><init>(Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    .line 2
    iput-object p1, p0, Lb/a/a/q0;->c:Lcom/android/quicksearchbox/Corpus;

    .line 3
    iput p4, p0, Lb/a/a/q0;->d:I

    return-void
.end method


# virtual methods
.method public getCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/q0;->c:Lcom/android/quicksearchbox/Corpus;

    return-object v0
.end method

.method public getLatency()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/q0;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/q0;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
