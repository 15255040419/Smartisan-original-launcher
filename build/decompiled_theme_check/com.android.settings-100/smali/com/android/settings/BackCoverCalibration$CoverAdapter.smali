.class Lcom/android/settings/BackCoverCalibration$CoverAdapter;
.super Lcom/android/settings/SettingsAdapter;
.source "BackCoverCalibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BackCoverCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CoverAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/BackCoverCalibration;


# direct methods
.method public constructor <init>(Lcom/android/settings/BackCoverCalibration;Landroid/app/Activity;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/settings/BackCoverCalibration$CoverAdapter;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-direct {p0}, Lcom/android/settings/SettingsAdapter;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/android/settings/BackCoverCalibration$CoverAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration$CoverAdapter;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {p0}, Lcom/android/settings/BackCoverCalibration;->access$500(Lcom/android/settings/BackCoverCalibration;)[I

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 281
    new-instance p2, Lcom/android/settings/BackCoverCalibration$ViewHolder;

    invoke-direct {p2}, Lcom/android/settings/BackCoverCalibration$ViewHolder;-><init>()V

    .line 282
    new-instance p3, Lsmartisanos/widget/SettingItemCheck;

    iget-object v0, p0, Lcom/android/settings/BackCoverCalibration$CoverAdapter;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-direct {p3, v0}, Lsmartisanos/widget/SettingItemCheck;-><init>(Landroid/content/Context;)V

    .line 283
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    move-object v0, p3

    check-cast v0, Lsmartisanos/widget/SettingItemCheck;

    invoke-virtual {v0}, Lsmartisanos/widget/SettingItemCheck;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/BackCoverCalibration$ViewHolder;->name:Landroid/widget/TextView;

    .line 286
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/BackCoverCalibration$ViewHolder;

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/android/settings/BackCoverCalibration$CoverAdapter;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {v0}, Lcom/android/settings/BackCoverCalibration;->access$500(Lcom/android/settings/BackCoverCalibration;)[I

    move-result-object v0

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/settings/BackCoverCalibration$CoverAdapter;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {v1}, Lcom/android/settings/BackCoverCalibration;->access$100(Lcom/android/settings/BackCoverCalibration;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 292
    move-object v0, p2

    check-cast v0, Lsmartisanos/widget/SettingItemCheck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    goto :goto_1

    .line 294
    :cond_1
    move-object v0, p2

    check-cast v0, Lsmartisanos/widget/SettingItemCheck;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    .line 297
    :goto_1
    iget-object p3, p3, Lcom/android/settings/BackCoverCalibration$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/BackCoverCalibration$CoverAdapter;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {v0}, Lcom/android/settings/BackCoverCalibration;->access$600(Lcom/android/settings/BackCoverCalibration;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p3, p0, Lcom/android/settings/BackCoverCalibration$CoverAdapter;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {p3}, Lcom/android/settings/BackCoverCalibration;->access$500(Lcom/android/settings/BackCoverCalibration;)[I

    move-result-object p3

    array-length p3, p3

    invoke-virtual {p0, p3, p1}, Lcom/android/settings/BackCoverCalibration$CoverAdapter;->getBackgroundRes(II)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p2
.end method
