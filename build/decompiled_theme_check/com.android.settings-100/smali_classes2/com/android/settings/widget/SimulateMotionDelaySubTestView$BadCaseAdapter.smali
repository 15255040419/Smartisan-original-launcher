.class Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimulateMotionDelaySubTestView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SimulateMotionDelaySubTestView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadCaseAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;Lcom/android/settings/widget/SimulateMotionDelaySubTestView$1;)V
    .locals 0

    .line 328
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;-><init>(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$2100(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 336
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
    .locals 2

    if-nez p2, :cond_0

    .line 348
    iget-object p2, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p2}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$1900(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0d0168

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a04a4

    .line 349
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/SettingItemCheck;

    .line 350
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsmartisanos/widget/SettingItemCheck;

    .line 355
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;->getCount()I

    move-result v0

    invoke-static {p3, v0, p1}, Lcom/android/settings/Utils;->setItemBgStyle(Lsmartisanos/widget/ListContentItem;II)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$2100(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Lsmartisanos/widget/SettingItemCheck;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {v0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$500(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)I

    move-result v0

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p3, v1}, Lsmartisanos/widget/SettingItemCheck;->setChecked(Z)V

    .line 359
    iget-object p0, p0, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$BadCaseAdapter;->this$0:Lcom/android/settings/widget/SimulateMotionDelaySubTestView;

    invoke-static {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView;->access$2200(Lcom/android/settings/widget/SimulateMotionDelaySubTestView;)Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/widget/SimulateMotionDelaySubTestView$SubListView;->isEnabled()Z

    move-result p0

    invoke-virtual {p3, p0}, Lsmartisanos/widget/SettingItemCheck;->setEnabled(Z)V

    return-object p2
.end method
