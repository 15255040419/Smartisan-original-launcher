.class public Lcom/android/quicksearchbox/ui/SearchActivityView$l;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$l;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$l;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$l;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-object v0, v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->B:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
