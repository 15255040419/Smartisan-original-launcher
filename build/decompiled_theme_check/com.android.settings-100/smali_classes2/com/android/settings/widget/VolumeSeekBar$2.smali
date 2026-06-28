.class Lcom/android/settings/widget/VolumeSeekBar$2;
.super Landroid/preference/SeekBarVolumizer;
.source "VolumeSeekBar.java"


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
.method constructor <init>(Lcom/android/settings/widget/VolumeSeekBar;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/widget/VolumeSeekBar$2;->this$0:Lcom/android/settings/widget/VolumeSeekBar;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarVolumizer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/widget/VolumeSeekBar$2;->stopSample()V

    return-void
.end method
