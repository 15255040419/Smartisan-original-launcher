.class public Lb/a/a/q;
.super Ljava/lang/Object;
.source "DefaultCorpusRanker.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusRanker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/q$c;,
        Lb/a/a/q$d;,
        Lb/a/a/q$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/quicksearchbox/ShortcutRepository;

.field public final b:Lcom/android/quicksearchbox/Corpora;

.field public final c:Lb/a/a/q$d;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRepository;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/a/q;->b:Lcom/android/quicksearchbox/Corpora;

    .line 3
    iget-object p1, p0, Lb/a/a/q;->b:Lcom/android/quicksearchbox/Corpora;

    new-instance v0, Lb/a/a/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/a/q$b;-><init>(Lb/a/a/q;Lb/a/a/q$a;)V

    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/Corpora;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    iput-object p2, p0, Lb/a/a/q;->a:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 5
    new-instance p1, Lb/a/a/q$d;

    invoke-direct {p1, p0, v1}, Lb/a/a/q$d;-><init>(Lb/a/a/q;Lb/a/a/q$a;)V

    iput-object p1, p0, Lb/a/a/q;->c:Lb/a/a/q$d;

    return-void
.end method

.method public static synthetic a(Lb/a/a/q;)Lcom/android/quicksearchbox/Corpora;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/q;->b:Lcom/android/quicksearchbox/Corpora;

    return-object p0
.end method

.method public static synthetic b(Lb/a/a/q;)Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/q;->a:Lcom/android/quicksearchbox/ShortcutRepository;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/q$d;

    invoke-virtual {v0}, Lb/a/a/n1/h;->a()V

    return-void
.end method

.method public getCorporaInAll(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/q;->c:Lb/a/a/q$d;

    invoke-virtual {v0, p1}, Lb/a/a/n1/h;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method
