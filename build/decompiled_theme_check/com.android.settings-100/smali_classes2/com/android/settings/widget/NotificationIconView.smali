.class public Lcom/android/settings/widget/NotificationIconView;
.super Landroid/widget/RelativeLayout;
.source "NotificationIconView.java"


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/widget/NotificationIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01b8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a036a

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/NotificationIconView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a067c

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/widget/NotificationIconView;->mNameView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/settings/notificationcustom/QuickWidget;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/widget/NotificationIconView;->mIcon:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/settings/notificationcustom/QuickWidget;->imageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/widget/NotificationIconView;->mNameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/notificationcustom/QuickWidget;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/NotificationIconView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/widget/NotificationIconView;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method
