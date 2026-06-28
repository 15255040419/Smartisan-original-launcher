.class Lcom/android/settingslib/accounts/AuthenticatorHelper$1;
.super Landroid/os/AsyncTask;
.source "AuthenticatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->this$0:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iput-object p2, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->val$accountType:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->this$0:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/accounts/AuthenticatorHelper$1;->val$accountType:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    return-object p0
.end method
