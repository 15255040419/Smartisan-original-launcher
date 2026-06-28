.class public Lcom/android/settings/widget/NavigationBarPreview;
.super Landroid/widget/LinearLayout;
.source "NavigationBarPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/NavigationBarPreview$Callback;
    }
.end annotation


# static fields
.field public static final INDEX_CLASSIC_STYLE:I = 0x1

.field public static final INDEX_NARROW_STYLE:I = 0x0

.field public static final INDEX_THEME_BLACK_STYLE:I = 0x2

.field public static final INDEX_THEME_GRAY_STYLE:I = 0x3

.field public static final INDEX_THEME_RED_WINE_STYLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NavigationBarPreview"


# instance fields
.field private mBlackThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mCallback:Lcom/android/settings/widget/NavigationBarPreview$Callback;

.field private mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mDisableFrame:Landroid/widget/ImageView;

.field private mFrame:Landroid/widget/ImageView;

.field private mGrayThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mLastClickTime:J

.field private mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mPreview:Landroid/widget/ImageView;

.field private mRedWineThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/NavigationBarPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/NavigationBarPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const v0, 0x7f0d019c

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/NavigationBarPreview;->setOrientation(I)V

    const p1, 0x7f0a0646

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isNarrowModeNavBarSupport()Z

    move-result p2

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a03ef

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mTitleView:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const p1, 0x7f120cfa

    goto :goto_1

    :cond_1
    const p1, 0x7f120cfb

    .line 62
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->setTitle(I)V

    const p1, 0x7f0a040b

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mPreview:Landroid/widget/ImageView;

    const p1, 0x7f0a03c5

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mFrame:Landroid/widget/ImageView;

    const p1, 0x7f0a03c6

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mDisableFrame:Landroid/widget/ImageView;

    .line 66
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mFrame:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/settings/Utils;->getPhoneFrameResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f0a03f0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    .line 69
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a03eb

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    .line 73
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/PreviewOptionItemView;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    const p2, 0x7f080310

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/PreviewOptionItemView;->setItemImageRes(I)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    const p2, 0x7f08034d

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/PreviewOptionItemView;->setSelectedImageRes(I)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    const v0, 0x7f08030f

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/PreviewOptionItemView;->setItemImageRes(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/PreviewOptionItemView;->setSelectedImageRes(I)V

    const p1, 0x7f0a03ea

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mBlackThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    const p1, 0x7f0a03ec

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mGrayThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    const p1, 0x7f0a03f1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mRedWineThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    .line 85
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mBlackThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/PreviewOptionItemView;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mGrayThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mRedWineThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/PreviewOptionItemView;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mBlackThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mGrayThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mRedWineThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isWineRedNavigationBarSupport()Z

    move-result p1

    if-nez p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mRedWineThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/PreviewOptionItemView;->setVisibility(I)V

    const p1, 0x7f0a05a0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updatePreview(I)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mPreview:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const p1, 0x7f0800cd

    goto :goto_0

    :cond_0
    const p1, 0x7f0802fe

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public getOptionView(I)Lcom/android/settings/widget/PreviewOptionItemView;
    .locals 2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOptionView return null, index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavigationBarPreview"

    invoke-static {v0, p1}, Lsmartisanos/util/LogTag;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mRedWineThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    goto :goto_0

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mGrayThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    goto :goto_0

    .line 130
    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mBlackThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    goto :goto_0

    .line 127
    :cond_3
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    goto :goto_0

    .line 124
    :cond_4
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    :goto_0
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 166
    instance-of v0, p1, Lcom/android/settings/widget/PreviewOptionItemView;

    if-eqz v0, :cond_0

    .line 167
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PreviewOptionItemView;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    const-wide/16 v1, 0x12c

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mBlackThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mGrayThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mRedWineThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    if-ne p1, v0, :cond_6

    .line 181
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/settings/widget/NavigationBarPreview;->mLastClickTime:J

    sub-long/2addr v3, v5

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/widget/NavigationBarPreview;->mLastClickTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    return-void

    .line 186
    :cond_3
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mCallback:Lcom/android/settings/widget/NavigationBarPreview$Callback;

    if-eqz p0, :cond_6

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview$Callback;->onNavbarThemeChanged(I)V

    goto :goto_1

    .line 172
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/settings/widget/NavigationBarPreview;->mLastClickTime:J

    sub-long/2addr v3, v5

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/widget/NavigationBarPreview;->mLastClickTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_5

    return-void

    .line 177
    :cond_5
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mCallback:Lcom/android/settings/widget/NavigationBarPreview$Callback;

    if-eqz p0, :cond_6

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview$Callback;->onNavbarOptionsChanged(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setCallback(Lcom/android/settings/widget/NavigationBarPreview$Callback;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/widget/NavigationBarPreview;->mCallback:Lcom/android/settings/widget/NavigationBarPreview$Callback;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mDisableFrame:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/PreviewOptionItemView;->enableChildViews(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/PreviewOptionItemView;->enableChildViews(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mBlackThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/PreviewOptionItemView;->enableChildViews(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mGrayThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/PreviewOptionItemView;->enableChildViews(Z)V

    .line 156
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mRedWineThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PreviewOptionItemView;->enableChildViews(Z)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateViews(II)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mNarrowStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mClassicStyle:Lcom/android/settings/widget/PreviewOptionItemView;

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mBlackThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    if-nez p2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mGrayThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    if-ne p2, v2, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/widget/NavigationBarPreview;->mRedWineThemeView:Lcom/android/settings/widget/PreviewOptionItemView;

    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NavigationBarPreview;->updatePreview(I)V

    return-void
.end method
