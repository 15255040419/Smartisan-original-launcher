.class public Lcom/android/settings/widget/FloatingLabelSeekBar;
.super Landroid/widget/LinearLayout;
.source "FloatingLabelSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressingLabelFinder;,
        Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;,
        Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;,
        Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;
    }
.end annotation


# static fields
.field public static final DEFAULT_LABEL_FLOATING_DURATION:I = 0x12c

.field public static final DEFAULT_LABEL_FLOATING_MAX_HEIGHT:I = 0xf

.field public static final DEFAULT_LABEL_TEXT_SIZE_SP:I = 0xa


# instance fields
.field private mFloatingDuration:I

.field private mFloatingMaxHeight:I

.field private mLabelTextDownColor:I

.field private mLabelTextSize:F

.field private mLabelTextUpColor:I

.field private mLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelsContainer:Landroid/widget/LinearLayout;

.field private mLastFloatingUpLabel:Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

.field private mListener:Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;

.field private mProgressingLabelFinder:Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressingLabelFinder;

.field private mRealSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/FloatingLabelSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/FloatingLabelSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xf

    .line 32
    iput p2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mFloatingMaxHeight:I

    const/16 p2, 0x12c

    .line 33
    iput p2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mFloatingDuration:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 34
    iput p2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelTextSize:F

    const-string p2, "#9a000000"

    .line 36
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelTextUpColor:I

    const-string p2, "#66000000"

    .line 38
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelTextDownColor:I

    const/4 p2, 0x1

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/FloatingLabelSeekBar;->setOrientation(I)V

    const p2, 0x7f0d011e

    .line 59
    invoke-static {p1, p2, p0}, Lcom/android/settings/widget/FloatingLabelSeekBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a05d0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/smartisan/appbaselayer/quality/NullSafe;->nonNull(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0773

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    .line 62
    iget-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 63
    invoke-direct {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar;->setLabelsInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/widget/FloatingLabelSeekBar;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mFloatingMaxHeight:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/FloatingLabelSeekBar;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mFloatingDuration:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/widget/FloatingLabelSeekBar;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelTextSize:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/widget/FloatingLabelSeekBar;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelTextUpColor:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/widget/FloatingLabelSeekBar;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelTextDownColor:I

    return p0
.end method

.method private findLabelViewByProgress(I)Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mProgressingLabelFinder:Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressingLabelFinder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 235
    iget-object v4, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabels:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressingLabelFinder;->findLabelByProgress(Ljava/util/List;I)Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_4

    .line 240
    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    .line 241
    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->access$100(Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;)Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;

    move-result-object v4

    if-ne v4, p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v3, v0, :cond_4

    .line 247
    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    if-eqz v1, :cond_3

    .line 248
    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->access$100(Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;)Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->access$100(Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;)Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;->access$200(Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)I

    move-result v4

    if-ne v4, p1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method private setLabelsInternal()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabels:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;

    .line 73
    iget-object v2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;-><init>(Lcom/android/settings/widget/FloatingLabelSeekBar;Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 68
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateAllLabelsAppearance()V
    .locals 2

    const/4 v0, 0x0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    invoke-static {v1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->access$000(Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    return p0
.end method

.method public getProgress()I
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    return p0
.end method

.method public getRealSeekBar()Landroid/widget/SeekBar;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 161
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar;->getMax()I

    move-result p1

    .line 166
    iget-object p2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-lez p1, :cond_4

    if-gtz p2, :cond_0

    goto :goto_2

    .line 171
    :cond_0
    iget-object p3, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    .line 172
    iget-object p4, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p4}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result p4

    .line 173
    iget-object p5, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p5}, Landroid/widget/SeekBar;->getMeasuredWidth()I

    move-result p5

    mul-int/lit8 v0, p4, 0x2

    sub-int/2addr p5, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_4

    .line 176
    iget-object v2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    .line 177
    invoke-static {v2}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->access$100(Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;)Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->getMeasuredWidth()I

    move-result v4

    .line 183
    invoke-static {v3}, Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;->access$200(Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, p1

    div-float/2addr v3, v5

    int-to-float v5, p5

    mul-float/2addr v3, v5

    int-to-float v5, p4

    add-float/2addr v3, v5

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    if-gez v3, :cond_2

    move v3, v0

    :cond_2
    add-int v5, v3, v4

    if-le v5, p3, :cond_3

    sub-int v3, p3, v4

    move v5, p3

    .line 194
    :cond_3
    invoke-virtual {v2}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v3, v0, v5, v4}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->layout(IIII)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 200
    invoke-direct {p0, p2}, Lcom/android/settings/widget/FloatingLabelSeekBar;->findLabelViewByProgress(I)Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLastFloatingUpLabel:Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->floatingDown()V

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->floatingUp()V

    .line 207
    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLastFloatingUpLabel:Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLastFloatingUpLabel:Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    if-eqz p1, :cond_2

    .line 210
    invoke-virtual {p1}, Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;->floatingDown()V

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLastFloatingUpLabel:Lcom/android/settings/widget/FloatingLabelSeekBar$LabelView;

    .line 213
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mListener:Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;

    if-eqz p1, :cond_3

    .line 214
    invoke-interface {p1, p0, p2, p3}, Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;->onProgressChanged(Lcom/android/settings/widget/FloatingLabelSeekBar;IZ)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mListener:Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;

    if-eqz p1, :cond_0

    .line 221
    invoke-interface {p1, p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;->onStartTrackingTouch(Lcom/android/settings/widget/FloatingLabelSeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 227
    iget-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mListener:Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;

    if-eqz p1, :cond_0

    .line 228
    invoke-interface {p1, p0}, Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;->onStopTrackingTouch(Lcom/android/settings/widget/FloatingLabelSeekBar;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelFloatingDuration(I)V
    .locals 0

    if-gez p1, :cond_0

    const/16 p1, 0x12c

    .line 132
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mFloatingDuration:I

    return-void
.end method

.method public setLabelFloatingMaxHeight(I)V
    .locals 0

    if-gez p1, :cond_0

    const/16 p1, 0xf

    .line 125
    :cond_0
    iput p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mFloatingMaxHeight:I

    return-void
.end method

.method public setLabelTextColor(II)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelTextUpColor:I

    .line 137
    iput p2, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelTextDownColor:I

    .line 138
    invoke-direct {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar;->updateAllLabelsAppearance()V

    return-void
.end method

.method public setLabelTextSize(I)V
    .locals 0

    int-to-float p1, p1

    .line 149
    iput p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabelTextSize:F

    .line 150
    invoke-direct {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar;->updateAllLabelsAppearance()V

    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mLabels:Ljava/util/List;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/widget/FloatingLabelSeekBar;->setLabelsInternal()V

    return-void
.end method

.method public varargs setLabels([Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressLabel;)V
    .locals 0

    .line 79
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/FloatingLabelSeekBar;->setLabels(Ljava/util/List;)V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public setOnProgressChangeListener(Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mListener:Lcom/android/settings/widget/FloatingLabelSeekBar$onProgressChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressingLabelFinder(Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressingLabelFinder;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mProgressingLabelFinder:Lcom/android/settings/widget/FloatingLabelSeekBar$ProgressingLabelFinder;

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/settings/widget/FloatingLabelSeekBar;->mRealSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
