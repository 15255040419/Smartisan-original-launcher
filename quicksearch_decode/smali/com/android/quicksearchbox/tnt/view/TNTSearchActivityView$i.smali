.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;
.super Ld/n/g/a/j;
.source "TNTSearchActivityView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Ld/n/g/a/d;
    c = "com.android.quicksearchbox.tnt.view.TNTSearchActivityView$setBlurBackground$1"
    f = "TNTSearchActivityView.kt"
    l = {
        0x199
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Landroid/app/Activity;Landroid/graphics/Rect;)V
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

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

.field public final synthetic l:Landroid/app/Activity;

.field public final synthetic m:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Landroid/app/Activity;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->l:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->m:Landroid/graphics/Rect;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ld/n/g/a/j;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->j:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->i:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->h:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->g:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld/f;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    const-string v3, "activity.windowManager"

    invoke-static {v1, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const-string v3, "activity.windowManager.defaultDisplay"

    invoke-static {v1, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 5
    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->m:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060298

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060296

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const/4 v6, 0x0

    new-array v6, v6, [I

    .line 7
    invoke-static {v1, v3, v4, v5, v6}, Landroid/app/SmtPCUtils;->getDisplayBitmap(ILandroid/graphics/Rect;II[I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->l:Landroid/app/Activity;

    invoke-static {v3, v1}, Lb/a/a/c1/g/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const/16 v3, 0x14

    .line 9
    invoke-static {v3}, Lb/a/a/c1/g/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 10
    iget-object v4, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060294

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 11
    iget-object v5, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06028a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 12
    iget-object v6, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06028e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 13
    iget-object v7, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060289

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 14
    invoke-static {v3, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 15
    invoke-static {}, Le/a/n0;->b()Le/a/k1;

    move-result-object v5

    new-instance v6, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v4, v7}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i$a;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->g:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->h:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->i:Ljava/lang/Object;

    iput v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->j:I

    invoke-static {v5, v6, p0}, Le/a/d;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 16
    :cond_2
    :goto_0
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1

    .line 17
    :cond_3
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1

    .line 18
    :cond_4
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->k:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->l:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->m:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Landroid/app/Activity;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->e:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;

    sget-object p2, Ld/j;->a:Ld/j;

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
