.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$f;
.super Ljava/lang/Object;
.source "TNTSearchSettingView.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    sget v0, Lcom/smartisanos/quicksearch/R$id;->sw_sys_recommend_app:I

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/SwitchEx;

    const-string v0, "sw_sys_recommend_app"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lsmartisan/widget/SwitchEx;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)Lb/a/a/e0;

    move-result-object v0

    const-string v1, "enable_corpus_sys_recommend_apps"

    invoke-virtual {v0, v1}, Lb/a/a/e0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$f;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Z)V

    :cond_0
    return-void
.end method
