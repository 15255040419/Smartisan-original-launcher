.class public Lb/a/a/z0$a;
.super Ljava/lang/Object;
.source "SuggestionsProviderImpl.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/Consumer<",
        "Lcom/android/quicksearchbox/CorpusResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb/a/a/n1/g;

.field public final b:Lb/a/a/y0;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/CorpusResult;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:I

.field public final synthetic f:Lb/a/a/z0;


# direct methods
.method public constructor <init>(Lb/a/a/z0;Lb/a/a/n1/g;Lb/a/a/y0;IJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/z0$a;->f:Lb/a/a/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lb/a/a/z0$a$a;

    invoke-direct {p1, p0}, Lb/a/a/z0$a$a;-><init>(Lb/a/a/z0$a;)V

    .line 3
    iput-object p2, p0, Lb/a/a/z0$a;->a:Lb/a/a/n1/g;

    .line 4
    iput-object p3, p0, Lb/a/a/z0$a;->b:Lb/a/a/y0;

    .line 5
    iput p4, p0, Lb/a/a/z0$a;->e:I

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/a/a/z0$a;->c:Ljava/util/ArrayList;

    .line 7
    iput-boolean p7, p0, Lb/a/a/z0$a;->d:Z

    return-void
.end method

.method public static synthetic a(Lb/a/a/z0$a;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/a/z0$a;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 14
    iget-object v0, p0, Lb/a/a/z0$a;->b:Lb/a/a/y0;

    invoke-virtual {v0}, Lb/a/a/y0;->j()I

    move-result v0

    iget v1, p0, Lb/a/a/z0$a;->e:I

    if-ne v0, v1, :cond_0

    .line 15
    invoke-static {}, Lb/a/a/m;->n()I

    move-result v0

    .line 16
    iget v1, p0, Lb/a/a/z0$a;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lb/a/a/z0$a;->e:I

    .line 17
    iget-object v1, p0, Lb/a/a/z0$a;->a:Lb/a/a/n1/g;

    invoke-virtual {v1, v0}, Lb/a/a/n1/g;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 9
    iget-boolean p1, p0, Lb/a/a/z0$a;->d:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 10
    iget-object v1, p0, Lb/a/a/z0$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/CorpusResult;

    .line 11
    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_1
    move v0, p1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 12
    iget-object p1, p0, Lb/a/a/z0$a;->b:Lb/a/a/y0;

    iget-object v0, p0, Lb/a/a/z0$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lb/a/a/y0;->a(Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Lb/a/a/z0$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/CorpusResult;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lb/a/a/z0$a;->f:Lb/a/a/z0;

    invoke-static {v0, p1}, Lb/a/a/z0;->a(Lb/a/a/z0;Lcom/android/quicksearchbox/CorpusResult;)V

    .line 3
    iget-object v0, p0, Lb/a/a/z0$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lb/a/a/z0$a;->a(Z)V

    .line 5
    iget-object v0, p0, Lb/a/a/z0$a;->b:Lb/a/a/y0;

    invoke-virtual {v0}, Lb/a/a/y0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lb/a/a/z0$a;->a()V

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lb/a/a/z0$a;->f:Lb/a/a/z0;

    invoke-static {v0}, Lb/a/a/z0;->a(Lb/a/a/z0;)Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lb/a/a/z0$a;->f:Lb/a/a/z0;

    invoke-static {v0}, Lb/a/a/z0;->a(Lb/a/a/z0;)Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/Logger;->logLatency(Lcom/android/quicksearchbox/CorpusResult;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/quicksearchbox/CorpusResult;

    invoke-virtual {p0, p1}, Lb/a/a/z0$a;->a(Lcom/android/quicksearchbox/CorpusResult;)Z

    move-result p1

    return p1
.end method
