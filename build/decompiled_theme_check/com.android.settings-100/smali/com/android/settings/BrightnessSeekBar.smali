.class public Lcom/android/settings/BrightnessSeekBar;
.super Landroid/widget/RelativeLayout;
.source "BrightnessSeekBar.java"


# instance fields
.field private mSeekbar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/android/settings/BrightnessSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/BrightnessSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d007d

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a010a

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/settings/BrightnessSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/BrightnessSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public setBackground(I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessSeekBar;->setBackgroundResource(I)V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/BrightnessSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/android/settings/BrightnessSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 31
    iget-object p0, p0, Lcom/android/settings/BrightnessSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/BrightnessSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setSeekBarTag(Ljava/lang/Object;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/BrightnessSeekBar;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    return-void
.end method
