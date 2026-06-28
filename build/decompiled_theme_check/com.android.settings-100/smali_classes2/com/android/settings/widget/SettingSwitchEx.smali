.class public Lcom/android/settings/widget/SettingSwitchEx;
.super Lsmartisanos/widget/SwitchEx;
.source "SettingSwitchEx.java"


# instance fields
.field private mDisableReasonStringId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lsmartisanos/widget/SwitchEx;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lsmartisanos/widget/SwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lsmartisanos/widget/SwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingSwitchEx;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/widget/SettingSwitchEx;->mDisableReasonStringId:I

    if-lez v0, :cond_0

    .line 37
    invoke-static {v0}, Lcom/android/settings/ToastUtils;->show(I)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lsmartisanos/widget/SwitchEx;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setSwitchDisabledTips(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/android/settings/widget/SettingSwitchEx;->mDisableReasonStringId:I

    return-void
.end method
