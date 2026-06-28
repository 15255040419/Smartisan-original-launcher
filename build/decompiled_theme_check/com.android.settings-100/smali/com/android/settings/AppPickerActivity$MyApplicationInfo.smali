.class Lcom/android/settings/AppPickerActivity$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/AppPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/AppPickerActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/AppPickerActivity$MyApplicationInfo;->this$0:Lcom/android/settings/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
