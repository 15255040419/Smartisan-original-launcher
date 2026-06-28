.class Landroid/support/v4/view/PagerTabStrip$1;
.super Ljava/lang/Object;
.source "PagerTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/PagerTabStrip;


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerTabStrip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/view/PagerTabStrip$1;->this$0:Landroid/support/v4/view/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/view/PagerTabStrip$1;->this$0:Landroid/support/v4/view/PagerTabStrip;

    iget-object p0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
