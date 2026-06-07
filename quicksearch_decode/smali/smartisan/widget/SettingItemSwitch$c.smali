.class public Lsmartisan/widget/SettingItemSwitch$c;
.super Ljava/lang/Object;
.source "SettingItemSwitch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lsmartisan/widget/SettingItemSwitch$c;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SettingItemSwitch$c;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-static {p1}, Lsmartisan/widget/SettingItemSwitch;->a(Lsmartisan/widget/SettingItemSwitch;)Z

    move-result p1

    return p1
.end method
