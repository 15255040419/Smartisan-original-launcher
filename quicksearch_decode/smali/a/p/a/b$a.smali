.class public La/p/a/b$a;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/p/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/p/a/b$c;

.field public final synthetic b:La/p/a/b;


# direct methods
.method public constructor <init>(La/p/a/b;La/p/a/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/p/a/b$a;->b:La/p/a/b;

    iput-object p2, p0, La/p/a/b$a;->a:La/p/a/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, La/p/a/b$a;->b:La/p/a/b;

    iget-object v1, p0, La/p/a/b$a;->a:La/p/a/b$c;

    invoke-virtual {v0, p1, v1}, La/p/a/b;->b(FLa/p/a/b$c;)V

    .line 3
    iget-object v0, p0, La/p/a/b$a;->b:La/p/a/b;

    iget-object v1, p0, La/p/a/b$a;->a:La/p/a/b$c;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, La/p/a/b;->a(FLa/p/a/b$c;Z)V

    .line 4
    iget-object p1, p0, La/p/a/b$a;->b:La/p/a/b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
