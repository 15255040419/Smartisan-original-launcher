.class public final synthetic Lcom/google/common/collect/-$$Lambda$ImmutableSortedMap$4o-cGxK6czDjMtDtYIE2ztEq4z8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMap$4o-cGxK6czDjMtDtYIE2ztEq4z8;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$ImmutableSortedMap$4o-cGxK6czDjMtDtYIE2ztEq4z8;->f$0:Ljava/util/Comparator;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedMap;->lambda$toImmutableSortedMap$0(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method
