.class public La/a/f/k$b;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/f/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:La/a/f/k;


# direct methods
.method public constructor <init>(La/a/f/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/f/k$b;->a:La/a/f/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, La/a/f/k$b;->a:La/a/f/k;

    const/4 v1, 0x0

    iput-object v1, v0, La/a/f/k;->n:La/a/f/k$b;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/f/k$b;->a:La/a/f/k;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La/a/f/k$b;->a:La/a/f/k;

    const/4 v1, 0x0

    iput-object v1, v0, La/a/f/k;->n:La/a/f/k$b;

    .line 2
    invoke-virtual {v0}, La/a/f/k;->drawableStateChanged()V

    return-void
.end method
