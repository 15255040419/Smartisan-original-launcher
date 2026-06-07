.class public La/e/a/d;
.super La/e/a/b;
.source "GoalRow.java"


# direct methods
.method public constructor <init>(La/e/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La/e/a/b;-><init>(La/e/a/c;)V

    return-void
.end method


# virtual methods
.method public addError(La/e/a/g;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, La/e/a/b;->addError(La/e/a/g;)V

    .line 2
    iget v0, p1, La/e/a/g;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, La/e/a/g;->j:I

    return-void
.end method
