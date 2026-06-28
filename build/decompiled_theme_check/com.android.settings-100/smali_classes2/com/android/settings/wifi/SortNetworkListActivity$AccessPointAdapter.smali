.class Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;
.super Landroid/widget/BaseAdapter;
.source "SortNetworkListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SortNetworkListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessPointAdapter"
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field mSortSplitLinePosition:I

.field final synthetic this$0:Lcom/android/settings/wifi/SortNetworkListActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/SortNetworkListActivity;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)V"
        }
    .end annotation

    .line 375
    iput-object p1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 376
    iput-object p2, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    .line 377
    new-instance p2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v0, -0x2

    .line 378
    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 379
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 380
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 381
    invoke-static {p1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1000(Lcom/android/settings/wifi/SortNetworkListActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 382
    iput p3, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    return-void
.end method

.method private setPreferenceBackground(Landroid/view/View;I)V
    .locals 1

    const v0, 0x7f0a0964

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 406
    iget p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    if-ne p2, p0, :cond_0

    const p0, -0x121213

    .line 407
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 p0, 0x8

    .line 408
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 p0, -0x1

    .line 411
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p0, 0x0

    .line 412
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateViewText(Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mSortSplitLinePosition:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 418
    iget-object p2, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    const v1, 0x7f1217b5

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/SortNetworkListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object p2, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    const/high16 v0, 0x41580000    # 13.5f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 420
    iget-object p2, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    iget-object p2, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLeft(I)V

    .line 422
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-virtual {p0}, Lcom/android/settings/wifi/SortNetworkListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0703af

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 423
    iget-object p2, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v2, p0, v2, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 424
    iget-object p0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mRemoveIcon:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object p0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object p0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mDrag:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$200(Lcom/android/settings/wifi/SortNetworkListActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mRemoveIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    iget-object v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mDrag:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mDrag:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    :goto_0
    iget-object v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 438
    iget-object v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    iget-object v0, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1100(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 442
    iget-object p1, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    const p2, 0x7f121833

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/SortNetworkListActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1300(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1202(Lcom/android/settings/wifi/SortNetworkListActivity;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 445
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1400(Lcom/android/settings/wifi/SortNetworkListActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1200(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    .line 446
    invoke-static {v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1200(Lcom/android/settings/wifi/SortNetworkListActivity;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget p2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, p2, :cond_4

    .line 447
    iget-object p2, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    const v0, 0x7f1217e1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {p1}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getRemoveIcon()Landroid/widget/ImageView;

    move-result-object p0

    const p1, 0x7f0801d9

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 450
    :cond_4
    iget-object p2, p1, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    const v0, 0x7f121855

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p1}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getRemoveIcon()Landroid/widget/ImageView;

    move-result-object p0

    const p1, 0x7f080202

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 393
    iget-object p0, p0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14

    move-object v0, p0

    move v8, p1

    .line 458
    iget-object v1, v0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    const v10, 0x7f0a007d

    if-nez p2, :cond_1

    .line 463
    iget-object v1, v0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d02c1

    const/4 v3, 0x0

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 465
    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0965

    .line 467
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v4, 0x7f0a0966

    .line 469
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0a0556

    .line 472
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a0961

    .line 474
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a08c8

    .line 475
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f0a01f1

    .line 477
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    const v2, 0x7f0a026c

    .line 478
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    .line 479
    iget-object v1, v0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v1}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1500(Lcom/android/settings/wifi/SortNetworkListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 482
    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    :goto_0
    new-instance v13, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;

    move-object v1, v13

    move-object v2, v5

    move-object v3, v6

    move-object v5, v7

    move-object v6, v12

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;I)V

    .line 486
    invoke-virtual {v11, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 488
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;

    move-object/from16 v11, p2

    .line 490
    :goto_1
    iput v8, v13, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->mPosition:I

    .line 491
    invoke-direct {p0, v13, v9}, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->updateViewText(Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;Landroid/net/wifi/WifiConfiguration;)V

    .line 492
    invoke-virtual {v13}, Lcom/android/settings/wifi/SortNetworkListActivity$ViewHolder;->getRemoveIcon()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;

    invoke-direct {v2, p0, v9, p1}, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter$1;-><init>(Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;Landroid/net/wifi/WifiConfiguration;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p1}, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->setPreferenceBackground(Landroid/view/View;I)V

    .line 516
    iget-object v0, v0, Lcom/android/settings/wifi/SortNetworkListActivity$AccessPointAdapter;->this$0:Lcom/android/settings/wifi/SortNetworkListActivity;

    invoke-static {v0}, Lcom/android/settings/wifi/SortNetworkListActivity;->access$1000(Lcom/android/settings/wifi/SortNetworkListActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v11
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
