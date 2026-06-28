.class public Lcom/android/settings/widget/SettingsBottomExtraView;
.super Landroid/widget/LinearLayout;
.source "SettingsBottomExtraView.java"


# static fields
.field public static final NAVBAR_GESTURE_MODE:I = 0x1

.field public static final NAVBAR_KEY_NORMAL_MODE:I = 0x0

.field public static final NAVBAR_VIRTUAL_KEY_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SettingsBottomExtraView"


# instance fields
.field private mAddPadding:I

.field private mListParent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/SettingsBottomExtraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/SettingsBottomExtraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/settings/widget/SettingsBottomExtraView;->mListParent:Z

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/SettingsBottomExtraView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SettingsBottomExtraView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/settings/widget/SettingsBottomExtraView;->mAddPadding:I

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 46
    sget-object v0, Lcom/android/settings/R$styleable;->BottomExtraView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 47
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/settings/widget/SettingsBottomExtraView;->mListParent:Z

    .line 48
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07029c

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/SettingsBottomExtraView;->mAddPadding:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 55
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsBottomExtraView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 57
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    .line 60
    instance-of v2, v1, Landroid/widget/ScrollView;

    if-nez v2, :cond_2

    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsBottomExtraView;->mListParent:Z

    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    if-nez v1, :cond_4

    const-string p0, "SettingsBottomExtraView"

    const-string v0, "list parent is null , can\'t be set padding"

    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    iget v2, p0, Lcom/android/settings/widget/SettingsBottomExtraView;->mAddPadding:I

    if-lt v0, v2, :cond_5

    return-void

    .line 71
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SettingsBottomExtraView;->setBottomPaddingWhenNavigationBarStatusChange(Landroid/view/ViewGroup;)V

    return-void

    .line 80
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/SettingsBottomExtraView;->mAddPadding:I

    if-lt v1, v2, :cond_7

    return-void

    .line 83
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsBottomExtraView;->setBottomPaddingWhenNavigationBarStatusChange(Landroid/view/ViewGroup;)V

    :cond_8
    return-void
.end method

.method public setBottomPaddingWhenNavigationBarStatusChange(Landroid/view/ViewGroup;)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    .line 89
    new-instance v1, Lcom/android/settings/widget/SettingsBottomExtraView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/widget/SettingsBottomExtraView$1;-><init>(Lcom/android/settings/widget/SettingsBottomExtraView;ILandroid/view/ViewGroup;)V

    const/4 p0, 0x1

    invoke-static {p1, v1, p0}, Lsmartisanos/util/NavigationBarHelper;->setAutoAdapterNavigationBarEnabled(Landroid/view/View;Lsmartisanos/util/NavigationBarHelper$NavigationBarStatusListener;Z)V

    return-void
.end method
