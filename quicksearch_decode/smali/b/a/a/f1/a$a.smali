.class public Lb/a/a/f1/a$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/f1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/f1/a;


# direct methods
.method public constructor <init>(Lb/a/a/f1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/f1/a$a;->a:Lb/a/a/f1/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lb/a/a/f1/a$a;->a:Lb/a/a/f1/a;

    invoke-static {p1}, Lb/a/a/f1/a;->a(Lb/a/a/f1/a;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lb/a/a/f1/a$a;->a:Lb/a/a/f1/a;

    invoke-static {p1}, Lb/a/a/f1/a;->b(Lb/a/a/f1/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lb/a/a/f1/a$a;->a:Lb/a/a/f1/a;

    invoke-static {p1}, Lb/a/a/f1/a;->c(Lb/a/a/f1/a;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result p1

    .line 3
    div-int/lit8 p1, p1, 0x5

    .line 4
    invoke-static {}, Lb/a/a/f1/a;->a()F

    move-result p4

    cmpl-float p4, p3, p4

    const/4 v0, 0x1

    if-lez p4, :cond_0

    .line 5
    iget-object p4, p0, Lb/a/a/f1/a$a;->a:Lb/a/a/f1/a;

    invoke-static {p4}, Lb/a/a/f1/a;->d(Lb/a/a/f1/a;)I

    move-result p4

    neg-int p1, p1

    if-le p4, p1, :cond_1

    .line 6
    iget-object p1, p0, Lb/a/a/f1/a$a;->a:Lb/a/a/f1/a;

    invoke-static {p1}, Lb/a/a/f1/a;->c(Lb/a/a/f1/a;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcom/android/quicksearchbox/dslv/DragSortListView;->b(ZF)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lb/a/a/f1/a;->a()F

    move-result p4

    neg-float p4, p4

    cmpg-float p4, p3, p4

    if-gez p4, :cond_1

    .line 8
    iget-object p4, p0, Lb/a/a/f1/a$a;->a:Lb/a/a/f1/a;

    invoke-static {p4}, Lb/a/a/f1/a;->d(Lb/a/a/f1/a;)I

    move-result p4

    if-ge p4, p1, :cond_1

    .line 9
    iget-object p1, p0, Lb/a/a/f1/a$a;->a:Lb/a/a/f1/a;

    invoke-static {p1}, Lb/a/a/f1/a;->c(Lb/a/a/f1/a;)Lcom/android/quicksearchbox/dslv/DragSortListView;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lcom/android/quicksearchbox/dslv/DragSortListView;->b(ZF)Z

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Lb/a/a/f1/a$a;->a:Lb/a/a/f1/a;

    invoke-static {p1, p2}, Lb/a/a/f1/a;->a(Lb/a/a/f1/a;Z)Z

    :cond_2
    return p2
.end method
