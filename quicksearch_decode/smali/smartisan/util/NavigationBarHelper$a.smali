.class public final Lsmartisan/util/NavigationBarHelper$a;
.super Ljava/lang/Object;
.source "NavigationBarHelper.java"

# interfaces
.implements Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/util/NavigationBarHelper;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(ILandroid/view/View;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/util/NavigationBarHelper$a;->a:I

    iput-object p2, p0, Lsmartisan/util/NavigationBarHelper$a;->b:Landroid/view/View;

    iput-boolean p3, p0, Lsmartisan/util/NavigationBarHelper$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyNavigationBarStatusChange(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lsmartisan/util/NavigationBarHelper$a;->a:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 p1, 0x48

    :goto_0
    add-int/2addr v0, p1

    .line 2
    iget-object p1, p0, Lsmartisan/util/NavigationBarHelper$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lsmartisan/util/NavigationBarHelper$a;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lsmartisan/util/NavigationBarHelper$a;->b:Landroid/view/View;

    .line 3
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 4
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    iget-boolean p1, p0, Lsmartisan/util/NavigationBarHelper$a;->c:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lsmartisan/util/NavigationBarHelper$a;->b:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    return-void
.end method
