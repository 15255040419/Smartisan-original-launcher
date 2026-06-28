.class public Lcom/android/settings/widget/NationalFlagView;
.super Ljava/lang/Object;
.source "NationalFlagView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/NationalFlagView$LocaleFlag;
    }
.end annotation


# static fields
.field private static final ENABLE_REORDER_NATIONAL_FLAG:Z = false

.field private static HONG_KONG_FLAG_INDEX:I = 0x1

.field private static IMAGE_SIZE:I = 0x0

.field private static MAX_FLAGS_COUNT:I = 0x0

.field private static final RESIDENT_FLAG_SIZE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "NationalFlagView"

.field private static mFlagArray:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/NationalFlagView$LocaleFlag;",
            ">;"
        }
    .end annotation
.end field

.field private static mSkipHongkongFlag:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlagDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mItemView:Landroid/widget/ImageView;

.field private mLocaleOfFlagImage:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    .line 44
    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const v3, 0x7f08013d

    invoke-direct {v1, v2, v3}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    const v4, 0x7f080140

    invoke-direct {v1, v2, v4}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    const v4, 0x7f08013f

    invoke-direct {v1, v2, v4}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v4, 0x7f080146

    invoke-direct {v1, v2, v4}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    sget-object v2, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    const v4, 0x7f08013e

    invoke-direct {v1, v2, v4}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    const v4, 0x7f080142

    invoke-direct {v1, v2, v4}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    const v4, 0x7f080141

    invoke-direct {v1, v2, v4}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    new-instance v2, Ljava/util/Locale;

    const-string v3, "in"

    const-string v4, "ID"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f080144

    invoke-direct {v1, v2, v3}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    const-string v4, "Ru"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f080145

    invoke-direct {v1, v2, v3}, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;-><init>(Ljava/util/Locale;I)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/widget/NationalFlagView;->mFlagArray:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/widget/NationalFlagView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/NationalFlagView$1;-><init>(Lcom/android/settings/widget/NationalFlagView;)V

    iput-object v0, p0, Lcom/android/settings/widget/NationalFlagView;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/NationalFlagView;->mContext:Landroid/content/Context;

    .line 76
    iget-object p1, p0, Lcom/android/settings/widget/NationalFlagView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/android/settings/widget/NationalFlagView;->IMAGE_SIZE:I

    .line 77
    iget-object p0, p0, Lcom/android/settings/widget/NationalFlagView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 78
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x40600000    # 3.5f

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 79
    sput-boolean p0, Lcom/android/settings/widget/NationalFlagView;->mSkipHongkongFlag:Z

    .line 81
    :cond_0
    sget-boolean p0, Lcom/android/settings/widget/NationalFlagView;->mSkipHongkongFlag:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    :cond_1
    const/4 p0, 0x7

    :goto_0
    sput p0, Lcom/android/settings/widget/NationalFlagView;->MAX_FLAGS_COUNT:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/NationalFlagView;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/NationalFlagView;->mItemView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/NationalFlagView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/NationalFlagView;->mFlagDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/widget/NationalFlagView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/settings/widget/NationalFlagView;->mFlagDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/widget/NationalFlagView;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/NationalFlagView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/android/settings/widget/NationalFlagView;->getNationalFlagDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/NationalFlagView;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/widget/NationalFlagView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static createFlagBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13

    .line 118
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLocale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", country: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NationalFlagView"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 122
    sget v2, Lcom/android/settings/widget/NationalFlagView;->IMAGE_SIZE:I

    sget v3, Lcom/android/settings/widget/NationalFlagView;->MAX_FLAGS_COUNT:I

    mul-int v4, v2, v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    mul-int/2addr v3, v1

    add-int/2addr v4, v3

    .line 123
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 124
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-static {v0}, Lcom/android/settings/widget/NationalFlagView;->getPositionInList(Ljava/util/Locale;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-le v4, v9, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/android/settings/widget/NationalFlagView;->mFlagArray:Ljava/util/List;

    .line 134
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    iget v10, v10, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;->flagRes:I

    .line 133
    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 135
    invoke-virtual {v3, v9, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v9, v5

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    const/4 v10, 0x7

    if-ge v4, v10, :cond_1

    goto :goto_1

    :cond_1
    move v5, v8

    :goto_1
    if-ge v8, v10, :cond_5

    .line 141
    sget-boolean v4, Lcom/android/settings/widget/NationalFlagView;->mSkipHongkongFlag:Z

    if-eqz v4, :cond_2

    sget v4, Lcom/android/settings/widget/NationalFlagView;->HONG_KONG_FLAG_INDEX:I

    if-ne v8, v4, :cond_2

    goto :goto_2

    .line 144
    :cond_2
    sget-object v4, Lcom/android/settings/widget/NationalFlagView;->mFlagArray:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    if-eqz v5, :cond_3

    .line 146
    iget-object v11, v4, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_3
    if-nez v8, :cond_4

    goto :goto_2

    .line 153
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v4, v4, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;->flagRes:I

    invoke-static {v11, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 154
    sget v11, Lcom/android/settings/widget/NationalFlagView;->IMAGE_SIZE:I

    add-int/2addr v11, v1

    add-int/lit8 v12, v9, 0x1

    mul-int/2addr v11, v9

    int-to-float v9, v11

    invoke-virtual {v3, v4, v9, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v9, v12

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method private static getNationalFlagDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 162
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/widget/NationalFlagView;->createFlagBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static getPositionInList(Ljava/util/Locale;)I
    .locals 3

    const/4 v0, 0x0

    .line 105
    :goto_0
    sget-object v1, Lcom/android/settings/widget/NationalFlagView;->mFlagArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 106
    sget-boolean v1, Lcom/android/settings/widget/NationalFlagView;->mSkipHongkongFlag:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/widget/NationalFlagView;->HONG_KONG_FLAG_INDEX:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    sget-object v1, Lcom/android/settings/widget/NationalFlagView;->mFlagArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;

    .line 110
    iget-object v1, v1, Lcom/android/settings/widget/NationalFlagView$LocaleFlag;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public updateFlagViewIfNeed(Landroid/widget/ImageView;)V
    .locals 3

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/NationalFlagView;->mLocaleOfFlagImage:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/NationalFlagView;->mLocaleOfFlagImage:Ljava/util/Locale;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NationalFlagView"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 89
    iput-object p1, p0, Lcom/android/settings/widget/NationalFlagView;->mItemView:Landroid/widget/ImageView;

    .line 90
    new-instance p1, Lcom/android/settings/widget/NationalFlagView$2;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/NationalFlagView$2;-><init>(Lcom/android/settings/widget/NationalFlagView;)V

    invoke-static {p1}, Lcom/android/settings/ExecutorManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/NationalFlagView;->mFlagDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 100
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
