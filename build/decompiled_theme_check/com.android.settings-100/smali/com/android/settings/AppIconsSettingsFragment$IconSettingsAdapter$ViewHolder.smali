.class Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppIconsSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field appName:Landroid/widget/TextView;

.field arrow:Landroid/widget/ImageView;

.field authorName:Landroid/widget/TextView;

.field itemShadow:Landroid/view/View;

.field layout:Lsmartisanos/widget/ListContentItemText;

.field officialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;

.field final synthetic this$1:Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

.field unofficialApplicationItemIconView:Lcom/android/settings/applications/ApplicationItemIconView;


# direct methods
.method constructor <init>(Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter$ViewHolder;->this$1:Lcom/android/settings/AppIconsSettingsFragment$IconSettingsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
