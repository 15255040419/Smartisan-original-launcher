.class Landroid/support/v7/widget/helper/ItemTouchHelper$3;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field final synthetic val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    .line 1
    iput-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move/from16 v1, p9

    iput v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    move-object/from16 v1, p10

    iput-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-boolean p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    .line 7
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$swipeDir:I

    if-lez p1, :cond_2

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v0, p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->val$prevSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 10
    iget-object p0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$3;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {p0, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$2000(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/View;)V

    :cond_3
    return-void
.end method
