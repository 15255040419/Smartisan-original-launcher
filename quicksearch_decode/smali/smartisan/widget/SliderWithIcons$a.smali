.class public Lsmartisan/widget/SliderWithIcons$a;
.super Ljava/lang/Object;
.source "SliderWithIcons.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SliderWithIcons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SliderWithIcons;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SliderWithIcons;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SliderWithIcons$a;->a:Lsmartisan/widget/SliderWithIcons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons$a;->a:Lsmartisan/widget/SliderWithIcons;

    invoke-static {v0}, Lsmartisan/widget/SliderWithIcons;->a(Lsmartisan/widget/SliderWithIcons;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons$a;->a:Lsmartisan/widget/SliderWithIcons;

    invoke-static {v0}, Lsmartisan/widget/SliderWithIcons;->a(Lsmartisan/widget/SliderWithIcons;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons$a;->a:Lsmartisan/widget/SliderWithIcons;

    invoke-static {v0}, Lsmartisan/widget/SliderWithIcons;->a(Lsmartisan/widget/SliderWithIcons;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons$a;->a:Lsmartisan/widget/SliderWithIcons;

    invoke-static {v0}, Lsmartisan/widget/SliderWithIcons;->a(Lsmartisan/widget/SliderWithIcons;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons$a;->a:Lsmartisan/widget/SliderWithIcons;

    invoke-static {v0}, Lsmartisan/widget/SliderWithIcons;->a(Lsmartisan/widget/SliderWithIcons;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SliderWithIcons$a;->a:Lsmartisan/widget/SliderWithIcons;

    invoke-static {v0}, Lsmartisan/widget/SliderWithIcons;->a(Lsmartisan/widget/SliderWithIcons;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
