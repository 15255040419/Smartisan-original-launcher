.class Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppCompnentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppCompnentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field launchIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/settings/AppCompnentFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AppCompnentFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->this$0:Lcom/android/settings/AppCompnentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
