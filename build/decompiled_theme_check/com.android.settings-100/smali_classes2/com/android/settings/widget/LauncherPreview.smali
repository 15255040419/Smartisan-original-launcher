.class public Lcom/android/settings/widget/LauncherPreview;
.super Landroid/widget/LinearLayout;
.source "LauncherPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;,
        Lcom/android/settings/widget/LauncherPreview$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LauncherPreview"


# instance fields
.field final URI_LAUNCHER:Landroid/net/Uri;

.field private mCallback:Lcom/android/settings/widget/LauncherPreview$Callback;

.field private mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mFrame:Landroid/widget/ImageView;

.field private mGridLauncher12:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mGridLauncher16:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mGridLauncher20:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mGridLauncher9:Lcom/android/settings/widget/PreviewOptionItemView;

.field private mLastClickTime:J

.field private mPreview:Landroid/widget/ImageView;

.field private mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/LauncherPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/LauncherPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "content://com.smartisanos.launcher.exportprovider"

    .line 243
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->URI_LAUNCHER:Landroid/net/Uri;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    const p3, 0x7f0d015d

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/LauncherPreview;->setOrientation(I)V

    const p1, 0x7f0a040b

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/LauncherPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/LauncherPreview;->mPreview:Landroid/widget/ImageView;

    const p1, 0x7f0a03c5

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/LauncherPreview;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/widget/LauncherPreview;->mFrame:Landroid/widget/ImageView;

    .line 62
    iget-object p1, p0, Lcom/android/settings/widget/LauncherPreview;->mFrame:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/settings/Utils;->getPhoneFrameResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/widget/LauncherPreview;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701b9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    const p2, 0x7f0a03cf

    .line 66
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/LauncherPreview;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher9:Lcom/android/settings/widget/PreviewOptionItemView;

    .line 67
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher9:Lcom/android/settings/widget/PreviewOptionItemView;

    const/16 p3, 0x9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher9:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a03cc

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/LauncherPreview;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher12:Lcom/android/settings/widget/PreviewOptionItemView;

    .line 70
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher12:Lcom/android/settings/widget/PreviewOptionItemView;

    const/16 p3, 0xc

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher12:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a03cd

    .line 72
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/LauncherPreview;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher16:Lcom/android/settings/widget/PreviewOptionItemView;

    .line 73
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher16:Lcom/android/settings/widget/PreviewOptionItemView;

    const/16 p3, 0x10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher16:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a03ce

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/settings/widget/LauncherPreview;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher20:Lcom/android/settings/widget/PreviewOptionItemView;

    .line 76
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher20:Lcom/android/settings/widget/PreviewOptionItemView;

    const/16 p3, 0x14

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher20:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-static {}, Lcom/android/settings/SettingsFeature;->isLauncher12GridsSupport()Z

    move-result p2

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher9:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setVisibility(I)V

    .line 82
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher12:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/PreviewOptionItemView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher9:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/PreviewOptionItemView;->setVisibility(I)V

    .line 85
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher12:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setVisibility(I)V

    .line 88
    :goto_0
    sget-boolean p2, Lcom/android/settings/SettingsFeature;->LAUNCHER_4X5_SUPPORTED:Z

    if-eqz p2, :cond_1

    .line 89
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher16:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_1
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher20:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2, p3}, Lcom/android/settings/widget/PreviewOptionItemView;->setVisibility(I)V

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/widget/LauncherPreview;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070296

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/widget/LauncherPreview;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0701ba

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    const v1, 0x7f0a03a5

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/LauncherPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object v1, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    .line 106
    iget-object v1, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v1, p2, p2}, Lcom/android/settings/widget/PreviewOptionItemView;->setIconSize(II)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v1}, Lcom/android/settings/widget/PreviewOptionItemView;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    int-to-float p3, p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v1}, Lcom/android/settings/widget/PreviewOptionItemView;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0443

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/LauncherPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/PreviewOptionItemView;

    iput-object v1, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    .line 111
    iget-object v1, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v1, p2, p2}, Lcom/android/settings/widget/PreviewOptionItemView;->setIconSize(II)V

    .line 112
    iget-object p2, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p2}, Lcom/android/settings/widget/PreviewOptionItemView;->getTitleView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1}, Lcom/android/settings/widget/PreviewOptionItemView;->getTitleView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/PreviewOptionItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/LauncherPreview;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/LauncherPreview;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/LauncherPreview;->getSmartisanLauncherDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/LauncherPreview;)Lcom/android/settings/widget/PreviewOptionItemView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/LauncherPreview;Landroid/content/Context;IZ)Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/LauncherPreview;->getPreviewDrawable(Landroid/content/Context;IZ)Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;

    move-result-object p0

    return-object p0
.end method

.method private getPreviewDrawable(Landroid/content/Context;IZ)Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;
    .locals 7

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    new-instance v2, Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;-><init>(Lcom/android/settings/widget/LauncherPreview$1;)V

    if-eqz p3, :cond_0

    .line 218
    invoke-static {}, Lcom/android/settings/WallpaperCache;->getInstance()Lcom/android/settings/WallpaperCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/WallpaperCache;->getLauncherWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 219
    invoke-static {v3}, Lcom/android/settings/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const/16 v5, 0x9

    if-eq p2, v5, :cond_1

    const/16 v5, 0xc

    if-eq p2, v5, :cond_1

    const/16 v5, 0x10

    if-eq p2, v5, :cond_1

    const/16 v5, 0x14

    if-eq p2, v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_3

    const/4 p3, 0x2

    .line 228
    invoke-static {p1, v3, p3}, Lcom/smartisanos/utils/BitmapGaussianBlur;->isDarkStyle(Landroid/content/Context;Landroid/graphics/Bitmap;I)Z

    move-result p1

    const-string p3, "launcher_"

    if-eqz p1, :cond_2

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_white"

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_black"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview;->mContext:Landroid/content/Context;

    const-string p2, "com.smartisanos.wallpaperprovider"

    invoke-static {p0, p2, p1}, Lcom/android/settings/Utils;->getDrawableFromPkg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;->src:Landroid/graphics/drawable/Drawable;

    .line 232
    iput-object v4, v2, Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;->background:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    const-string p3, "L.jpg"

    .line 234
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/widget/LauncherPreview;->getSmartisanLauncherDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settings/widget/LauncherPreview$WallpaperPreview;->src:Landroid/graphics/drawable/Drawable;

    .line 238
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "useTime "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherPreview"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getSmartisanLauncherDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, -0x1

    .line 246
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/LauncherPreview;->getSmartisanLauncherDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getSmartisanLauncherDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    .line 252
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 253
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 254
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_0

    const-string p2, "singleMode"

    .line 256
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview;->URI_LAUNCHER:Landroid/net/Uri;

    const-string p2, "CALL_METHOD_GET_THEME_PREVIEW_RES"

    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "data"

    .line 260
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 261
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 262
    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private setPreviewDrawable(Landroid/content/Context;Landroid/widget/ImageView;IZ)V
    .locals 7

    .line 195
    new-instance v6, Lcom/android/settings/widget/LauncherPreview$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/LauncherPreview$2;-><init>(Lcom/android/settings/widget/LauncherPreview;Landroid/content/Context;IZLandroid/widget/ImageView;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Void;

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Void;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 207
    invoke-virtual {v6, p0, p1}, Lcom/android/settings/widget/LauncherPreview$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setThemeOptionPreviewDrawable()V
    .locals 3

    .line 149
    new-instance v0, Lcom/android/settings/widget/LauncherPreview$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LauncherPreview$1;-><init>(Lcom/android/settings/widget/LauncherPreview;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Void;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    .line 160
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/LauncherPreview$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updatePreview(IZ)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/widget/LauncherPreview;->mPreview:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/settings/widget/LauncherPreview;->setPreviewDrawable(Landroid/content/Context;Landroid/widget/ImageView;IZ)V

    .line 145
    invoke-direct {p0}, Lcom/android/settings/widget/LauncherPreview;->setThemeOptionPreviewDrawable()V

    return-void
.end method

.method private updateThemeEnableState(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/PreviewOptionItemView;->setEnabled(Z)V

    .line 135
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PreviewOptionItemView;->setEnabled(Z)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/PreviewOptionItemView;->setEnabled(Z)V

    .line 138
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/PreviewOptionItemView;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher9:Lcom/android/settings/widget/PreviewOptionItemView;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher12:Lcom/android/settings/widget/PreviewOptionItemView;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher16:Lcom/android/settings/widget/PreviewOptionItemView;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher20:Lcom/android/settings/widget/PreviewOptionItemView;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    if-ne p1, v0, :cond_6

    .line 179
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PreviewOptionItemView;->isActive()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mCallback:Lcom/android/settings/widget/LauncherPreview$Callback;

    if-eqz v0, :cond_6

    .line 182
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/settings/widget/LauncherPreview$Callback;->onLauncherThemeChanged(Z)V

    goto :goto_2

    .line 166
    :cond_3
    :goto_1
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PreviewOptionItemView;->isActive()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_4

    return-void

    .line 170
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/widget/LauncherPreview;->mLastClickTime:J

    sub-long/2addr v0, v2

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/widget/LauncherPreview;->mLastClickTime:J

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    return-void

    .line 175
    :cond_5
    iget-object p0, p0, Lcom/android/settings/widget/LauncherPreview;->mCallback:Lcom/android/settings/widget/LauncherPreview$Callback;

    if-eqz p0, :cond_6

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/widget/LauncherPreview$Callback;->onLauncherTypeChanged(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setCallback(Lcom/android/settings/widget/LauncherPreview$Callback;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/settings/widget/LauncherPreview;->mCallback:Lcom/android/settings/widget/LauncherPreview$Callback;

    return-void
.end method

.method public updateViews(IZ)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher9:Lcom/android/settings/widget/PreviewOptionItemView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-ne p1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher12:Lcom/android/settings/widget/PreviewOptionItemView;

    const/16 v3, 0xc

    if-ne p1, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher16:Lcom/android/settings/widget/PreviewOptionItemView;

    const/16 v3, 0x10

    if-ne p1, v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mGridLauncher20:Lcom/android/settings/widget/PreviewOptionItemView;

    const/16 v3, 0x14

    if-ne p1, v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/LauncherPreview;->updatePreview(IZ)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mClassicThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/LauncherPreview;->mTransparentThemeOptionView:Lcom/android/settings/widget/PreviewOptionItemView;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/PreviewOptionItemView;->setActive(Z)V

    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/widget/LauncherPreview;->updateThemeEnableState(I)V

    return-void
.end method
