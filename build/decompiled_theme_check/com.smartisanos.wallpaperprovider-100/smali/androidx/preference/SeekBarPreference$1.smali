.class Landroidx/preference/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/SeekBarPreference;


# direct methods
.method constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .locals 0

    .line 74
    iput-object p1, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 77
    iget-object p3, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    iget-boolean p3, p3, Landroidx/preference/SeekBarPreference;->mUpdatesContinuously:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    iget-boolean p3, p3, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez p3, :cond_1

    .line 78
    :cond_0
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    iget p1, p0, Landroidx/preference/SeekBarPreference;->mMin:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->updateLabelValue(I)V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 87
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 92
    iget-object v0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 93
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    iget v1, v1, Landroidx/preference/SeekBarPreference;->mMin:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    iget v1, v1, Landroidx/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_0

    .line 94
    iget-object p0, p0, Landroidx/preference/SeekBarPreference$1;->this$0:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
