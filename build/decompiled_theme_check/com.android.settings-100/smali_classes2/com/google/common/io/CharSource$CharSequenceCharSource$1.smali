.class Lcom/google/common/io/CharSource$CharSequenceCharSource$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharSource$CharSequenceCharSource;->linesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field lines:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/io/CharSource$CharSequenceCharSource;


# direct methods
.method constructor <init>(Lcom/google/common/io/CharSource$CharSequenceCharSource;)V
    .locals 1

    .line 563
    iput-object p1, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->this$0:Lcom/google/common/io/CharSource$CharSequenceCharSource;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 564
    invoke-static {}, Lcom/google/common/io/CharSource$CharSequenceCharSource;->access$100()Lcom/google/common/base/Splitter;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->this$0:Lcom/google/common/io/CharSource$CharSequenceCharSource;

    iget-object v0, v0, Lcom/google/common/io/CharSource$CharSequenceCharSource;->seq:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->lines:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 0

    .line 563
    invoke-virtual {p0}, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->computeNext()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->lines:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->lines:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 571
    iget-object v1, p0, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->lines:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    .line 575
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/io/CharSource$CharSequenceCharSource$1;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
