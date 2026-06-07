.class public final La/i/a/a$a;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Landroidx/customview/widget/FocusStrategy$BoundsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/i/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<",
        "La/g/h/n/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/g/h/n/c;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, La/g/h/n/c;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    check-cast p1, La/g/h/n/c;

    invoke-virtual {p0, p1, p2}, La/i/a/a$a;->a(La/g/h/n/c;Landroid/graphics/Rect;)V

    return-void
.end method
