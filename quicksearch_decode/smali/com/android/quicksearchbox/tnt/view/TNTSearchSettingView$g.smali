.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;
.super Ljava/lang/Object;
.source "TNTSearchSettingView.kt"

# interfaces
.implements Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keyList"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;

    move-result-object v0

    invoke-static {v0}, Lsmartisanos/util/UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;->a(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lsmartisanos/util/UIHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFail()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a()V

    return-void
.end method

.method public onProgress(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keyList"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "et_shortcut_key"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p1, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_container:I

    invoke-virtual {p1, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v1, "shortcut_key_container"

    invoke-static {p1, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keyList"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;

    move-result-object v0

    invoke-static {v0}, Lsmartisanos/util/UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Z)V

    return-void
.end method

.method public shouldListen()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_parent_container:I

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "shortcut_key_parent_container"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v0

    return v0
.end method
