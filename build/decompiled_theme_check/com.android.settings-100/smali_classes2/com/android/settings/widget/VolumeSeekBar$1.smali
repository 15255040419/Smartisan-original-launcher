.class Lcom/android/settings/widget/VolumeSeekBar$1;
.super Ljava/lang/Object;
.source "VolumeSeekBar.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/VolumeSeekBar;->initVolumizer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/VolumeSeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/VolumeSeekBar;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/widget/VolumeSeekBar$1;->this$0:Lcom/android/settings/widget/VolumeSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/android/settings/widget/VolumeSeekBar$1;->this$0:Lcom/android/settings/widget/VolumeSeekBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/VolumeSeekBar;->stopSample()V

    .line 53
    iget-object p1, p0, Lcom/android/settings/widget/VolumeSeekBar$1;->this$0:Lcom/android/settings/widget/VolumeSeekBar;

    invoke-static {p1}, Lcom/android/settings/widget/VolumeSeekBar;->access$000(Lcom/android/settings/widget/VolumeSeekBar;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p0, "A130017"

    .line 54
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/VolumeSeekBar$1;->this$0:Lcom/android/settings/widget/VolumeSeekBar;

    invoke-static {p0}, Lcom/android/settings/widget/VolumeSeekBar;->access$000(Lcom/android/settings/widget/VolumeSeekBar;)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    const-string p0, "A130018"

    .line 56
    invoke-static {p0}, Lcom/android/settings/SettingsTracker;->onEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
