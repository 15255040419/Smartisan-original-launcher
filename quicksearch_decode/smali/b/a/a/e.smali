.class public abstract Lb/a/a/e;
.super Ljava/lang/Object;
.source "AbstractPromoter.java"

# interfaces
.implements Lcom/android/quicksearchbox/Promoter;


# instance fields
.field public final a:Lcom/android/quicksearchbox/SuggestionFilter;

.field public final b:Lcom/android/quicksearchbox/Promoter;

.field public final c:Lb/a/a/m;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;Lb/a/a/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/e;->a:Lcom/android/quicksearchbox/SuggestionFilter;

    .line 3
    iput-object p2, p0, Lb/a/a/e;->b:Lcom/android/quicksearchbox/Promoter;

    .line 4
    iput-object p3, p0, Lb/a/a/e;->c:Lb/a/a/m;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 3
    iget-object v0, p0, Lb/a/a/e;->c:Lb/a/a/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/a/a/m;->b()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract a(Lb/a/a/y0;ILb/a/a/w;)V
.end method

.method public a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/e;->a:Lcom/android/quicksearchbox/SuggestionFilter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SuggestionFilter;->accept(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public pickPromoted(Lb/a/a/y0;ILb/a/a/w;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/e;->a(Lb/a/a/y0;ILb/a/a/w;)V

    .line 2
    iget-object v0, p0, Lb/a/a/e;->b:Lcom/android/quicksearchbox/Promoter;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/android/quicksearchbox/Promoter;->pickPromoted(Lb/a/a/y0;ILb/a/a/w;)V

    :cond_0
    return-void
.end method
