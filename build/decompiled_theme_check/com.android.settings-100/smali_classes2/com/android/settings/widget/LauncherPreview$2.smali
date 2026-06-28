.class Lcom/android/settings/widget/LauncherPreview$2;
.super Landroid/os/AsyncTask;
.source "LauncherPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/LauncherPreview;->setPreviewDrawable(Landroid/content/Context;Landroid/widget/ImageView;IZ)V
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
        "Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/LauncherPreview;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isTransparentTheme:Z

.field final synthetic val$launcherMode:I

.field final synthetic val$targetView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/LauncherPreview;Landroid/content/Context;IZLandroid/widget/ImageView;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/settings/widget/LauncherPreview$2;->this$0:Lcom/android/settings/widget/LauncherPreview;

    iput-object p2, p0, Lcom/android/settings/widget/LauncherPreview$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/widget/LauncherPreview$2;->val$launcherMode:I

    iput-boolean p4, p0, Lcom/android/settings/widget/LauncherPreview$2;->val$isTransparentTheme:Z

    iput-object p5, p0, Lcom/android/settings/widget/LauncherPreview$2;->val$targetView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;
    .locals 2

    .line 198
    iget-object p1, p0, Lcom/android/settings/widget/LauncherPreview$2;->this$0:Lcom/android/settings/widget/LauncherPreview;

    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview$2;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/widget/LauncherPreview$2;->val$launcherMode:I

    iget-boolean p0, p0, Lcom/android/settings/widget/LauncherPreview$2;->val$isTransparentTheme:Z

    invoke-static {p1, v0, v1, p0}, Lcom/android/settings/widget/LauncherPreview;->access$300(Lcom/android/settings/widget/LauncherPreview;Landroid/content/Context;IZ)Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 195
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/LauncherPreview$2;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;)V
    .locals 2

    .line 203
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview$2;->val$targetView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;->src:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview$2;->val$targetView:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/LauncherPreview$2;->onPostExecute(Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;)V

    return-void
.end method
