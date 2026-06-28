.class Lcom/android/settings/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SwitchBar;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settings/widget/SwitchBar$1;->this$0:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    return-void
.end method
