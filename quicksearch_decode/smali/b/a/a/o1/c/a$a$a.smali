.class public Lb/a/a/o1/c/a$a$a;
.super Ljava/lang/Object;
.source "AnimationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/o1/c/a$a;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/o1/c/a$a;


# direct methods
.method public constructor <init>(Lb/a/a/o1/c/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/o1/c/a$a$a;->a:Lb/a/a/o1/c/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/o1/c/a$a$a;->a:Lb/a/a/o1/c/a$a;

    iget-object v0, v0, Lb/a/a/o1/c/a$a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
