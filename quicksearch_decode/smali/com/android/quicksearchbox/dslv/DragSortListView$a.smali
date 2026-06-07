.class public Lcom/android/quicksearchbox/dslv/DragSortListView$a;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lcom/android/quicksearchbox/dslv/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/dslv/DragSortListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$a;->a:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/quicksearchbox/dslv/DragSortListView$a;->a:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-static {p2}, Lcom/android/quicksearchbox/dslv/DragSortListView;->a(Lcom/android/quicksearchbox/dslv/DragSortListView;)F

    move-result p2

    mul-float/2addr p2, p1

    return p2
.end method
