.class Lcom/android/settings/AboutFragment$1;
.super Landroid/os/AsyncTask;
.source "AboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AboutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AboutFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AboutFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/settings/AboutFragment$1;->this$0:Lcom/android/settings/AboutFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 176
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 179
    invoke-static {}, Lcom/android/settings/Utils;->getStorageVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/AboutFragment$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 185
    iget-object p0, p0, Lcom/android/settings/AboutFragment$1;->this$0:Lcom/android/settings/AboutFragment;

    invoke-static {p0}, Lcom/android/settings/AboutFragment;->access$000(Lcom/android/settings/AboutFragment;)Landroid/view/ViewStub;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/settings/AboutStaticItem;

    const v0, 0x7f1213c9

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/settings/AboutStaticItem;->setTitle(I)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/settings/AboutStaticItem;->setSummary(Ljava/lang/String;)V

    return-void
.end method
