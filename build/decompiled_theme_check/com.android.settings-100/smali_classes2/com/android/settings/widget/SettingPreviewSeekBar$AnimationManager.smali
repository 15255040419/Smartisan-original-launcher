.class Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;
.super Ljava/lang/Object;
.source "SettingPreviewSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingPreviewSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationManager"
.end annotation


# instance fields
.field indexUp:I

.field mContext:Landroid/content/Context;

.field pushDown:[Landroid/view/animation/Animation;

.field pushUp:[Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SettingPreviewSeekBar;Landroid/content/Context;)V
    .locals 5

    .line 299
    iput-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/animation/Animation;

    .line 295
    iput-object v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->pushUp:[Landroid/view/animation/Animation;

    new-array v1, v0, [Landroid/view/animation/Animation;

    .line 296
    iput-object v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->pushDown:[Landroid/view/animation/Animation;

    const/4 v1, -0x1

    .line 297
    iput v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->indexUp:I

    .line 300
    iput-object p2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->pushUp:[Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f010029

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v2, v1

    .line 303
    iget-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->pushDown:[Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f010028

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    aput-object v3, v2, v1

    .line 305
    iget-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->pushUp:[Landroid/view/animation/Animation;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 306
    iget-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->pushUp:[Landroid/view/animation/Animation;

    aget-object v2, v2, v1

    new-instance v4, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;

    invoke-direct {v4, p1, v1, v3}, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;-><init>(Lcom/android/settings/widget/SettingPreviewSeekBar;IZ)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 307
    iget-object v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->pushDown:[Landroid/view/animation/Animation;

    aget-object v2, v2, v1

    new-instance v3, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;

    invoke-direct {v3, p1, v1, p2}, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;-><init>(Lcom/android/settings/widget/SettingPreviewSeekBar;IZ)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private progress2AnimTrigger(I)I
    .locals 0

    return p1
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 3

    .line 312
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->progress2AnimTrigger(I)I

    move-result p1

    .line 313
    iget v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->indexUp:I

    if-eq v0, p1, :cond_1

    if-ltz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    invoke-static {v1, v0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->access$000(Lcom/android/settings/widget/SettingPreviewSeekBar;I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->pushDown:[Landroid/view/animation/Animation;

    iget v2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->indexUp:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    iget v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->indexUp:I

    invoke-static {v0, v1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->access$000(Lcom/android/settings/widget/SettingPreviewSeekBar;I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->access$100(Lcom/android/settings/widget/SettingPreviewSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    invoke-static {v0, p1}, Lcom/android/settings/widget/SettingPreviewSeekBar;->access$000(Lcom/android/settings/widget/SettingPreviewSeekBar;I)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->pushUp:[Landroid/view/animation/Animation;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 319
    iput p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationManager;->indexUp:I

    :cond_1
    return-void
.end method
