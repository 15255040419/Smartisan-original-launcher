.class public Lb/a/a/l$b;
.super Lb/a/a/n1/v;
.source "CachingIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/n1/v<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/NowOrLater;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/NowOrLater<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lb/a/a/n1/v;-><init>(Lcom/android/quicksearchbox/util/NowOrLater;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1}, Lb/a/a/l$b;->a(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
