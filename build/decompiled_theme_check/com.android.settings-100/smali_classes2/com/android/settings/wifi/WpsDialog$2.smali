.class Lcom/android/settings/wifi/WpsDialog$2;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog$2;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    return-void
.end method
