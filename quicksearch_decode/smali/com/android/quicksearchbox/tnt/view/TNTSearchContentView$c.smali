.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$c;
.super Ljava/lang/Object;
.source "TNTSearchContentView.kt"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$c;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/quicksearchbox/ui/SuggestionsListView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/quicksearchbox/ui/SuggestionsListView;

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$c;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->getSuggestionsAdapter()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SuggestionsListView;->getSelectedItemId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;JI)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView$c;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
