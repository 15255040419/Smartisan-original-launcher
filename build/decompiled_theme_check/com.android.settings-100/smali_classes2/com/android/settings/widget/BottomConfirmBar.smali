.class public Lcom/android/settings/widget/BottomConfirmBar;
.super Landroid/widget/RelativeLayout;
.source "BottomConfirmBar.java"


# instance fields
.field private mApplyBtn:Landroid/widget/ImageView;

.field private mCancelBtn:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/BottomConfirmBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/BottomConfirmBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x10

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/BottomConfirmBar;->setGravity(I)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d007b

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f08009a

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const p2, 0x7f0a0176

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/BottomConfirmBar;->mCancelBtn:Landroid/widget/ImageView;

    const p2, 0x7f0a06c0

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/widget/BottomConfirmBar;->mApplyBtn:Landroid/widget/ImageView;

    const p2, 0x7f0a0961

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/BottomConfirmBar;->mTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setOnApplyListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/widget/BottomConfirmBar;->mApplyBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnCancelListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/widget/BottomConfirmBar;->mCancelBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/widget/BottomConfirmBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/widget/BottomConfirmBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
