.class Lcom/android/settings/widget/SettingItemCheckbox$1;
.super Ljava/lang/Object;
.source "SettingItemCheckbox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingItemCheckbox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingItemCheckbox;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingItemCheckbox;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/widget/SettingItemCheckbox$1;->this$0:Lcom/android/settings/widget/SettingItemCheckbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/widget/SettingItemCheckbox$1;->this$0:Lcom/android/settings/widget/SettingItemCheckbox;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingItemCheckbox;->toggle()V

    return-void
.end method
