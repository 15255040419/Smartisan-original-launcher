.class public Lcom/android/settings/widget/NotificationCustomView$DragAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationCustomView.java"

# interfaces
.implements Lcom/android/settings/widget/DragGridBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/NotificationCustomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/notificationcustom/QuickWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mHidePosition:I

.field final synthetic this$0:Lcom/android/settings/widget/NotificationCustomView;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/NotificationCustomView;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/notificationcustom/QuickWidget;",
            ">;)V"
        }
    .end annotation

    .line 1168
    iput-object p1, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, -0x1

    .line 1166
    iput p1, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->mHidePosition:I

    .line 1169
    iput-object p2, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 1174
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getHidePosition()I
    .locals 0

    .line 1222
    iget p0, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->mHidePosition:I

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1179
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 1189
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {v0}, Lcom/android/settings/widget/NotificationCustomView;->access$1500(Lcom/android/settings/widget/NotificationCustomView;)Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notificationcustom/QuickWidget;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->onGetDragGridItemView(Lcom/android/settings/notificationcustom/QuickWidget;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1191
    iget-object p3, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p3}, Lcom/android/settings/widget/NotificationCustomView;->access$2300(Lcom/android/settings/widget/NotificationCustomView;)I

    move-result p3

    const/4 v0, 0x0

    if-eq p1, p3, :cond_1

    iget p3, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->mHidePosition:I

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1192
    :goto_1
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->this$0:Lcom/android/settings/widget/NotificationCustomView;

    invoke-static {p0}, Lcom/android/settings/widget/NotificationCustomView;->access$1500(Lcom/android/settings/widget/NotificationCustomView;)Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;

    move-result-object p0

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :cond_2
    invoke-interface {p0, p2, v0}, Lcom/android/settings/notificationcustom/INotificationCustomLayoutStrategy;->updateGridItemViewVisibility(Landroid/view/View;I)V

    :cond_3
    return-object p2
.end method

.method public reorderItems(II)V
    .locals 3

    .line 1200
    iget-object v0, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notificationcustom/QuickWidget;

    if-ge p1, p2, :cond_0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 1203
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->list:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p1, v2

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    :goto_1
    if-le p1, p2, :cond_1

    .line 1207
    iget-object v1, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->list:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1211
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->list:Ljava/util/List;

    invoke-interface {p0, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHideItem(I)V
    .locals 0

    .line 1216
    iput p1, p0, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->mHidePosition:I

    .line 1217
    invoke-virtual {p0}, Lcom/android/settings/widget/NotificationCustomView$DragAdapter;->notifyDataSetChanged()V

    return-void
.end method
