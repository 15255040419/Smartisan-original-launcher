.class Lcom/android/settings/widget/SettingCommonSeekBar$1;
.super Ljava/lang/Object;
.source "SettingCommonSeekBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingCommonSeekBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingCommonSeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingCommonSeekBar;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/settings/widget/SettingCommonSeekBar$1;->this$0:Lcom/android/settings/widget/SettingCommonSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/android/settings/widget/SettingCommonSeekBar$1;->this$0:Lcom/android/settings/widget/SettingCommonSeekBar;

    invoke-static {p1}, Lcom/android/settings/widget/SettingCommonSeekBar;->access$000(Lcom/android/settings/widget/SettingCommonSeekBar;)Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/settings/widget/SettingCommonSeekBar$1;->this$0:Lcom/android/settings/widget/SettingCommonSeekBar;

    invoke-static {p1}, Lcom/android/settings/widget/SettingCommonSeekBar;->access$000(Lcom/android/settings/widget/SettingCommonSeekBar;)Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/widget/SettingCommonSeekBar$1;->this$0:Lcom/android/settings/widget/SettingCommonSeekBar;

    invoke-interface {p1, p0}, Lcom/android/settings/widget/SettingCommonSeekBar$OnResetClickListener;->onReset(Lcom/android/settings/widget/SettingCommonSeekBar;)V

    :cond_0
    return-void
.end method
