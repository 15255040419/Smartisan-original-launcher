.class Lcom/android/settings/widget/DotsPageIndicator$2;
.super Landroid/database/DataSetObserver;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$2;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$2;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-static {p0}, Lcom/android/settings/widget/DotsPageIndicator;->access$100(Lcom/android/settings/widget/DotsPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator;->access$200(Lcom/android/settings/widget/DotsPageIndicator;I)V

    return-void
.end method
