.class public Lcom/android/quicksearchbox/ui/SearchActivityView$x;
.super Landroid/database/DataSetObserver;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "x"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$x;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$x;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->C()V

    return-void
.end method
