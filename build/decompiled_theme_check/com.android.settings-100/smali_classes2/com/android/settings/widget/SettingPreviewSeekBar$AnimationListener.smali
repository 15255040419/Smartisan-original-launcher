.class Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;
.super Ljava/lang/Object;
.source "SettingPreviewSeekBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingPreviewSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationListener"
.end annotation


# instance fields
.field private index:I

.field private isAnimUp:Z

.field final synthetic this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SettingPreviewSeekBar;IZ)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput p2, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->index:I

    .line 335
    iput-boolean p3, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->isAnimUp:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 340
    iget-boolean p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->isAnimUp:Z

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    iget v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->index:I

    invoke-static {p1, v0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->access$000(Lcom/android/settings/widget/SettingPreviewSeekBar;I)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    invoke-static {p0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->access$100(Lcom/android/settings/widget/SettingPreviewSeekBar;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    iget v0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->index:I

    invoke-static {p1, v0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->access$000(Lcom/android/settings/widget/SettingPreviewSeekBar;I)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/widget/SettingPreviewSeekBar$AnimationListener;->this$0:Lcom/android/settings/widget/SettingPreviewSeekBar;

    invoke-static {p0}, Lcom/android/settings/widget/SettingPreviewSeekBar;->access$200(Lcom/android/settings/widget/SettingPreviewSeekBar;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
