.class public Lcom/android/settings/widget/LabeledSeekBar;
.super Landroid/widget/SeekBar;
.source "LabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;
    }
.end annotation


# instance fields
.field private final mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

.field private mLabels:[Ljava/lang/String;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    new-instance p1, Lcom/android/settings/widget/LabeledSeekBar$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/LabeledSeekBar$1;-><init>(Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 63
    new-instance p1, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;-><init>(Lcom/android/settings/widget/LabeledSeekBar;Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    .line 64
    iget-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/LabeledSeekBar;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBar;->sendClickEventForAccessibility(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mLabels:[Ljava/lang/String;

    return-object p0
.end method

.method private sendClickEventForAccessibility(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 98
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setLabels([Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mLabels:[Ljava/lang/String;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
