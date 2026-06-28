.class final Lcom/android/settings/AppHeader$1;
.super Ljava/lang/Object;
.source "AppHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$includeAppInfo:Z

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(ZLjava/lang/String;ILandroid/app/Activity;)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/android/settings/AppHeader$1;->val$includeAppInfo:Z

    iput-object p2, p0, Lcom/android/settings/AppHeader$1;->val$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/AppHeader$1;->val$uid:I

    iput-object p4, p0, Lcom/android/settings/AppHeader$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 89
    iget-boolean p1, p0, Lcom/android/settings/AppHeader$1;->val$includeAppInfo:Z

    if-eqz p1, :cond_0

    .line 90
    const-class p1, Lcom/android/settings/applications/InstalledAppDetailsActivity;

    iget-object v0, p0, Lcom/android/settings/AppHeader$1;->val$pkgName:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/AppHeader$1;->val$uid:I

    iget-object p0, p0, Lcom/android/settings/AppHeader$1;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoActivity(Ljava/lang/Class;Ljava/lang/String;ILandroid/app/Activity;I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AppHeader$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
