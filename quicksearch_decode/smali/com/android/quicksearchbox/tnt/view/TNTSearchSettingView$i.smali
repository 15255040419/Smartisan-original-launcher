.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$i;
.super Ljava/lang/Object;
.source "TNTSearchSettingView.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b()V
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

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$i;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$i;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    sget p2, Lcom/smartisanos/quicksearch/R$id;->tnt_setting_source:I

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSettingSourceView;->b()V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$i;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    sget-object p2, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {p2}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Ljava/util/List;)V

    return-void
.end method
