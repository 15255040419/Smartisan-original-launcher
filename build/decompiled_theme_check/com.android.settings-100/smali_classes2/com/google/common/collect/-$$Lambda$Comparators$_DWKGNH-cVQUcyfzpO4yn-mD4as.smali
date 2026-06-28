.class public final synthetic Lcom/google/common/collect/-$$Lambda$Comparators$_DWKGNH-cVQUcyfzpO4yn-mD4as;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(ILjava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/collect/-$$Lambda$Comparators$_DWKGNH-cVQUcyfzpO4yn-mD4as;->f$0:I

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Comparators$_DWKGNH-cVQUcyfzpO4yn-mD4as;->f$1:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/-$$Lambda$Comparators$_DWKGNH-cVQUcyfzpO4yn-mD4as;->f$0:I

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Comparators$_DWKGNH-cVQUcyfzpO4yn-mD4as;->f$1:Ljava/util/Comparator;

    invoke-static {v0, p0}, Lcom/google/common/collect/Comparators;->lambda$least$0(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;

    move-result-object p0

    return-object p0
.end method
