.class public Lb/a/a/q$d;
.super Lb/a/a/n1/h;
.source "DefaultCorpusRanker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/n1/h<",
        "Ljava/util/List<",
        "Lcom/android/quicksearchbox/Corpus;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lb/a/a/q;


# direct methods
.method public constructor <init>(Lb/a/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/q$d;->f:Lb/a/a/q;

    invoke-direct {p0}, Lb/a/a/n1/h;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/q;Lb/a/a/q$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/q$d;-><init>(Lb/a/a/q;)V

    return-void
.end method

.method public static synthetic a(Lb/a/a/q$d;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/n1/h;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/q$d;->f:Lb/a/a/q;

    invoke-static {v0}, Lb/a/a/q;->b(Lb/a/a/q;)Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    new-instance v1, Lb/a/a/q$d$a;

    invoke-direct {v1, p0}, Lb/a/a/q$d$a;-><init>(Lb/a/a/q$d;)V

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ShortcutRepository;->getCorpusScores(Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method
