.class public Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;
.super Ljava/lang/Object;
.source "SuggestionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0801fc

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;->a:Landroid/widget/TextView;

    const p1, 0x7f080093

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a$a;->b:Landroid/view/View;

    return-void
.end method
