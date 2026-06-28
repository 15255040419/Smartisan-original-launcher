.class Lcom/android/settings/widget/LabeledSeekBar$1;
.super Ljava/lang/Object;
.source "LabeledSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/LabeledSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/LabeledSeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/LabeledSeekBar;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 120
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {p0, p2}, Lcom/android/settings/widget/LabeledSeekBar;->access$100(Lcom/android/settings/widget/LabeledSeekBar;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {p0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {p0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
