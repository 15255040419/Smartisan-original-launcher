.class public final Lsmartisan/widget/SettingsSwitchEx$b;
.super Landroid/os/Handler;
.source "SettingsSwitchEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SettingsSwitchEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lsmartisan/widget/SettingsSwitchEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsmartisan/widget/SettingsSwitchEx;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsmartisan/widget/SettingsSwitchEx$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SettingsSwitchEx$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SettingsSwitchEx;

    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, p1, v1, v2}, Lsmartisan/widget/SettingsSwitchEx;->a(Lsmartisan/widget/SettingsSwitchEx;ZZZ)V

    :cond_0
    return-void
.end method
