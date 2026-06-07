.class public final La/i/a/a$b;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Landroidx/customview/widget/FocusStrategy$CollectionAdapter;


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
        "Landroidx/customview/widget/FocusStrategy$CollectionAdapter<",
        "La/d/h<",
        "La/g/h/n/c;",
        ">;",
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
.method public a(La/d/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d/h<",
            "La/g/h/n/c;",
            ">;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, La/d/h;->c()I

    move-result p1

    return p1
.end method

.method public a(La/d/h;I)La/g/h/n/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/d/h<",
            "La/g/h/n/c;",
            ">;I)",
            "La/g/h/n/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, La/d/h;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/g/h/n/c;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, La/d/h;

    invoke-virtual {p0, p1, p2}, La/i/a/a$b;->a(La/d/h;I)La/g/h/n/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, La/d/h;

    invoke-virtual {p0, p1}, La/i/a/a$b;->a(La/d/h;)I

    move-result p1

    return p1
.end method
