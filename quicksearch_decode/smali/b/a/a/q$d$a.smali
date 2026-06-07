.class public Lb/a/a/q$d$a;
.super Ljava/lang/Object;
.source "DefaultCorpusRanker.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/q$d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/q$d;


# direct methods
.method public constructor <init>(Lb/a/a/q$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/q$d$a;->a:Lb/a/a/q$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/q$d$a;->a:Lb/a/a/q$d;

    iget-object v0, v0, Lb/a/a/q$d;->f:Lb/a/a/q;

    invoke-static {v0}, Lb/a/a/q;->a(Lb/a/a/q;)Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpora;->getCorporaInAll()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v0, Lb/a/a/q$c;

    invoke-direct {v0, p1}, Lb/a/a/q$c;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object p1, p0, Lb/a/a/q$d$a;->a:Lb/a/a/q$d;

    invoke-static {p1, v1}, Lb/a/a/q$d;->a(Lb/a/a/q$d;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lb/a/a/q$d$a;->a(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
