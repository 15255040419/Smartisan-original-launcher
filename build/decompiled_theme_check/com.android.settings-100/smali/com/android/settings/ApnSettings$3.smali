.class Lcom/android/settings/ApnSettings$3;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnSettings;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 752
    iget-object p1, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {p1}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$1000(Lcom/android/settings/ApnSettings;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 753
    iget-object p0, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    return-void
.end method
