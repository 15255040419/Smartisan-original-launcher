.class Lcom/android/settings/widget/ChartDataUsageView$3;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 338
    iget-object p2, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p2, p1}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 339
    iget-object p2, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p2}, Lcom/android/settings/widget/ChartDataUsageView;->access$100(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 341
    iget-object p2, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p2}, Lcom/android/settings/widget/ChartDataUsageView;->access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p2}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 342
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    goto :goto_0

    .line 343
    :cond_0
    iget-object p2, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p2}, Lcom/android/settings/widget/ChartDataUsageView;->access$700(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object p2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p1}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 344
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 348
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->access$200(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestEdit(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$700(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p1}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 357
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView$3;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {p0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    :cond_1
    :goto_0
    return-void
.end method
