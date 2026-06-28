.class Lcom/android/settings/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseActivity;->scroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BaseActivity;

.field final synthetic val$position:[I


# direct methods
.method constructor <init>(Lcom/android/settings/BaseActivity;[I)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/android/settings/BaseActivity$5;->this$0:Lcom/android/settings/BaseActivity;

    iput-object p2, p0, Lcom/android/settings/BaseActivity$5;->val$position:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/android/settings/BaseActivity$5;->this$0:Lcom/android/settings/BaseActivity;

    invoke-static {v0}, Lcom/android/settings/BaseActivity;->access$200(Lcom/android/settings/BaseActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/BaseActivity$5;->val$position:[I

    const/4 v1, 0x1

    aget p0, p0, v1

    rsub-int p0, p0, 0x104

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method
