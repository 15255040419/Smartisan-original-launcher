.class public Lb/a/a/k0;
.super Lb/a/a/w;
.source "ShortcutCursor.java"


# instance fields
.field public final i:Lcom/android/quicksearchbox/SuggestionCursor;

.field public final j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/quicksearchbox/SuggestionCursor;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public final l:Lcom/android/quicksearchbox/ShortcutRefresher;

.field public final m:Lcom/android/quicksearchbox/ShortcutRepository;

.field public final n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SuggestionCursor;ZLandroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V
    .locals 6

    .line 8
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lb/a/a/k0;-><init>(Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V

    .line 9
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    .line 10
    invoke-interface {p1, p4}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 11
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p5

    if-eqz p5, :cond_1

    if-nez p2, :cond_0

    .line 12
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result p5

    if-nez p5, :cond_1

    .line 13
    :cond_0
    new-instance p5, Lb/a/a/w0;

    invoke-direct {p5, p1}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p0, p5}, Lb/a/a/w;->a(Lcom/android/quicksearchbox/Suggestion;)Z

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Handler;Lcom/android/quicksearchbox/ShortcutRefresher;Lcom/android/quicksearchbox/ShortcutRepository;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/a/w;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb/a/a/k0;->k:Z

    .line 3
    iput-object p2, p0, Lb/a/a/k0;->i:Lcom/android/quicksearchbox/SuggestionCursor;

    .line 4
    iput-object p3, p0, Lb/a/a/k0;->n:Landroid/os/Handler;

    .line 5
    iput-object p4, p0, Lb/a/a/k0;->l:Lcom/android/quicksearchbox/ShortcutRefresher;

    .line 6
    iput-object p5, p0, Lb/a/a/k0;->m:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lb/a/a/k0;->j:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic a(Lb/a/a/k0;)Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/k0;->m:Lcom/android/quicksearchbox/ShortcutRepository;

    return-object p0
.end method

.method public static synthetic a(Lb/a/a/k0;Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/k0;->a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V

    return-void
.end method

.method public static synthetic b(Lb/a/a/k0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/k0;->n:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Lcom/android/quicksearchbox/SuggestionCursor;)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lb/a/a/k0;->k:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    :cond_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 5
    iget-object v0, p0, Lb/a/a/k0;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lb/a/a/w;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7
    invoke-virtual {p0, v0}, Lb/a/a/w;->moveTo(I)V

    .line 8
    invoke-virtual {p0}, Lb/a/a/i;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lb/a/a/i;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_3

    .line 9
    invoke-interface {p3}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 10
    new-instance p1, Lb/a/a/w0;

    invoke-direct {p1, p3}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;)V

    invoke-virtual {p0, p1}, Lb/a/a/w;->b(Lcom/android/quicksearchbox/Suggestion;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lb/a/a/w;->i()V

    .line 12
    :goto_1
    invoke-virtual {p0}, Lb/a/a/w;->h()V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/a/a/k0;->k:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/a/a/k0;->k:Z

    .line 3
    iget-object v0, p0, Lb/a/a/k0;->i:Lcom/android/quicksearchbox/SuggestionCursor;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/a/k0;->j:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/SuggestionCursor;

    .line 6
    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-super {p0}, Lb/a/a/w;->close()V

    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "double close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lcom/android/quicksearchbox/Suggestion;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/k0;->l:Lcom/android/quicksearchbox/ShortcutRefresher;

    new-instance v1, Lb/a/a/k0$a;

    invoke-direct {v1, p0}, Lb/a/a/k0$a;-><init>(Lb/a/a/k0;)V

    invoke-interface {v0, p1, v1}, Lcom/android/quicksearchbox/ShortcutRefresher;->refresh(Lcom/android/quicksearchbox/Suggestion;Lcom/android/quicksearchbox/ShortcutRefresher$Listener;)V

    return-void
.end method

.method public isSuggestionShortcut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
