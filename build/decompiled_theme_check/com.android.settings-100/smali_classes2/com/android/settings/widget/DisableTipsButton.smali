.class public Lcom/android/settings/widget/DisableTipsButton;
.super Landroid/widget/Button;
.source "DisableTipsButton.java"


# instance fields
.field private mTips:Ljava/lang/CharSequence;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/DisableTipsButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/settings/widget/DisableTipsButton;->mTips:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/settings/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDisableTips(I)V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/widget/DisableTipsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/DisableTipsButton;->mTips:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDisableTips(Ljava/lang/CharSequence;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/widget/DisableTipsButton;->mTips:Ljava/lang/CharSequence;

    return-void
.end method
