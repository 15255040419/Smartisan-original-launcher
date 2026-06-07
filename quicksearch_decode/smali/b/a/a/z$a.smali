.class public Lb/a/a/z$a;
.super Lb/a/a/w;
.source "MultiSourceCorpus.java"

# interfaces
.implements Lcom/android/quicksearchbox/CorpusResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;"
        }
    .end annotation
.end field

.field public final j:I

.field public final synthetic k:Lb/a/a/z;


# direct methods
.method public constructor <init>(Lb/a/a/z;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/a/a/z$a;->k:Lb/a/a/z;

    .line 2
    invoke-direct {p0, p2}, Lb/a/a/w;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Lb/a/a/z$a;->i:Ljava/util/ArrayList;

    .line 4
    iput p4, p0, Lb/a/a/z$a;->j:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    invoke-super {p0}, Lb/a/a/w;->close()V

    .line 2
    iget-object v0, p0, Lb/a/a/z$a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/SourceResult;

    .line 3
    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursor;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/z$a;->k:Lb/a/a/z;

    return-object v0
.end method

.method public getLatency()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/z$a;->j:I

    return v0
.end method

.method public j()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public k()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/quicksearchbox/SourceResult;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/a/z$a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/a/z$a;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/a/g;->getUserQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "];n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb/a/a/w;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
