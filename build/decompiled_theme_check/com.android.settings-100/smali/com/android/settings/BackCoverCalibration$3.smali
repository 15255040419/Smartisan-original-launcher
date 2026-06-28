.class Lcom/android/settings/BackCoverCalibration$3;
.super Ljava/lang/Object;
.source "BackCoverCalibration.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackCoverCalibration;->updateGlobalThemeIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BackCoverCalibration;


# direct methods
.method constructor <init>(Lcom/android/settings/BackCoverCalibration;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/settings/BackCoverCalibration$3;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/settings/BackCoverCalibration$3;->this$0:Lcom/android/settings/BackCoverCalibration;

    invoke-virtual {p0}, Lcom/android/settings/BackCoverCalibration;->finish()V

    return-void
.end method
