.class Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;
.super Ljava/lang/Object;
.source "TrustedNetworkHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/TrustedNetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuClickListener"
.end annotation


# instance fields
.field mPinLength:I

.field mQuality:I

.field final synthetic this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/TrustedNetworkHelper;I)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 190
    iput p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->mPinLength:I

    .line 193
    iput p2, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->mQuality:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/TrustedNetworkHelper;II)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 190
    iput p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->mPinLength:I

    .line 197
    iput p2, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->mQuality:I

    .line 198
    iput p3, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->mPinLength:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->this$0:Lcom/android/settings/wifi/TrustedNetworkHelper;

    iget v0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->mQuality:I

    iget p0, p0, Lcom/android/settings/wifi/TrustedNetworkHelper$MenuClickListener;->mPinLength:I

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/wifi/TrustedNetworkHelper;->updateUnlockMethodAndFinish(II)V

    return-void
.end method
