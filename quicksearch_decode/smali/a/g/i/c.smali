.class public final La/g/i/c;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# direct methods
.method public static a(Landroid/widget/EdgeEffect;FF)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_0
    return-void
.end method
