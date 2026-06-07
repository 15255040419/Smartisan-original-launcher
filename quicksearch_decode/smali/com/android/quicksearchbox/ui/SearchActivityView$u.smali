.class public Lcom/android/quicksearchbox/ui/SearchActivityView$u;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "u"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$u;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$u;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-boolean v1, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->d:Z

    if-eq p1, v1, :cond_1

    .line 3
    iput-boolean p1, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->d:Z

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j(Z)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$u;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-boolean v0, p1, Lcom/android/quicksearchbox/ui/SearchActivityView;->y:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p1, Lcom/android/quicksearchbox/ui/SearchActivityView;->z:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;->onQueryChanged()V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
