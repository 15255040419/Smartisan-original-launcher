.class public Lcom/android/settings/AppHeader;
.super Ljava/lang/Object;
.source "AppHeader.java"


# static fields
.field public static final EXTRA_HIDE_INFO_BUTTON:Ljava/lang/String; = "hideInfoButton"

.field private static final INSTALLED_APP_DETAILS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/ViewGroup;)V
    .locals 13

    move-object/from16 v0, p5

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0046

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object v11, v1

    .line 55
    invoke-static/range {v4 .. v12}, Lcom/android/settings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 43
    invoke-static/range {v0 .. v6}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V

    return-void
.end method

.method public static createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 61
    invoke-static/range {v0 .. v6}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V

    return-void
.end method

.method public static createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 10

    const v0, 0x7f0d0046

    move-object v1, p0

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v8

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v6

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v7, p5

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/android/settings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    return-void
.end method

.method public static createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 48
    invoke-static/range {v0 .. v6}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/android/settings/SettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IILandroid/content/Intent;)V

    return-void
.end method

.method public static includeAppInfo(Landroid/app/Fragment;)Z
    .locals 3

    .line 112
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hideInfoButton"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 117
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public static setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0a00a0

    .line 75
    invoke-virtual {p7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p6, :cond_0

    .line 78
    invoke-virtual {p0, p6}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    const p1, 0x7f0a00a6

    .line 81
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    const-string/jumbo p1, "os"

    .line 84
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 85
    invoke-virtual {p7, p1}, Landroid/view/View;->setClickable(Z)V

    .line 86
    new-instance p1, Lcom/android/settings/AppHeader$1;

    invoke-direct {p1, p5, p3, p4, p0}, Lcom/android/settings/AppHeader$1;-><init>(ZLjava/lang/String;ILandroid/app/Activity;)V

    invoke-virtual {p7, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p8, :cond_1

    const p1, 0x7f0a00aa

    .line 98
    invoke-virtual {p7, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    new-instance p2, Lcom/android/settings/AppHeader$2;

    invoke-direct {p2, p0, p8}, Lcom/android/settings/AppHeader$2;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p7
.end method
