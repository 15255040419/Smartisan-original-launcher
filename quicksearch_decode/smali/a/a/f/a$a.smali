.class public La/a/f/a$a;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:La/a/f/a;


# direct methods
.method public constructor <init>(La/a/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/f/a$a;->c:La/a/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, La/a/f/a$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(La/g/h/k;I)La/a/f/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, La/a/f/a$a;->c:La/a/f/a;

    iput-object p1, v0, La/a/f/a;->f:La/g/h/k;

    .line 2
    iput p2, p0, La/a/f/a$a;->b:I

    return-object p0
.end method

.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, La/a/f/a$a;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, La/a/f/a$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, La/a/f/a$a;->c:La/a/f/a;

    const/4 v0, 0x0

    iput-object v0, p1, La/a/f/a;->f:La/g/h/k;

    .line 3
    iget v0, p0, La/a/f/a$a;->b:I

    invoke-static {p1, v0}, La/a/f/a;->b(La/a/f/a;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/a/f/a$a;->c:La/a/f/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/a/f/a;->a(La/a/f/a;I)V

    .line 2
    iput-boolean v0, p0, La/a/f/a$a;->a:Z

    return-void
.end method
