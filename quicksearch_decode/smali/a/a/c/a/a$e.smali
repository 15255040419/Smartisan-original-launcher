.class public La/a/c/a/a$e;
.super La/a/c/a/a$g;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/animation/ObjectAnimator;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, La/a/c/a/a$g;-><init>(La/a/c/a/a$a;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eqz p2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v3

    .line 3
    :goto_1
    new-instance v4, La/a/c/a/a$f;

    invoke-direct {v4, p1, p2}, La/a/c/a/a$f;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v2, p2, v1

    aput v0, p2, v3

    const-string v0, "currentIndex"

    .line 4
    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_2

    .line 6
    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 7
    :cond_2
    invoke-virtual {v4}, La/a/c/a/a$f;->a()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iput-boolean p3, p0, La/a/c/a/a$e;->b:Z

    .line 10
    iput-object p1, p0, La/a/c/a/a$e;->a:Landroid/animation/ObjectAnimator;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/a/c/a/a$e;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/c/a/a$e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/c/a/a$e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/c/a/a$e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method
