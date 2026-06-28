.class Lcom/android/settings/wifi/WifiStatusTest$2;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiStatusTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->finish()V

    return-void
.end method
