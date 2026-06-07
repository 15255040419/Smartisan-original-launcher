.class public final Lb/a/a/o1/c/a$a;
.super Ljava/lang/Object;
.source "AnimationUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/o1/c/a;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/o1/c/a$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/a/a/o1/c/a$a;->a:Landroid/view/View;

    new-instance v0, Lb/a/a/o1/c/a$a$a;

    invoke-direct {v0, p0}, Lb/a/a/o1/c/a$a$a;-><init>(Lb/a/a/o1/c/a$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
