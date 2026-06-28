.class Lcom/android/settings/BandMode$1;
.super Ljava/lang/Object;
.source "BandMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BandMode;


# direct methods
.method constructor <init>(Lcom/android/settings/BandMode;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/BandMode$1;->this$0:Lcom/android/settings/BandMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 103
    iget-object p2, p0, Lcom/android/settings/BandMode$1;->this$0:Lcom/android/settings/BandMode;

    invoke-virtual {p2}, Lcom/android/settings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p4, 0x5

    const/4 p5, -0x1

    invoke-virtual {p2, p4, p5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 107
    iget-object p2, p0, Lcom/android/settings/BandMode$1;->this$0:Lcom/android/settings/BandMode;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/BandMode$BandListItem;

    invoke-static {p2, p1}, Lcom/android/settings/BandMode;->access$002(Lcom/android/settings/BandMode;Lcom/android/settings/BandMode$BandListItem;)Lcom/android/settings/BandMode$BandListItem;

    .line 111
    iget-object p1, p0, Lcom/android/settings/BandMode$1;->this$0:Lcom/android/settings/BandMode;

    .line 112
    invoke-static {p1}, Lcom/android/settings/BandMode;->access$100(Lcom/android/settings/BandMode;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xc8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 113
    iget-object p2, p0, Lcom/android/settings/BandMode$1;->this$0:Lcom/android/settings/BandMode;

    invoke-static {p2}, Lcom/android/settings/BandMode;->access$200(Lcom/android/settings/BandMode;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/BandMode$1;->this$0:Lcom/android/settings/BandMode;

    invoke-static {p0}, Lcom/android/settings/BandMode;->access$000(Lcom/android/settings/BandMode;)Lcom/android/settings/BandMode$BandListItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/BandMode$BandListItem;->getBand()I

    move-result p0

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    return-void
.end method
