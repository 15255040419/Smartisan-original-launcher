.class Lcom/google/common/collect/Range$LowerBoundFn;
.super Ljava/lang/Object;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LowerBoundFn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/collect/Range;",
        "Lcom/google/common/collect/Cut;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/collect/Range$LowerBoundFn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/google/common/collect/Range$LowerBoundFn;

    invoke-direct {v0}, Lcom/google/common/collect/Range$LowerBoundFn;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range$LowerBoundFn;->INSTANCE:Lcom/google/common/collect/Range$LowerBoundFn;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Cut;
    .locals 0

    .line 127
    iget-object p0, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 122
    check-cast p1, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range$LowerBoundFn;->apply(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Cut;

    move-result-object p0

    return-object p0
.end method
