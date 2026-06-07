.class public final Lsmartisan/widget/SettingsSwitchEx$c;
.super Ljava/lang/Object;
.source "SettingsSwitchEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SettingsSwitchEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SettingsSwitchEx;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SettingsSwitchEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SettingsSwitchEx$c;->a:Lsmartisan/widget/SettingsSwitchEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsmartisan/widget/SettingsSwitchEx;Lsmartisan/widget/SettingsSwitchEx$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/SettingsSwitchEx$c;-><init>(Lsmartisan/widget/SettingsSwitchEx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SettingsSwitchEx$c;->a:Lsmartisan/widget/SettingsSwitchEx;

    invoke-virtual {v0}, Lsmartisan/widget/SettingsSwitchEx;->performClick()Z

    return-void
.end method
