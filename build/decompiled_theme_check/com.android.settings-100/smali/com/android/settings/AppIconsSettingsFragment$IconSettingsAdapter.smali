.class Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppIconsSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppIconsSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconSettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;,
        Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$HeaderViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/AppIconsSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppIconsSettingsFragment;Landroid/content/Context;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 625
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/AppIconsSettingsFragment;->access$000(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getHeaderId(I)J
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/AppIconsSettingsFragment;->access$000(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    iget p0, p0, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_1

    .line 768
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$HeaderViewHolder;

    if-nez p3, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$HeaderViewHolder;

    goto :goto_1

    .line 769
    :cond_1
    :goto_0
    new-instance p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$HeaderViewHolder;

    invoke-direct {p3, p0}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;)V

    .line 770
    iget-object p2, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0144

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a08a1

    .line 771
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$HeaderViewHolder;->headerText:Landroid/widget/TextView;

    const v0, 0x7f0a081b

    .line 772
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$HeaderViewHolder;->shadowDiv:Landroid/view/View;

    .line 773
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 778
    :goto_1
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/AppIconsSettingsFragment;->access$000(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    .line 779
    iget p1, p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v1, :cond_3

    .line 780
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    const p1, 0x7f120968

    .line 781
    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    const p1, 0x7f120969

    .line 782
    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 784
    :goto_3
    iget-object p1, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$HeaderViewHolder;->headerText:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object p0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$HeaderViewHolder;->shadowDiv:Landroid/view/View;

    if-eqz v1, :cond_4

    const/16 v0, 0x8

    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/AppIconsSettingsFragment;->access$000(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-nez p2, :cond_0

    .line 647
    iget-object p2, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0048

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 648
    new-instance p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;-><init>(Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;)V

    const v0, 0x7f0a037d

    .line 649
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/ListContentItemText;

    iput-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->layout:Lsmartisanos/widget/ListContentItemText;

    const v0, 0x7f0a06bf

    .line 650
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationItemIconView;

    iput-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->officialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    const v0, 0x7f0a09cf

    .line 651
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationItemIconView;

    iput-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    const v0, 0x7f0a00a6

    .line 652
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0a037b

    .line 653
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->authorName:Landroid/widget/TextView;

    const v0, 0x7f0a00bd

    .line 654
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    const v0, 0x7f0a0561

    .line 655
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->itemShadow:Landroid/view/View;

    .line 656
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 658
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;

    .line 660
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/AppIconsSettingsFragment;->access$800(Lcom/android/settings/AppIconsSettingsFragment;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 663
    :cond_1
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    :goto_1
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/AppIconsSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07018f

    .line 667
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 668
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v5, 0x7f070190

    .line 669
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 671
    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v5}, Lcom/android/settings/AppIconsSettingsFragment;->access$1100(Lcom/android/settings/AppIconsSettingsFragment;)I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge p1, v5, :cond_3

    .line 672
    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v5}, Lcom/android/settings/AppIconsSettingsFragment;->access$1100(Lcom/android/settings/AppIconsSettingsFragment;)I

    move-result v5

    if-le v5, v9, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    .line 676
    :cond_2
    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v5}, Lcom/android/settings/AppIconsSettingsFragment;->access$1100(Lcom/android/settings/AppIconsSettingsFragment;)I

    move-result v5

    sub-int/2addr v5, v9

    if-ne p1, v5, :cond_5

    goto :goto_3

    .line 688
    :cond_3
    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v5}, Lcom/android/settings/AppIconsSettingsFragment;->access$1200(Lcom/android/settings/AppIconsSettingsFragment;)I

    move-result v5

    if-le v5, v9, :cond_6

    .line 689
    iget-object v5, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v5}, Lcom/android/settings/AppIconsSettingsFragment;->access$1100(Lcom/android/settings/AppIconsSettingsFragment;)I

    move-result v5

    if-ne p1, v5, :cond_4

    :goto_2
    move v4, v0

    move v0, v8

    goto :goto_4

    .line 692
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v9

    if-ne p1, v5, :cond_5

    :goto_3
    move v3, v0

    move v0, v6

    goto :goto_4

    :cond_5
    move v0, v7

    goto :goto_4

    :cond_6
    move v3, v0

    move v4, v3

    move v0, v9

    .line 704
    :goto_4
    iget-object v5, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->layout:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v5, v0}, Lsmartisanos/widget/ListContentItemText;->setBackgroundStyle(I)V

    .line 705
    iget-object v5, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->layout:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v5, v8}, Lsmartisanos/widget/ListContentItemText;->setImportantForAccessibility(I)V

    .line 706
    iget-object v5, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->layout:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v5, v2}, Lsmartisanos/widget/ListContentItemText;->setArrowVisible(Z)V

    .line 707
    iget-object v5, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->officialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-virtual {v5, v2, v4, v2, v3}, Lcom/android/settings/applications/ApplicationItemIconView;->setPadding(IIII)V

    .line 708
    iget-object v5, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-virtual {v5, v2, v4, v2, v3}, Lcom/android/settings/applications/ApplicationItemIconView;->setPadding(IIII)V

    .line 710
    invoke-virtual {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    .line 711
    iget-boolean v4, v3, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mShowOfficial:Z

    const v5, 0x7f1215e3

    if-eqz v4, :cond_9

    .line 712
    iget-object v4, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->officialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-virtual {v4, v9}, Lcom/android/settings/applications/ApplicationItemIconView;->setVisible(Z)V

    .line 713
    iget-object v4, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-virtual {v4, v2}, Lcom/android/settings/applications/ApplicationItemIconView;->setVisible(Z)V

    .line 714
    iget v4, v3, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    if-eq v4, v9, :cond_8

    if-eq v4, v8, :cond_7

    if-eq v4, v7, :cond_7

    goto :goto_5

    .line 720
    :cond_7
    iget-object v4, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->authorName:Landroid/widget/TextView;

    const v7, 0x7f120964

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 716
    :cond_8
    iget-object v4, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->authorName:Landroid/widget/TextView;

    const v7, 0x7f120e0b

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 724
    :cond_9
    iget-object v4, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->officialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-virtual {v4, v2}, Lcom/android/settings/applications/ApplicationItemIconView;->setVisible(Z)V

    .line 725
    iget-object v4, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-virtual {v4, v9}, Lcom/android/settings/applications/ApplicationItemIconView;->setVisible(Z)V

    .line 726
    iget v4, v3, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    if-eq v4, v9, :cond_b

    if-eq v4, v8, :cond_a

    if-eq v4, v7, :cond_a

    goto :goto_5

    .line 732
    :cond_a
    iget-object v4, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->authorName:Landroid/widget/TextView;

    const v7, 0x7f120965

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 728
    :cond_b
    iget-object v4, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->authorName:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    if-eq v0, v6, :cond_d

    if-ne v0, v9, :cond_c

    goto :goto_6

    .line 739
    :cond_c
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->itemShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 737
    :cond_d
    :goto_6
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->itemShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 741
    :goto_7
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->officialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/AppIconsSettingsFragment;->access$100(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationItemIconView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 742
    iget v0, v3, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedState:I

    const v1, 0x7f080272

    if-ne v0, v9, :cond_e

    .line 743
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    iget-object v2, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/AppIconsSettingsFragment;->access$200(Lcom/android/settings/AppIconsSettingsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationItemIconView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 744
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationItemIconView;->setBg(I)V

    goto :goto_8

    .line 746
    :cond_e
    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/AppIconsSettingsFragment;->access$1300(Lcom/android/settings/AppIconsSettingsFragment;)Lcom/android/settings/ImageDownloader;

    move-result-object v0

    iget-object v2, v3, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedIconPath:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-virtual {v4}, Lcom/android/settings/applications/ApplicationItemIconView;->getIcon()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 747
    iget-object v0, v3, Lcom/android/settings/AppIconsSettingsFragment$Asset;->mRedirectedIconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 748
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationItemIconView;->setBg(I)V

    goto :goto_8

    .line 750
    :cond_f
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationItemIconView;->setBg(I)V

    .line 754
    :goto_8
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->officialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/AppIconsSettingsFragment;->access$1400(Lcom/android/settings/AppIconsSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getAppName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationItemIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    iget-object v1, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    iget-object v1, v1, Lcom/android/settings/AppIconsSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationItemIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->officialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationItemIconView;->setTag(Ljava/lang/Object;)V

    .line 758
    iget-object v0, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationItemIconView;->setTag(Ljava/lang/Object;)V

    .line 759
    iget-object p1, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->officialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ApplicationItemIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    iget-object p1, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

    iget-object v0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ApplicationItemIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    iget-object p1, p3, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/AppIconsSettingsFragment;->access$1400(Lcom/android/settings/AppIconsSettingsFragment;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/settings/AppIconsSettingsFragment$Asset;->getAppName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
