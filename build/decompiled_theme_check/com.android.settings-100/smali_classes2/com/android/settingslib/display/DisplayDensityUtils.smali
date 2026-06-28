.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DisplayDensityUtils"

.field private static final MAX_SCALE:F = 1.5f

.field private static final MIN_DIMENSION_DP:I = 0x140

.field private static final MIN_SCALE:F = 0.85f

.field private static final MIN_SCALE_INTERVAL:F = 0.09f

.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    .line 54
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 60
    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 68
    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 88
    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v2

    const/4 v3, -0x1

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    .line 91
    iput-object v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 92
    iput-object v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 93
    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 94
    iput v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return-void

    .line 98
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 99
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v6, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 106
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit16 v5, v5, 0xa0

    .line 107
    div-int/lit16 v5, v5, 0x140

    const/high16 v7, 0x3fc00000    # 1.5f

    int-to-float v5, v5

    int-to-float v8, v2

    div-float/2addr v5, v8

    .line 108
    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v5, v7

    const v9, 0x3db851ec    # 0.09f

    div-float v9, v5, v9

    .line 110
    sget-object v10, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    array-length v10, v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    float-to-int v9, v9

    const v10, 0x3fd55553

    .line 112
    sget-object v12, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    array-length v12, v12

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v10

    float-to-int v10, v10

    add-int/lit8 v11, v10, 0x1

    add-int/2addr v11, v9

    .line 115
    new-array v11, v11, [Ljava/lang/String;

    .line 116
    array-length v12, v11

    new-array v12, v12, [I

    const/4 v13, 0x1

    if-lez v10, :cond_2

    const v14, 0x3e199998    # 0.14999998f

    int-to-float v15, v10

    div-float/2addr v14, v15

    sub-int/2addr v10, v13

    move v15, v3

    move v3, v1

    :goto_0
    if-ltz v10, :cond_3

    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    sub-float v1, v7, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    and-int/lit8 v1, v1, -0x2

    if-ne v6, v1, :cond_1

    move v15, v3

    .line 127
    :cond_1
    sget-object v16, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v13, v16, v10

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v3

    .line 128
    aput v1, v12, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, -0x1

    const/4 v1, 0x0

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    move v15, v3

    const/4 v3, 0x0

    :cond_3
    if-ne v6, v2, :cond_4

    move v15, v3

    .line 136
    :cond_4
    aput v2, v12, v3

    .line 137
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v3

    add-int/lit8 v3, v3, 0x1

    if-lez v9, :cond_6

    int-to-float v1, v9

    div-float/2addr v5, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_6

    add-int/lit8 v10, v1, 0x1

    int-to-float v13, v10

    mul-float/2addr v13, v5

    add-float/2addr v13, v7

    mul-float/2addr v13, v8

    float-to-int v13, v13

    and-int/lit8 v13, v13, -0x2

    if-ne v6, v13, :cond_5

    move v15, v3

    .line 148
    :cond_5
    aput v13, v12, v3

    .line 149
    sget-object v13, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v1, v13, v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v3

    add-int/lit8 v3, v3, 0x1

    move v1, v10

    goto :goto_1

    :cond_6
    if-ltz v15, :cond_7

    goto :goto_2

    .line 160
    :cond_7
    array-length v1, v12

    const/4 v5, 0x1

    add-int/2addr v1, v5

    .line 161
    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    .line 162
    aput v6, v12, v3

    .line 164
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Ljava/lang/String;

    .line 165
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v3

    move v15, v3

    .line 170
    :goto_2
    iput v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 171
    iput v15, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 172
    iput-object v11, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 173
    iput-object v12, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-void
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2

    .line 217
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 218
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 1

    .line 201
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 202
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic lambda$clearForcedDisplayDensity$0(II)V
    .locals 1

    .line 220
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 221
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DisplayDensityUtils"

    const-string p1, "Unable to clear forced display density setting"

    .line 223
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2

    .line 238
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 239
    new-instance v1, Lcom/android/settingslib/display/DisplayDensityUtils$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils$1;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    .line 185
    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return p0
.end method

.method public getDefaultDensity()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return p0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getValues()[I
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-object p0
.end method
