.class Lcom/android/settings/widget/LauncherPreview$1;
.super Landroid/os/AsyncTask;
.source "LauncherPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/LauncherPreview;->setThemeOptionPreviewDrawable()V
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
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/LauncherPreview;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/LauncherPreview;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/widget/LauncherPreview$1;->this$0:Lcom/android/settings/widget/LauncherPreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 152
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview$1;->this$0:Lcom/android/settings/widget/LauncherPreview;

    invoke-static {p0}, Lcom/android/settings/widget/LauncherPreview;->access$000(Lcom/android/settings/widget/LauncherPreview;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "dot.png"

    invoke-static {p0, p1, v0}, Lcom/android/settings/widget/LauncherPreview;->access$100(Lcom/android/settings/widget/LauncherPreview;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/LauncherPreview$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 158
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview$1;->this$0:Lcom/android/settings/widget/LauncherPreview;

    invoke-static {p0}, Lcom/android/settings/widget/LauncherPreview;->access$200(Lcom/android/settings/widget/LauncherPreview;)Lcom/android/settings/widget/PreviewOptionItemView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/PreviewOptionItemView;->setItemImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 149
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/LauncherPreview$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
