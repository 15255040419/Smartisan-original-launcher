.class public Lsmartisan/widget/SettingItemSwitch$d;
.super Landroid/os/Handler;
.source "SettingItemSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SettingItemSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsmartisan/widget/SettingItemSwitch$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SettingItemSwitch$d;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/SettingItemSwitch;

    :goto_0
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lsmartisan/widget/SettingItemSwitch;->a(Lsmartisan/widget/SettingItemSwitch;Z)Z

    :cond_3
    :goto_1
    return-void
.end method
