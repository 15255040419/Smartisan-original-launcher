.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;
.super Ljava/lang/Object;
.source "TNTSearchActivityView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ld/q/c/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->k()Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(J)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;->a()Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;->onEvaluation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
