.class public Lsmartisan/widget/SettingsSwitchEx$a;
.super Ljava/lang/Object;
.source "SettingsSwitchEx.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SettingsSwitchEx;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SettingsSwitchEx;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SettingsSwitchEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SettingsSwitchEx$a;->a:Lsmartisan/widget/SettingsSwitchEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SettingsSwitchEx$a;->a:Lsmartisan/widget/SettingsSwitchEx;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lsmartisan/widget/SettingsSwitchEx;->a(Lsmartisan/widget/SettingsSwitchEx;I)I

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SettingsSwitchEx$a;->a:Lsmartisan/widget/SettingsSwitchEx;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method
