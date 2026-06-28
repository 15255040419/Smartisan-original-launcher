.class Lcom/android/settings/wifi/WpsDialog$3$1;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WpsDialog$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog$3;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 203
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog$3$1;->this$1:Lcom/android/settings/wifi/WpsDialog$3;

    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog$3;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {p0}, Lcom/android/settings/wifi/WpsDialog;->access$300(Lcom/android/settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    return-void
.end method
