.class public Lcom/android/quicksearchbox/panels/widget/T9PanelView$a;
.super Ljava/lang/Object;
.source "T9PanelView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/panels/widget/T9PanelView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/panels/widget/T9PanelView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/panels/widget/T9PanelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/T9PanelView$a;->a:Lcom/android/quicksearchbox/panels/widget/T9PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/T9PanelView$a;->a:Lcom/android/quicksearchbox/panels/widget/T9PanelView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(Lcom/android/quicksearchbox/panels/widget/T9PanelView;)Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/T9PanelView$a;->a:Lcom/android/quicksearchbox/panels/widget/T9PanelView;

    invoke-static {p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->a(Lcom/android/quicksearchbox/panels/widget/T9PanelView;)Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;->onLongClickT9Panel()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
