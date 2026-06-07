.class public Lsmartisan/widget/SwitchEx$a;
.super Ljava/lang/Object;
.source "SwitchEx.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SwitchEx;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SwitchEx;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SwitchEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SwitchEx$a;->a:Lsmartisan/widget/SwitchEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SwitchEx$a;->a:Lsmartisan/widget/SwitchEx;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lsmartisan/widget/SwitchEx;->a(Lsmartisan/widget/SwitchEx;I)I

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SwitchEx$a;->a:Lsmartisan/widget/SwitchEx;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method
