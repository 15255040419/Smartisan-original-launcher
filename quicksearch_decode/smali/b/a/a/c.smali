.class public abstract Lb/a/a/c;
.super Ljava/lang/Object;
.source "AbstractCorpus.java"

# interfaces
.implements Lcom/android/quicksearchbox/Corpus;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb/a/a/m;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/a/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lb/a/a/c;->c:I

    .line 3
    iput-object p1, p0, Lb/a/a/c;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lb/a/a/c;->b:Lb/a/a/m;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public clearSortScore()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lb/a/a/c;->c:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/quicksearchbox/Corpus;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSortScore()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/c;->c:I

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/c;->b:Lb/a/a/m;

    invoke-virtual {v0, p0}, Lb/a/a/m;->a(Lcom/android/quicksearchbox/Corpus;)I

    move-result v0

    iput v0, p0, Lb/a/a/c;->c:I

    .line 3
    :cond_0
    iget v0, p0, Lb/a/a/c;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCorpusDefaultEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/c;->b:Lb/a/a/m;

    invoke-virtual {v0, p0}, Lb/a/a/m;->b(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v0

    return v0
.end method

.method public isCorpusHidden()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/c;->b:Lb/a/a/m;

    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/m;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
