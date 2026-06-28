.class public Lcom/android/settings/widget/VolumeSeekBar;
.super Lsmartisanos/widget/SliderWithIcons;
.source "VolumeSeekBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStream:I

.field private mVolumizer:Landroid/preference/SeekBarVolumizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/android/settings/widget/VolumeSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/VolumeSeekBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/VolumeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/VolumeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lsmartisanos/widget/SliderWithIcons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/widget/VolumeSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VolumeSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/VolumeSeekBar;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/android/settings/widget/VolumeSeekBar;->mStream:I

    return p0
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/widget/VolumeSeekBar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f11000b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public initVolumizer()V
    .locals 7

    .line 48
    new-instance v5, Lcom/android/settings/widget/VolumeSeekBar$1;

    invoke-direct {v5, p0}, Lcom/android/settings/widget/VolumeSeekBar$1;-><init>(Lcom/android/settings/widget/VolumeSeekBar;)V

    .line 64
    iget v0, p0, Lcom/android/settings/widget/VolumeSeekBar;->mStream:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/VolumeSeekBar;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 65
    new-instance v6, Lcom/android/settings/widget/VolumeSeekBar$2;

    invoke-virtual {p0}, Lcom/android/settings/widget/VolumeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/widget/VolumeSeekBar;->mStream:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/VolumeSeekBar$2;-><init>(Lcom/android/settings/widget/VolumeSeekBar;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v6, p0, Lcom/android/settings/widget/VolumeSeekBar;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/VolumeSeekBar;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer;->setAnimateProgressEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/widget/VolumeSeekBar;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/widget/VolumeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 76
    iget-object v1, p0, Lcom/android/settings/widget/VolumeSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/widget/VolumeSeekBar;->mStream:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMin(I)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/widget/VolumeSeekBar;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v1, p0, Lcom/android/settings/widget/VolumeSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 78
    sget-object v0, Lcom/android/settings/widget/VolumeSeekBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/widget/VolumeSeekBar;->mStream:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/widget/VolumeSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/widget/VolumeSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/widget/VolumeSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStream(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/settings/widget/VolumeSeekBar;->mStream:I

    return-void
.end method

.method public startSample()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/widget/VolumeSeekBar;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->startSample()V

    :cond_0
    return-void
.end method

.method public stopSample()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/widget/VolumeSeekBar;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

.method public stopVolumizer()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/widget/VolumeSeekBar;->mVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stop()V

    :cond_0
    return-void
.end method
