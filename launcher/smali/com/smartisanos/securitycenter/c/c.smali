.class public Lcom/smartisanos/securitycenter/c/c;
.super Ljava/lang/Object;
.source "Mediator.java"


# instance fields
.field private aA:Landroid/os/Vibrator;

.field private bA:Landroid/media/SoundPool;

.field private cA:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/securitycenter/c/c;->mContext:Landroid/content/Context;

    return-void
.end method

.method private Mx()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->bA:Landroid/media/SoundPool;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->bA:Landroid/media/SoundPool;

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/c/c;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private Nx()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->aA:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->aA:Landroid/os/Vibrator;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/c/c;->aA:Landroid/os/Vibrator;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public Ha(I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/c/c;->Mx()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->bA:Landroid/media/SoundPool;

    iget v1, p0, Lcom/smartisanos/securitycenter/c/c;->cA:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    move v4, v0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/c/c;->bA:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/c/c;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 5
    iget-object v1, p0, Lcom/smartisanos/securitycenter/c/c;->bA:Landroid/media/SoundPool;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/securitycenter/c/c;->cA:I

    return-void
.end method

.method public Ia(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/c/c;->Nx()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/c/c;->aA:Landroid/os/Vibrator;

    invoke-static {p1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public oj()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/securitycenter/c/c;->Ia(I)V

    return-void
.end method

.method public playPinKeyboardSound()V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/export/R$raw;->pin_key_sound:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/securitycenter/c/c;->Ha(I)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/c/c;->bA:Landroid/media/SoundPool;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method
