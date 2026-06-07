.class public Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a$a;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "Animatable2Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;->a()Landroid/graphics/drawable/Animatable2$AnimationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;


# direct methods
.method public constructor <init>(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a$a;->a:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a$a;->a:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a$a;->a:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;

    invoke-virtual {v0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$a;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
