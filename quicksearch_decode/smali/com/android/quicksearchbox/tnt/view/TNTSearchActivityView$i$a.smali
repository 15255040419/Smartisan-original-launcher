.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;
.super Ld/n/g/a/j;
.source "TNTSearchActivityView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld/n/g/a/d;
    c = "com.android.quicksearchbox.tnt.view.TNTSearchActivityView$setBlurBackground$1$1"
    f = "TNTSearchActivityView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->a(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/n/g/a/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ld/j;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lkotlinx/coroutines/CoroutineScope;

.field public f:I

.field public final synthetic g:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;

.field public final synthetic h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->g:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->h:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ld/n/g/a/j;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->f:I

    if-nez v0, :cond_0

    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->g:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;

    iget-object p1, p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_bar_blur:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Ld/j;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->g:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;

    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->h:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->e:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;

    sget-object p2, Ld/j;->a:Ld/j;

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
