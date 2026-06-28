.class Lcom/android/settings/BugreportPreference$2;
.super Ljava/lang/Object;
.source "BugreportPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BugreportPreference;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BugreportPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BugreportPreference;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/BugreportPreference$2;->this$0:Lcom/android/settings/BugreportPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/android/settings/BugreportPreference$2;->this$0:Lcom/android/settings/BugreportPreference;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/BugreportPreference;->access$400(Lcom/android/settings/BugreportPreference;I)V

    return-void
.end method
