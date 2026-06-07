.class public La/a/a/h$b;
.super La/g/h/l;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/h;


# direct methods
.method public constructor <init>(La/a/a/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/a/h$b;->a:La/a/a/h;

    invoke-direct {p0}, La/g/h/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, La/a/a/h$b;->a:La/a/a/h;

    const/4 v0, 0x0

    iput-object v0, p1, La/a/a/h;->v:La/a/e/f;

    .line 2
    iget-object p1, p1, La/a/a/h;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
