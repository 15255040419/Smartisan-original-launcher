.class Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;
.super Ljava/lang/Object;
.source "SortNetworkListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SortNetworkListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mDrag:Landroid/widget/ImageView;

.field mPosition:I

.field mRemoveIcon:Landroid/widget/ImageView;

.field mSubTitle:Landroid/widget/TextView;

.field mSummary:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;I)V
    .locals 0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mRemoveIcon:Landroid/widget/ImageView;

    .line 552
    iput-object p2, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 553
    iput-object p3, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mSummary:Landroid/widget/TextView;

    .line 554
    iput-object p4, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    .line 555
    iput-object p5, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mDrag:Landroid/widget/ImageView;

    .line 556
    iput p6, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mPosition:I

    return-void
.end method


# virtual methods
.method getDrag()Landroid/widget/ImageView;
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mDrag:Landroid/widget/ImageView;

    return-object p0
.end method

.method getPosition()I
    .locals 0

    .line 572
    iget p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mPosition:I

    return p0
.end method

.method getRemoveIcon()Landroid/widget/ImageView;
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mRemoveIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method getSubTitle()Landroid/widget/TextView;
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    return-object p0
.end method
