.class Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;Lcom/android/settings/widget/GridViewWithHeaderAndFooter$1;)V
    .locals 0

    .line 865
    invoke-direct {p0, p1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;-><init>(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-static {v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->access$200(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-static {v1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->access$300(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v4, p3, v0

    if-ltz v4, :cond_0

    .line 872
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-static {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->access$200(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 879
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-static {v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->access$400(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-static {v1}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->access$300(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v4, p3, v0

    if-ltz v4, :cond_0

    .line 882
    iget-object p0, p0, Lcom/android/settings/widget/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lcom/android/settings/widget/GridViewWithHeaderAndFooter;

    invoke-static {p0}, Lcom/android/settings/widget/GridViewWithHeaderAndFooter;->access$400(Lcom/android/settings/widget/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
