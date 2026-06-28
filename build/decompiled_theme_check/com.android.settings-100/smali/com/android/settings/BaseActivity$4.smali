.class Lcom/android/settings/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseActivity;->setupBackBtnOnTitle(Z)Lsmartisanos/widget/TitleBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/BaseActivity;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/android/settings/BaseActivity$4;->this$0:Lcom/android/settings/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/settings/BaseActivity$4;->this$0:Lcom/android/settings/BaseActivity;

    invoke-virtual {p0}, Lcom/android/settings/BaseActivity;->onBackPressed()V

    return-void
.end method
