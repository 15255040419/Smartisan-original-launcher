.class public Lcom/android/quicksearchbox/SearchActivity$g;
.super Landroid/os/Handler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$g;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$g;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/SearchActivity;->c(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$g;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/SearchActivity;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$g;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->D()V

    :cond_2
    :goto_0
    return-void
.end method
