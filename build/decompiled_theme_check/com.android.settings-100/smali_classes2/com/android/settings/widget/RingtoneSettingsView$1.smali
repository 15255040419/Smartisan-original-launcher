.class Lcom/android/settings/widget/RingtoneSettingsView$1;
.super Ljava/lang/Object;
.source "RingtoneSettingsView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/RingtoneSettingsView;->setMaxTitleWidth(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/RingtoneSettingsView;

.field final synthetic val$isHasSoundView:Z


# direct methods
.method constructor <init>(Lcom/android/settings/widget/RingtoneSettingsView;Z)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/widget/RingtoneSettingsView$1;->this$0:Lcom/android/settings/widget/RingtoneSettingsView;

    iput-boolean p2, p0, Lcom/android/settings/widget/RingtoneSettingsView$1;->val$isHasSoundView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/RingtoneSettingsView$1;->this$0:Lcom/android/settings/widget/RingtoneSettingsView;

    invoke-virtual {v0}, Lcom/android/settings/widget/RingtoneSettingsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/widget/RingtoneSettingsView$1;->this$0:Lcom/android/settings/widget/RingtoneSettingsView;

    invoke-static {v0}, Lcom/android/settings/widget/RingtoneSettingsView;->access$000(Lcom/android/settings/widget/RingtoneSettingsView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 75
    iget-object v1, p0, Lcom/android/settings/widget/RingtoneSettingsView$1;->this$0:Lcom/android/settings/widget/RingtoneSettingsView;

    invoke-virtual {v1}, Lcom/android/settings/widget/RingtoneSettingsView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/widget/RingtoneSettingsView$1;->this$0:Lcom/android/settings/widget/RingtoneSettingsView;

    invoke-static {v2}, Lcom/android/settings/widget/RingtoneSettingsView;->access$100(Lcom/android/settings/widget/RingtoneSettingsView;)F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/settings/widget/RingtoneSettingsView$1;->val$isHasSoundView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/RingtoneSettingsView$1;->this$0:Lcom/android/settings/widget/RingtoneSettingsView;

    invoke-static {v0}, Lcom/android/settings/widget/RingtoneSettingsView;->access$200(Lcom/android/settings/widget/RingtoneSettingsView;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 76
    iget-object p0, p0, Lcom/android/settings/widget/RingtoneSettingsView$1;->this$0:Lcom/android/settings/widget/RingtoneSettingsView;

    invoke-static {p0}, Lcom/android/settings/widget/RingtoneSettingsView;->access$300(Lcom/android/settings/widget/RingtoneSettingsView;)Landroid/widget/TextView;

    move-result-object p0

    float-to-int v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method
