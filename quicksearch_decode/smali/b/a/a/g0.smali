.class public Lb/a/a/g0;
.super Ljava/lang/Object;
.source "SearchableCorpusFactory.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusFactory;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb/a/a/m;

.field public final c:Lcom/android/quicksearchbox/SearchSettings;

.field public final d:Lcom/android/quicksearchbox/util/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/util/Factory<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/util/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/a/a/m;",
            "Lcom/android/quicksearchbox/SearchSettings;",
            "Lcom/android/quicksearchbox/util/Factory<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/g0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lb/a/a/g0;->b:Lb/a/a/m;

    .line 4
    iput-object p3, p0, Lb/a/a/g0;->c:Lcom/android/quicksearchbox/SearchSettings;

    .line 5
    iput-object p4, p0, Lb/a/a/g0;->d:Lcom/android/quicksearchbox/util/Factory;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Corpus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;",
            "Lcom/android/quicksearchbox/Corpus;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static e(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/quicksearchbox/Sources;->getWebSearchSource()Lcom/android/quicksearchbox/Source;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/quicksearchbox/Source;)Lcom/android/quicksearchbox/Corpus;
    .locals 3

    .line 11
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_0
    new-instance v0, Lb/a/a/p0;

    iget-object v1, p0, Lb/a/a/g0;->a:Landroid/content/Context;

    iget-object v2, p0, Lb/a/a/g0;->b:Lb/a/a/m;

    invoke-direct {v0, v1, v2, p1}, Lb/a/a/p0;-><init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/Source;)V

    return-object v0
.end method

.method public a(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpus;
    .locals 3

    .line 9
    invoke-virtual {p0, p1}, Lb/a/a/g0;->c(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Lb/a/a/k;

    iget-object v1, p0, Lb/a/a/g0;->a:Landroid/content/Context;

    iget-object v2, p0, Lb/a/a/g0;->b:Lb/a/a/m;

    invoke-direct {v0, v1, v2, p1}, Lb/a/a/k;-><init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/Source;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/g0;->d:Lcom/android/quicksearchbox/util/Factory;

    invoke-interface {v0}, Lcom/android/quicksearchbox/util/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Sources;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;",
            "Lcom/android/quicksearchbox/Sources;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/Corpus;

    .line 4
    invoke-interface {v2}, Lcom/android/quicksearchbox/Corpus;->getSources()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Lcom/android/quicksearchbox/Sources;->getSources()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Source;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Lb/a/a/g0;->a(Lcom/android/quicksearchbox/Source;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    invoke-static {p1, v1}, Lb/a/a/g0;->a(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Corpus;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/g0;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpus;
    .locals 10

    .line 5
    invoke-static {p1}, Lb/a/a/g0;->e(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "QSB.SCF"

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/quicksearchbox/Source;->canRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read web source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, v0

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lb/a/a/g0;->d(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1}, Lcom/android/quicksearchbox/Source;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read browser source "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object v9, p1

    .line 11
    :goto_1
    invoke-virtual {p0}, Lb/a/a/g0;->a()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 12
    new-instance p1, Lb/a/a/b1;

    iget-object v4, p0, Lb/a/a/g0;->a:Landroid/content/Context;

    iget-object v5, p0, Lb/a/a/g0;->b:Lb/a/a/m;

    iget-object v6, p0, Lb/a/a/g0;->c:Lcom/android/quicksearchbox/SearchSettings;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lb/a/a/b1;-><init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/SearchSettings;Ljava/util/concurrent/Executor;Lcom/android/quicksearchbox/Source;Lcom/android/quicksearchbox/Source;)V

    return-object p1
.end method

.method public b(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Sources;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;",
            "Lcom/android/quicksearchbox/Sources;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p2}, Lb/a/a/g0;->b(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    invoke-static {p1, v0}, Lb/a/a/g0;->a(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Corpus;)V

    .line 3
    invoke-virtual {p0, p2}, Lb/a/a/g0;->a(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpus;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1, p2}, Lb/a/a/g0;->a(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Corpus;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/g0;->b()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;

    move-result-object p1

    return-object p1
.end method

.method public createCorpora(Lcom/android/quicksearchbox/Sources;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/Sources;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1}, Lb/a/a/g0;->b(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Sources;)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lb/a/a/g0;->a(Ljava/util/ArrayList;Lcom/android/quicksearchbox/Sources;)V

    return-object v0
.end method

.method public d(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Source;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/g0;->b()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/Sources;->getSource(Ljava/lang/String;)Lcom/android/quicksearchbox/Source;

    move-result-object p1

    return-object p1
.end method
