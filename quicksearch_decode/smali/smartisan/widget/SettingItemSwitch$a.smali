.class public Lsmartisan/widget/SettingItemSwitch$a;
.super Ljava/lang/Object;
.source "SettingItemSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lsmartisan/widget/SettingItemSwitch$a;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SettingItemSwitch$a;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/SettingItemSwitch;->b(Lsmartisan/widget/SettingItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SettingItemSwitch$a;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->sendAccessibilityEvent(I)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SettingItemSwitch$a;->a:Lsmartisan/widget/SettingItemSwitch;

    invoke-static {v0}, Lsmartisan/widget/SettingItemSwitch;->b(Lsmartisan/widget/SettingItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    return-void
.end method
