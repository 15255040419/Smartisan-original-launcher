.class public Lb/a/a/w;
.super Lb/a/a/g;
.source "ListSuggestionCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/w$a;
    }
.end annotation


# instance fields
.field public final b:Landroid/database/DataSetObservable;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/a/w$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lb/a/a/w$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, p1, v0}, Lb/a/a/w;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/g;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/database/DataSetObservable;

    invoke-direct {p1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object p1, p0, Lb/a/a/w;->b:Landroid/database/DataSetObservable;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lb/a/a/w;->e:I

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lb/a/a/w;->g:I

    .line 6
    iput p1, p0, Lb/a/a/w;->h:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lb/a/a/w;->f:Landroid/util/SparseArray;

    return-void
.end method

.method public static c(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a()Lcom/android/quicksearchbox/Suggestion;
    .locals 2

    .line 21
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lb/a/a/w;->e:I

    if-gt v0, v1, :cond_0

    .line 22
    new-instance v0, Lb/a/a/r;

    invoke-direct {v0}, Lb/a/a/r;-><init>()V

    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/w$a;

    invoke-virtual {v0}, Lb/a/a/w$a;->a()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lb/a/a/w;->a()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    .line 25
    instance-of v1, v0, Lb/a/a/s0;

    if-eqz v1, :cond_0

    .line 26
    check-cast v0, Lb/a/a/s0;

    invoke-virtual {v0, p1}, Lb/a/a/s0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a(II)V
    .locals 1

    .line 27
    iget-object v0, p0, Lb/a/a/w;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 28
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 30
    iget-object p2, p0, Lb/a/a/w;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 31
    invoke-virtual {p0}, Lb/a/a/w;->h()V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;Z)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/android/quicksearchbox/Suggestion;Z)Z
    .locals 5

    .line 2
    instance-of v0, p1, Lb/a/a/w0;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {p1}, Lb/a/a/w;->c(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lb/a/a/w0;

    .line 4
    invoke-virtual {v0}, Lb/a/a/i;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/quicksearchbox/Source;->getMaxDisplay()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 6
    invoke-virtual {v0}, Lb/a/a/i;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 7
    iget v4, p0, Lb/a/a/w;->g:I

    if-eq v4, v3, :cond_0

    .line 8
    iput v3, p0, Lb/a/a/w;->g:I

    const/4 v4, 0x0

    .line 9
    iput v4, p0, Lb/a/a/w;->h:I

    goto :goto_0

    .line 10
    :cond_0
    iget v4, p0, Lb/a/a/w;->h:I

    add-int/2addr v4, v1

    iput v4, p0, Lb/a/a/w;->h:I

    .line 11
    :goto_0
    iget v4, p0, Lb/a/a/w;->h:I

    if-ne v4, v2, :cond_2

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v4, Lb/a/a/w$a;

    invoke-direct {v4, p1}, Lb/a/a/w$a;-><init>(Lcom/android/quicksearchbox/Suggestion;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lb/a/a/w;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p2, :cond_1

    .line 15
    iget-object p1, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    new-instance p2, Lb/a/a/w$a;

    new-instance v2, Lb/a/a/s0;

    const/4 v3, 0x2

    .line 16
    invoke-virtual {v0}, Lb/a/a/i;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lb/a/a/s0;-><init>(ILjava/lang/CharSequence;)V

    invoke-direct {p2, v2}, Lb/a/a/w$a;-><init>(Lcom/android/quicksearchbox/Suggestion;)V

    .line 17
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return v1

    :cond_2
    if-le v4, v2, :cond_3

    .line 18
    iget-object p2, p0, Lb/a/a/w;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 19
    new-instance v0, Lb/a/a/w$a;

    invoke-direct {v0, p1}, Lb/a/a/w$a;-><init>(Lcom/android/quicksearchbox/Suggestion;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    .line 20
    :cond_3
    iget-object p2, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    new-instance v0, Lb/a/a/w$a;

    invoke-direct {v0, p1}, Lb/a/a/w$a;-><init>(Lcom/android/quicksearchbox/Suggestion;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public b(Lcom/android/quicksearchbox/Suggestion;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    iget v1, p0, Lb/a/a/w;->e:I

    new-instance v2, Lb/a/a/w$a;

    invoke-direct {v2, p1}, Lb/a/a/w$a;-><init>(Lcom/android/quicksearchbox/Suggestion;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lb/a/a/w;->a()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lb/a/a/s0;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lb/a/a/s0;

    invoke-virtual {v0}, Lb/a/a/s0;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lb/a/a/w;->a()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lb/a/a/s0;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lb/a/a/s0;

    invoke-virtual {v0}, Lb/a/a/s0;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/w;->a()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lb/a/a/s0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lb/a/a/s0;

    invoke-virtual {v0}, Lb/a/a/s0;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/w;->a()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lb/a/a/s0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lb/a/a/s0;

    invoke-virtual {v0}, Lb/a/a/s0;->e()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/w;->a()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    .line 2
    instance-of v0, v0, Lb/a/a/s0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/w;->a()Lcom/android/quicksearchbox/Suggestion;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lb/a/a/s0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lb/a/a/s0;

    invoke-virtual {v0}, Lb/a/a/s0;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getExtraColumns()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/w;->d:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/a/a/w;->d:Ljava/util/HashSet;

    .line 3
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/w$a;

    .line 4
    invoke-virtual {v2}, Lb/a/a/w$a;->b()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lb/a/a/w;->d:Ljava/util/HashSet;

    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtraColumnNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lb/a/a/w;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lb/a/a/w;->d:Ljava/util/HashSet;

    :goto_2
    return-object v1
.end method

.method public getExtras()Lcom/android/quicksearchbox/SuggestionExtras;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    iget v1, p0, Lb/a/a/w;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/w$a;

    invoke-virtual {v0}, Lb/a/a/w$a;->b()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/w;->e:I

    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/w;->b:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    iget v1, p0, Lb/a/a/w;->e:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public moveTo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/w;->e:I

    return-void
.end method

.method public moveToNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget v1, p0, Lb/a/a/w;->e:I

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 3
    iput v1, p0, Lb/a/a/w;->e:I

    .line 4
    iget v1, p0, Lb/a/a/w;->e:I

    if-ge v1, v0, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/w;->b:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/a/g;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/w;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/w;->b:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
