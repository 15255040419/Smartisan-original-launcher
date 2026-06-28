.class Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;
.super Ljava/lang/Object;
.source "ChargingAnimationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChargingAnimationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargingAnimation"
.end annotation


# instance fields
.field private mResId:I

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/ChargingAnimationFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/ChargingAnimationFragment;I)V
    .locals 2

    .line 154
    iput-object p1, p0, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;->this$0:Lcom/android/settings/ChargingAnimationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p2, p0, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;->mResId:I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Lcom/android/settings/ChargingAnimationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/ChargingAnimationFragment$ChargingAnimation;->mUri:Landroid/net/Uri;

    return-void
.end method
