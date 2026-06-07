.class public Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$a;
.super Landroid/database/DataSetObserver;
.source "HeadersAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$a;->a:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper$a;->a:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;->a(Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersAdapterWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
