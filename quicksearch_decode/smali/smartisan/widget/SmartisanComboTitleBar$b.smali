.class public Lsmartisan/widget/SmartisanComboTitleBar$b;
.super Landroid/os/Handler;
.source "SmartisanComboTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/SmartisanComboTitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SmartisanComboTitleBar;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SmartisanComboTitleBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$b;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$b;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {p1}, Lsmartisan/widget/SmartisanComboTitleBar;->a(Lsmartisan/widget/SmartisanComboTitleBar;)V

    return-void
.end method
