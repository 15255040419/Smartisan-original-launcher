.class public Lcom/android/settings/widget/TouchAreaTestView;
.super Landroid/widget/RelativeLayout;
.source "TouchAreaTestView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchAreaTestView"


# instance fields
.field private mTestTextView:Landroid/widget/TextView;

.field private mTouchAreaAnimView:Lcom/android/settings/widget/TouchAreaAnimView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/TouchAreaTestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/TouchAreaTestView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0307

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0088

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TouchAreaTestView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/TouchAreaAnimView;

    iput-object p1, p0, Lcom/android/settings/widget/TouchAreaTestView;->mTouchAreaAnimView:Lcom/android/settings/widget/TouchAreaAnimView;

    const p1, 0x7f0a0938

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TouchAreaTestView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/TouchAreaTestView;->mTestTextView:Landroid/widget/TextView;

    .line 31
    iget-object p1, p0, Lcom/android/settings/widget/TouchAreaTestView;->mTouchAreaAnimView:Lcom/android/settings/widget/TouchAreaAnimView;

    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaTestView;->mTestTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/TouchAreaAnimView;->setTargetTextView(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public cancelAnims()V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaTestView;->mTouchAreaAnimView:Lcom/android/settings/widget/TouchAreaAnimView;

    invoke-virtual {p0}, Lcom/android/settings/widget/TouchAreaAnimView;->cancelAnims()V

    return-void
.end method

.method public setTouchAreaType(I)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/widget/TouchAreaTestView;->mTouchAreaAnimView:Lcom/android/settings/widget/TouchAreaAnimView;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/TouchAreaAnimView;->setTouchAreaType(I)V

    return-void
.end method
