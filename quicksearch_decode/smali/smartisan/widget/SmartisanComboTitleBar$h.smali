.class public Lsmartisan/widget/SmartisanComboTitleBar$h;
.super Ljava/lang/Object;
.source "SmartisanComboTitleBar.java"

# interfaces
.implements Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanComboTitleBar;->c(I[Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar$h;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeLeftClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$h;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->f(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$h;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->f(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;

    move-result-object v0

    invoke-interface {v0}, Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;->onRangeLeftClickListener()V

    :cond_0
    return-void
.end method

.method public onRangeRightClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$h;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->f(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar$h;->a:Lsmartisan/widget/SmartisanComboTitleBar;

    invoke-static {v0}, Lsmartisan/widget/SmartisanComboTitleBar;->f(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;

    move-result-object v0

    invoke-interface {v0}, Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;->onRangeRightClickListener()V

    :cond_0
    return-void
.end method
