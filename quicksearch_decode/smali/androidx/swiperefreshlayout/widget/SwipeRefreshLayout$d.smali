.class public Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$d;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$d;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$d;->a:I

    iput p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$d;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$d;->c:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:La/p/a/b;

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$d;->a:I

    int-to-float v1, v0

    iget v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$d;->b:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    invoke-virtual {p2, p1}, La/p/a/b;->setAlpha(I)V

    return-void
.end method
