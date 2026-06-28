.class Lcom/android/settings/ApnSettings$ApnItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V
    .locals 0

    .line 633
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings$ApnItemAdapter;-><init>(Lcom/android/settings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Ljava/util/ArrayList;

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
    .locals 7

    .line 651
    iget-object p3, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 654
    new-instance p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;

    invoke-direct {p2, p0}, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;-><init>(Lcom/android/settings/ApnSettings$ApnItemAdapter;)V

    .line 655
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v2, 0x7f0d02fb

    invoke-virtual {p3, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v2, 0x7f0a051e

    .line 657
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lsmartisanos/widget/ListContentItemCustom;

    iput-object v2, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    const v2, 0x7f0a057b

    .line 658
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0579

    .line 659
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vSummery:Landroid/widget/TextView;

    const v2, 0x7f0a019c

    .line 660
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vState:Landroid/widget/RadioButton;

    .line 661
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 666
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ApnItem;

    .line 668
    iget-object v3, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/settings/ApnItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v3, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vSummery:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/settings/ApnItem;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v3, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vState:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Lcom/android/settings/ApnItem;->getSelectable()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 671
    iget-object v3, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vState:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Lcom/android/settings/ApnItem;->getSelectable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 672
    iget-object v3, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vState:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Lcom/android/settings/ApnItem;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 673
    iget-object v3, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vState:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 674
    iget-object v3, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->vState:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 676
    iget-object v3, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lsmartisanos/widget/ListContentItemCustom;->setBackgroundStyle(I)V

    .line 677
    iget-object v3, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v3}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 678
    iget-object p1, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    invoke-virtual {p1, v4}, Lsmartisanos/widget/ListContentItemCustom;->setBackgroundStyle(I)V

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    .line 680
    iget-object p1, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lsmartisanos/widget/ListContentItemCustom;->setBackgroundStyle(I)V

    goto :goto_2

    .line 681
    :cond_3
    iget-object v3, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v3}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne p1, v3, :cond_4

    .line 682
    iget-object p1, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    invoke-virtual {p1, v5}, Lsmartisanos/widget/ListContentItemCustom;->setBackgroundStyle(I)V

    .line 685
    :cond_4
    :goto_2
    iget-object p1, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    invoke-virtual {p1, v2}, Lsmartisanos/widget/ListContentItemCustom;->setTag(Ljava/lang/Object;)V

    .line 686
    iget-object p1, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    iget-object v3, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {p1, v3}, Lsmartisanos/widget/ListContentItemCustom;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object p1, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {p1, v2}, Lcom/android/settings/ApnSettings;->access$900(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnItem;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 689
    iget-object p1, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    iget-object p0, p0, Lcom/android/settings/ApnSettings$ApnItemAdapter;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/ListContentItemCustom;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 691
    :cond_5
    iget-object p0, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ListContentItemCustom;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 693
    :goto_3
    iget-object p0, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    invoke-virtual {p0, v4}, Lsmartisanos/widget/ListContentItemCustom;->setLongClickable(Z)V

    .line 694
    iget-object p0, p2, Lcom/android/settings/ApnSettings$ApnItemAdapter$ViewHolder;->item:Lsmartisanos/widget/ListContentItemCustom;

    invoke-virtual {p0, v1}, Lsmartisanos/widget/ListContentItemCustom;->setClickable(Z)V

    return-object p3
.end method
