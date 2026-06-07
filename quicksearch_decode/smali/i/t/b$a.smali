.class public Li/t/b$a;
.super Ljava/lang/Object;
.source "ShadowComponent.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/t/b;


# direct methods
.method public constructor <init>(Li/t/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/t/b$a;->a:Li/t/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/t/b$a;->a:Li/t/b;

    invoke-static {v0}, Li/t/b;->a(Li/t/b;)V

    .line 2
    iget-object v0, p0, Li/t/b$a;->a:Li/t/b;

    invoke-static {v0}, Li/t/b;->b(Li/t/b;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Li/t/b$a;->a:Li/t/b;

    iget-object v1, v1, Li/t/b;->f:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    iget-object v0, p0, Li/t/b$a;->a:Li/t/b;

    invoke-virtual {v0}, Li/t/b;->f()V

    return-void
.end method
