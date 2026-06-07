.class public final Landroidx/core/view/ViewCompat$a;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/core/view/OnApplyWindowInsetsListener;


# direct methods
.method public constructor <init>(Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/ViewCompat$a;->a:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-static {p2}, La/g/h/m;->a(Ljava/lang/Object;)La/g/h/m;

    move-result-object p2

    .line 2
    iget-object v0, p0, Landroidx/core/view/ViewCompat$a;->a:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-interface {v0, p1, p2}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;La/g/h/m;)La/g/h/m;

    move-result-object p1

    .line 3
    invoke-static {p1}, La/g/h/m;->a(La/g/h/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
