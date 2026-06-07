.class public Lb/a/a/m1/f;
.super Ljava/lang/Object;
.source "SuggestionViewInflater.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionViewFactory;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/quicksearchbox/ui/SuggestionView;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/m1/f;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lb/a/a/m1/f;->b:Ljava/lang/Class;

    .line 4
    iput p3, p0, Lb/a/a/m1/f;->c:I

    .line 5
    iput-object p4, p0, Lb/a/a/m1/f;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/LayoutInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/m1/f;->d:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public canCreateView(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getSuggestionViewTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/m1/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 1
    move-object v0, p3

    check-cast v0, Lcom/android/quicksearchbox/ui/SuggestionView;

    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    return-object p3
.end method

.method public getView(Lcom/android/quicksearchbox/SuggestionCursor;Ljava/lang/String;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/m1/f;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget p3, p0, Lb/a/a/m1/f;->c:I

    .line 4
    invoke-virtual {p0}, Lb/a/a/m1/f;->a()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 5
    :cond_1
    instance-of p4, p3, Lcom/android/quicksearchbox/ui/SuggestionView;

    if-eqz p4, :cond_2

    .line 6
    move-object p4, p3

    check-cast p4, Lcom/android/quicksearchbox/ui/SuggestionView;

    invoke-interface {p4, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    return-object p3

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Not a SuggestionView: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getViewType(Lcom/android/quicksearchbox/Suggestion;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lb/a/a/m1/f;->a:Ljava/lang/String;

    return-object p1
.end method
