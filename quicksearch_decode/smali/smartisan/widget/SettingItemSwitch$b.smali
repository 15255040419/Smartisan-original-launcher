.class public Lsmartisan/widget/SettingItemSwitch$b;
.super Ljava/lang/Object;
.source "SettingItemSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SettingItemSwitch;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SettingItemSwitch;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SettingItemSwitch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SettingItemSwitch$b;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SettingItemSwitch$b;->a:Lsmartisan/widget/SettingItemSwitch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lsmartisan/widget/SettingItemSwitch;->a(Lsmartisan/widget/SettingItemSwitch;Z)Z

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SettingItemSwitch$b;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/SettingItemSwitch;->c(Lsmartisan/widget/SettingItemSwitch;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SettingItemSwitch$b;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/SettingItemSwitch;->c(Lsmartisan/widget/SettingItemSwitch;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SettingItemSwitch$b;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/SettingItemSwitch;->c(Lsmartisan/widget/SettingItemSwitch;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lsmartisan/widget/SettingItemSwitch$b;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lsmartisan/widget/SettingItemSwitch$b;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-static {v1}, Lsmartisan/widget/SettingItemSwitch;->c(Lsmartisan/widget/SettingItemSwitch;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SettingItemSwitch$b;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/SettingItemSwitch;->d(Lsmartisan/widget/SettingItemSwitch;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SettingItemSwitch$b;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/SettingItemSwitch;->d(Lsmartisan/widget/SettingItemSwitch;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
