.class Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "AsyncListDiffer.java"


# instance fields
.field final synthetic this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;


# direct methods
.method constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-static {p0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->access$000(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/util/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-static {p0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->access$000(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/util/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-static {p0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->access$000(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;->getDiffCallback()Landroid/support/v7/util/DiffUtil$ItemCallback;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/util/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public getNewListSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$1;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object p0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$oldList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
