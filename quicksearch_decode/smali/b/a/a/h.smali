.class public abstract Lb/a/a/h;
.super Ljava/lang/Object;
.source "AbstractSuggestionExtras.java"

# interfaces
.implements Lcom/android/quicksearchbox/SuggestionExtras;


# instance fields
.field public final a:Lcom/android/quicksearchbox/SuggestionExtras;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionExtras;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/h;->a:Lcom/android/quicksearchbox/SuggestionExtras;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/a/h;->a:Lcom/android/quicksearchbox/SuggestionExtras;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtraColumnNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lb/a/a/h;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lb/a/a/h;->a:Lcom/android/quicksearchbox/SuggestionExtras;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/u;

    invoke-direct {v0, p0}, Lb/a/a/u;-><init>(Lcom/android/quicksearchbox/SuggestionExtras;)V

    invoke-virtual {v0}, Lb/a/a/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
