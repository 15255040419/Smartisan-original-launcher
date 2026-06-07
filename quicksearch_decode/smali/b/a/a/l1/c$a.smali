.class public final Lb/a/a/l1/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "TNTSuggestionsListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/l1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lb/a/a/l1/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lb/a/a/l1/c;


# direct methods
.method public constructor <init>(Lb/a/a/l1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->j(Lb/a/a/l1/c;)I

    move-result v0

    return v0
.end method

.method public a(Lb/a/a/l1/c$b;)V
    .locals 1

    const-string v0, "vh"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->b(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 33
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->g()I

    move-result p1

    invoke-static {v0, p1}, Lb/a/a/l1/c;->a(Lb/a/a/l1/c;I)V

    return-void
.end method

.method public a(Lb/a/a/l1/c$b;I)V
    .locals 9

    const-string v0, "vh"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-virtual {v1}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v2

    int-to-long v4, p2

    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    move v3, p2

    invoke-static/range {v1 .. v6}, Lb/a/a/l1/c;->a(Lb/a/a/l1/c;Lcom/android/quicksearchbox/SuggestionCursor;IJLandroid/view/View;)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    new-instance v1, Lb/a/a/l1/c$a$a;

    invoke-direct {v1, p0, p2}, Lb/a/a/l1/c$a$a;-><init>(Lb/a/a/l1/c$a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 4
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->s(Lb/a/a/l1/c;)Z

    move-result v0

    const-string v1, "vh.itemView.text_cmd"

    const-string v2, "vh.itemView"

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/smartisanos/quicksearch/R$id;->text_cmd:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v3}, Lb/a/a/l1/c;->b(Lb/a/a/l1/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lcom/smartisanos/quicksearch/R$id;->text_cmd:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v3}, Lb/a/a/l1/c;->a(Lb/a/a/l1/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->e(Lb/a/a/l1/c;)I

    move-result v0

    const/4 v3, 0x1

    const-string v4, "vh.itemView.tnt_suggestion_keyboard_shortcut_num"

    const-string v5, "vh.itemView.iv_right_more"

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-ne v0, v3, :cond_2

    .line 8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v8, Lcom/smartisanos/quicksearch/R$id;->text_cmd:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_suggestion_keyboard_shortcut_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v4}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/smartisanos/quicksearch/R$id;->iv_right_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/smartisanos/quicksearch/R$id;->iv_right_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v5}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_suggestion_keyboard_shortcut_num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v4}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v1}, Lb/a/a/l1/c;->l(Lb/a/a/l1/c;)I

    move-result v1

    add-int/lit8 v4, p2, 0x1

    .line 13
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    .line 16
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->i(Lb/a/a/l1/c;)I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_2

    .line 18
    :cond_2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p2, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setSelected(Z)V

    .line 19
    invoke-virtual {p1}, Lb/a/a/l1/c$b;->C()I

    move-result p2

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->q(Lb/a/a/l1/c;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 20
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p2, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/smartisanos/quicksearch/R$id;->text_cmd:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p2, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_suggestion_keyboard_shortcut_num:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v4}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p2, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/smartisanos/quicksearch/R$id;->text_cmd:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p2, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_suggestion_keyboard_shortcut_num:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v4}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    :goto_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p2, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/smartisanos/quicksearch/R$id;->iv_right_more:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_7

    .line 25
    invoke-virtual {p1}, Lb/a/a/l1/c$b;->C()I

    move-result p2

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->p(Lb/a/a/l1/c;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 26
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/smartisanos/quicksearch/R$id;->iv_right_more:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v5}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {p1}, Lb/a/a/l1/c$b;->C()I

    move-result p2

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->q(Lb/a/a/l1/c;)I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 28
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    const v0, 0x7f080090

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    .line 29
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/smartisanos/quicksearch/R$id;->iv_right_more:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v5}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 30
    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/smartisanos/quicksearch/R$id;->iv_right_more:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v5}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 31
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {p1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/smartisanos/quicksearch/R$id;->iv_right_more:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v5}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public b(I)I
    .locals 2

    .line 4
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-virtual {v0}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lb/a/a/l1/c;->a(Lb/a/a/l1/c;Lcom/android/quicksearchbox/SuggestionCursor;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "tnt_application_calculator"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->o(Lb/a/a/l1/c;)I

    move-result p1

    goto :goto_1

    :sswitch_1
    const-string v0, "appstore"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->n(Lb/a/a/l1/c;)I

    move-result p1

    goto :goto_1

    :sswitch_2
    const-string v0, "suggestion_web"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->r(Lb/a/a/l1/c;)I

    move-result p1

    goto :goto_1

    :sswitch_3
    const-string v0, "tnt_application_suggestion"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->m(Lb/a/a/l1/c;)I

    move-result p1

    goto :goto_1

    :sswitch_4
    const-string v0, "settingSwitch"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->q(Lb/a/a/l1/c;)I

    move-result p1

    goto :goto_1

    :sswitch_5
    const-string v0, "tnt_file_suggestion"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->p(Lb/a/a/l1/c;)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73ff785e -> :sswitch_5
        -0x59504a5c -> :sswitch_4
        -0x26cbfb08 -> :sswitch_3
        -0x32bdd67 -> :sswitch_2
        0x46b5ab60 -> :sswitch_1
        0x4df3a5f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$u;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/c$a;->b(Landroid/view/ViewGroup;I)Lb/a/a/l1/c$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Lb/a/a/l1/c$b;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->o(Lb/a/a/l1/c;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->c(Lb/a/a/l1/c;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b00af

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->m(Lb/a/a/l1/c;)I

    move-result v0

    const v2, 0x7f0b00ad

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->c(Lb/a/a/l1/c;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->q(Lb/a/a/l1/c;)I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->c(Lb/a/a/l1/c;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b00b3

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->n(Lb/a/a/l1/c;)I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->c(Lb/a/a/l1/c;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0020

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->p(Lb/a/a/l1/c;)I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->c(Lb/a/a/l1/c;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b00b1

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_4
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->r(Lb/a/a/l1/c;)I

    move-result v0

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->c(Lb/a/a/l1/c;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b00b6

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->c(Lb/a/a/l1/c;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 18
    :goto_0
    new-instance v0, Lb/a/a/l1/c$b;

    const-string v1, "view"

    invoke-static {p1, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2}, Lb/a/a/l1/c$b;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    .line 3
    check-cast p1, Lb/a/a/l1/c$b;

    invoke-virtual {p0, p1}, Lb/a/a/l1/c$a;->a(Lb/a/a/l1/c$b;)V

    return-void
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 0

    .line 1
    check-cast p1, Lb/a/a/l1/c$b;

    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/c$a;->a(Lb/a/a/l1/c$b;I)V

    return-void
.end method

.method public b(Lb/a/a/l1/c$b;)V
    .locals 3

    const-string v0, "vh"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->c(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 20
    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u;->g()I

    move-result p1

    invoke-static {v0, p1}, Lb/a/a/l1/c;->b(Lb/a/a/l1/c;I)V

    .line 21
    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->d(Lb/a/a/l1/c;)I

    move-result p1

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->g(Lb/a/a/l1/c;)I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_1

    .line 22
    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->g(Lb/a/a/l1/c;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->d(Lb/a/a/l1/c;)I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 23
    :goto_0
    iget-object v1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v1}, Lb/a/a/l1/c;->h(Lb/a/a/l1/c;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lcom/smartisanos/quicksearch/R$id;->tnt_suggestion_keyboard_shortcut_num:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 24
    iget-object v2, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v2}, Lb/a/a/l1/c;->g(Lb/a/a/l1/c;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eq p1, v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->g(Lb/a/a/l1/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    invoke-static {p1, v0}, Lb/a/a/l1/c;->a(Lb/a/a/l1/c;I)V

    .line 26
    iget-object p1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {p1}, Lb/a/a/l1/c;->d(Lb/a/a/l1/c;)I

    move-result p1

    iget-object v0, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v0}, Lb/a/a/l1/c;->g(Lb/a/a/l1/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_3

    .line 27
    :goto_1
    iget-object v1, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v1}, Lb/a/a/l1/c;->h(Lb/a/a/l1/c;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v2, Lcom/smartisanos/quicksearch/R$id;->tnt_suggestion_keyboard_shortcut_num:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lb/a/a/l1/c$a;->c:Lb/a/a/l1/c;

    invoke-static {v2}, Lb/a/a/l1/c;->d(Lb/a/a/l1/c;)I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eq p1, v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    .line 1
    check-cast p1, Lb/a/a/l1/c$b;

    invoke-virtual {p0, p1}, Lb/a/a/l1/c$a;->b(Lb/a/a/l1/c$b;)V

    return-void
.end method
