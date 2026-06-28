.class Lcom/android/settings/widget/SettingItemCheckSimpleText$1;
.super Ljava/lang/Object;
.source "SettingItemCheckSimpleText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingItemCheckSimpleText;->initMidWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingItemCheckSimpleText;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingItemCheckSimpleText;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText$1;->this$0:Lcom/android/settings/widget/SettingItemCheckSimpleText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText$1;->this$0:Lcom/android/settings/widget/SettingItemCheckSimpleText;

    invoke-static {v0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->access$000(Lcom/android/settings/widget/SettingItemCheckSimpleText;)Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckSimpleText$1;->this$0:Lcom/android/settings/widget/SettingItemCheckSimpleText;

    invoke-static {p0}, Lcom/android/settings/widget/SettingItemCheckSimpleText;->access$000(Lcom/android/settings/widget/SettingItemCheckSimpleText;)Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/widget/SettingItemCheckSimpleText$IcArrowClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
