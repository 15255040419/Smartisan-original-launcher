.class Lcom/android/settings/BackCoverCalibration$1;
.super Ljava/lang/Object;
.source "BackCoverCalibration.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BackCoverCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BackCoverCalibration;


# direct methods
.method constructor <init>(Lcom/android/settings/BackCoverCalibration;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/BackCoverCalibration$1;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-wide/16 p1, -0x1

    cmp-long p1, p4, p1

    if-nez p1, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/android/settings/BackCoverCalibration$1;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {p1}, Lcom/android/settings/BackCoverCalibration;->access$000(Lcom/android/settings/BackCoverCalibration;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 90
    iget-object p1, p0, Lcom/android/settings/BackCoverCalibration$1;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-virtual {p1, p3}, Lcom/android/settings/BackCoverCalibration;->getValueFromPosition(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/BackCoverCalibration;->access$102(Lcom/android/settings/BackCoverCalibration;I)I

    .line 91
    iget-object p1, p0, Lcom/android/settings/BackCoverCalibration$1;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-static {p1}, Lcom/android/settings/BackCoverCalibration;->access$200(Lcom/android/settings/BackCoverCalibration;)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration$1;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->finish()V

    return-void
.end method
