.class public final Lb/a/a/l1/d$b;
.super Ld/q/c/e;
.source "TNTSuggestionsListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/l1/d;-><init>(Lcom/android/quicksearchbox/tnt/TNTSearchActivity;Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Lcom/android/quicksearchbox/tnt/QueryFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/q/c/e;",
        "Lkotlin/jvm/functions/Function0<",
        "Ld/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lb/a/a/l1/d;


# direct methods
.method public constructor <init>(Lb/a/a/l1/d;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/l1/d$b;->b:Lb/a/a/l1/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld/q/c/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/l1/d$b;->invoke()V

    sget-object v0, Ld/j;->a:Ld/j;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lb/a/a/l1/d$b;->b:Lb/a/a/l1/d;

    invoke-static {v0}, Lb/a/a/l1/d;->b(Lb/a/a/l1/d;)Lb/a/a/l1/d$d;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/l1/d$d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/a/a/l1/d$b;->b:Lb/a/a/l1/d;

    invoke-static {v0}, Lb/a/a/l1/d;->a(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/l1/d$b;->b:Lb/a/a/l1/d;

    invoke-static {v1}, Lb/a/a/l1/d;->e(Lb/a/a/l1/d;)Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    move-result-object v1

    sget v2, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->getCorpusName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lb/a/a/l1/d$b;->b:Lb/a/a/l1/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/a/a/l1/d;->b(Z)V

    .line 5
    iget-object v0, p0, Lb/a/a/l1/d$b;->b:Lb/a/a/l1/d;

    invoke-static {v0}, Lb/a/a/l1/d;->b(Lb/a/a/l1/d;)Lb/a/a/l1/d$d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/a/a/l1/d$d;->a(Z)V

    :cond_0
    return-void
.end method
