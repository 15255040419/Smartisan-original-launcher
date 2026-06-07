.class public La/e/a/h/n;
.super La/e/a/h/o;
.source "ResolutionDimension.java"


# instance fields
.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, La/e/a/h/o;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/e/a/h/n;->c:F

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget v0, p0, La/e/a/h/o;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, La/e/a/h/n;->c:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    int-to-float p1, p1

    .line 2
    iput p1, p0, La/e/a/h/n;->c:F

    .line 3
    iget p1, p0, La/e/a/h/o;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, La/e/a/h/o;->b()V

    .line 5
    :cond_1
    invoke-virtual {p0}, La/e/a/h/o;->a()V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-super {p0}, La/e/a/h/o;->d()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/e/a/h/n;->c:F

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, La/e/a/h/o;->b:I

    return-void
.end method
