.class public Lcom/android/quicksearchbox/SearchActivity$b;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->g(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

.field public final synthetic b:J

.field public final synthetic c:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$b;->c:Lcom/android/quicksearchbox/SearchActivity;

    iput-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$b;->a:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iput-wide p3, p0, Lcom/android/quicksearchbox/SearchActivity$b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$b;->c:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$b;->a:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    iget-wide v0, p0, Lcom/android/quicksearchbox/SearchActivity$b;->b:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->f(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    return-void
.end method
